package com.brisa.local;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.SystemClock;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import org.json.JSONObject;

/**
 * Reproduce música y vídeos directamente desde Google Drive, sin copia en el teléfono.
 *
 * La biblioteca ya guardaba, por cada archivo subido, su identificador de Drive. Antes solo se
 * podía reproducir tras descargar una copia privada. Ahora, si no hay copia local, se entrega al
 * reproductor una dirección del puente local (StreamRelay), que pide a Drive únicamente los
 * tramos que el reproductor necesita.
 *
 * Por defecto solo funciona con Wi-Fi; los datos móviles se activan desde Ajustes.
 */
public final class DriveStream {
    private static final String PREFS = "brisa-tuning";
    private static final String CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private static StreamRelay relay;
    private static Context app;
    private static long lastNotice;
    private static volatile String lastMessage = "";

    private DriveStream() { }

    /** Decisión pura, probada en JVM: devuelve el motivo del rechazo o null si se puede reproducir. */
    public static String refusal(boolean accountConnected, boolean online, boolean wifi, boolean mobileAllowed) {
        if (!accountConnected) return "Conecta tu cuenta en Google Drive para reproducir este archivo desde la nube.";
        if (!online) return "Sin conexión. Este archivo está solo en Drive: conéctate o guárdalo sin conexión.";
        if (!wifi && !mobileAllowed) return "Este archivo está en Drive y la reproducción en la nube está limitada a Wi-Fi. Puedes permitir datos móviles en Ajustes.";
        return null;
    }

    public static boolean mobileAllowed(Context c) {
        return c.getSharedPreferences(PREFS, 0).getBoolean("streamMobile", false);
    }

    public static void setMobileAllowed(Context c, boolean allowed) {
        c.getSharedPreferences(PREFS, 0).edit().putBoolean("streamMobile", allowed).apply();
    }

    /** "wifi", "mobile" o "none". Una red Ethernet o sin tarifa por consumo cuenta como Wi-Fi. */
    public static String network(Context c) {
        try {
            ConnectivityManager manager = (ConnectivityManager) c.getSystemService(Context.CONNECTIVITY_SERVICE);
            Network active = manager.getActiveNetwork();
            NetworkCapabilities caps = active == null ? null : manager.getNetworkCapabilities(active);
            if (caps == null || !caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)) return "none";
            boolean wifi = caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) || caps.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) || !manager.isActiveNetworkMetered();
            return wifi ? "wifi" : "mobile";
        } catch (Exception unknown) {
            return "none";
        }
    }

    static String account(Context c) {
        return c.getSharedPreferences("brisa-drive", 0).getString("email", "");
    }

    /** Motivo por el que ahora mismo no se puede reproducir desde Drive, o cadena vacía. */
    public static String check(Context c) {
        String net = network(c);
        String reason = refusal(!account(c).isEmpty(), !net.equals("none"), net.equals("wifi"), mobileAllowed(c));
        return reason == null ? "" : reason;
    }

    public static String lastMessage() {
        return lastMessage;
    }

    private static void notice(String message) {
        lastMessage = message;
        long now = SystemClock.elapsedRealtime();
        if (now - lastNotice < 4000) return;
        lastNotice = now;
        try {
            MobileVideoFiles.emit("brisa-stream", new JSONObject().put("message", message));
        } catch (Exception ignored) { }
    }

    static boolean streamable(JSONObject record) {
        return record != null && !record.optString("driveId").isEmpty() && record.optString("id").matches("[a-zA-Z0-9_-]{1,100}");
    }

    private static synchronized Uri remote(Context c, JSONObject record) {
        String reason = check(c);
        if (!reason.isEmpty()) {
            notice(reason);
            return null;
        }
        try {
            app = c.getApplicationContext();
            if (relay == null) {
                SecureRandom random = new SecureRandom();
                StringBuilder secret = new StringBuilder();
                for (int i = 0; i < 32; i++) secret.append(CHARS.charAt(random.nextInt(CHARS.length())));
                relay = new StreamRelay(DriveStream::open, secret.toString());
            }
            return Uri.parse(relay.url(record.getString("id")));
        } catch (Exception failure) {
            notice("No se pudo preparar la reproducción desde Drive. Inténtalo otra vez.");
            return null;
        }
    }

    /** Sustituye a v.u() al cargar una canción: primero el archivo local y, si no existe, Drive. */
    public static Uri audio(Context c, String nativeId) {
        try {
            Uri local = (Uri) MobileVideoFiles.call("v", "u", new Class<?>[]{Context.class, String.class}, c, nativeId);
            if (local != null || nativeId == null || !nativeId.startsWith("asset:")) return local;
            JSONObject record = MobileVideoFiles.asset(c, nativeId);
            return streamable(record) ? remote(c, record) : null;
        } catch (Exception failure) {
            return null;
        }
    }

    /** Sustituye a v.u() al filtrar la cola: admite las canciones de Drive sin consultar la red. */
    public static Uri queued(Context c, String nativeId) {
        try {
            Uri local = (Uri) MobileVideoFiles.call("v", "u", new Class<?>[]{Context.class, String.class}, c, nativeId);
            if (local != null || nativeId == null || !nativeId.startsWith("asset:")) return local;
            return streamable(MobileVideoFiles.asset(c, nativeId)) ? Uri.parse("brisa-stream:" + nativeId.substring(6)) : null;
        } catch (Exception failure) {
            return null;
        }
    }

    /** Sustituye a d0.s() en el reproductor de vídeo. */
    public static Uri video(Context c, String id) {
        try {
            Uri local = (Uri) MobileVideoFiles.call("d0", "s", new Class<?>[]{Context.class, String.class}, c, id);
            if (local != null) return local;
            JSONObject record = MobileVideoFiles.asset(c, id);
            return streamable(record) ? remote(c, record) : null;
        } catch (Exception failure) {
            return null;
        }
    }

    /** Token de acceso vigente. La app original ya lo renueva y lo guarda en memoria, nunca en disco. */
    private static String token(boolean renew) throws IOException {
        try {
            Class<?> drive = Class.forName("com.brisa.local.u");
            if (renew) drive.getField("b").setLong(null, 0L);
            drive.getMethod("c", Context.class, String.class).invoke(null, app, "https://www.googleapis.com/drive/v3/files");
            String value = (String) drive.getField("a").get(null);
            if (value == null || value.isEmpty()) throw new StreamRelay.Refused(401, "Abre Google Drive en Brisa y renueva la conexión.");
            return value;
        } catch (InvocationTargetException wrapped) {
            String message = wrapped.getCause() == null ? null : wrapped.getCause().getMessage();
            throw new StreamRelay.Refused(401, message == null ? "Abre Google Drive en Brisa y renueva la conexión." : message);
        } catch (IOException direct) {
            throw direct;
        } catch (Exception failure) {
            throw new StreamRelay.Refused(401, "Abre Google Drive en Brisa y renueva la conexión.");
        }
    }

    private static HttpURLConnection request(String driveId, String range, String token) throws IOException {
        HttpURLConnection http = (HttpURLConnection) new URL("https://www.googleapis.com/drive/v3/files/" + driveId + "?alt=media&supportsAllDrives=true").openConnection();
        http.setConnectTimeout(15000);
        http.setReadTimeout(30000);
        http.setUseCaches(false);
        http.setRequestProperty("Authorization", "Bearer " + token);
        // Sin compresión: así Drive informa del tamaño exacto y los rangos coinciden con el archivo.
        http.setRequestProperty("Accept-Encoding", "identity");
        if (range != null) http.setRequestProperty("Range", range);
        return http;
    }

    static StreamRelay.Reply open(String id, String range) throws IOException {
        Context c = app;
        if (c == null) throw new StreamRelay.Refused(503, "Brisa se está iniciando.");
        JSONObject record;
        try {
            record = MobileVideoFiles.asset(c, id);
        } catch (Exception failure) {
            record = null;
        }
        if (!streamable(record)) throw new StreamRelay.Refused(404, "Este archivo ya no está en tu biblioteca.");
        String driveId = record.optString("driveId");
        if (!driveId.matches("[a-zA-Z0-9_-]{1,200}")) throw new StreamRelay.Refused(404, "Archivo de Drive no válido.");
        String reason = check(c);
        if (reason.isEmpty() && !record.optString("account").isEmpty() && !record.optString("account").equals(account(c)))
            reason = "Este archivo pertenece a otra cuenta de Drive. Conecta esa cuenta para reproducirlo.";
        if (!reason.isEmpty()) {
            notice(reason);
            throw new StreamRelay.Refused(403, reason);
        }
        HttpURLConnection http = request(driveId, range, token(false));
        int status = http.getResponseCode();
        if (status == 401) {
            http.disconnect();
            http = request(driveId, range, token(true));
            status = http.getResponseCode();
        }
        if (status != 200 && status != 206) {
            http.disconnect();
            String message = status == 404 ? "El archivo ya no existe en tu Drive."
                : status == 401 || status == 403 ? "Drive no permitió leer el archivo. Renueva la conexión desde Google Drive."
                : status == 416 ? "Posición fuera del archivo."
                : "Drive no respondió (HTTP " + status + "). Comprueba tu conexión.";
            if (status != 416) notice(message);
            throw new StreamRelay.Refused(status == 416 ? 416 : status == 404 ? 404 : status == 401 || status == 403 ? 403 : 502, message);
        }
        String type = http.getContentType();
        if (type == null || type.isEmpty() || type.startsWith("application/octet-stream"))
            type = "audio".equals(record.optString("kind")) ? AudioExport.mime(record.optString("name")) : "video/mp4";
        return new StreamRelay.Reply(status, type, http.getContentLengthLong(), http.getHeaderField("Content-Range"), http.getInputStream());
    }
}
