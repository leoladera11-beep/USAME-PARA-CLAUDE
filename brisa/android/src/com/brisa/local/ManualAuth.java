package com.brisa.local;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;

/**
 * Lado Android del inicio de sesión con token. Guarda la sesión en las preferencias privadas de
 * la app y entrega el token al código de Drive ya existente, que no nota la diferencia.
 */
public final class ManualAuth {
    private static final String PREFS = "brisa-drive-manual";

    private ManualAuth() { }

    static final TokenSession.Transport NETWORK = (url, bearer, form) -> {
        HttpURLConnection http = (HttpURLConnection) new URL(url).openConnection();
        http.setConnectTimeout(15000);
        http.setReadTimeout(20000);
        http.setUseCaches(false);
        if (bearer != null) http.setRequestProperty("Authorization", "Bearer " + bearer);
        if (form != null) {
            http.setDoOutput(true);
            http.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            try (OutputStream out = http.getOutputStream()) { out.write(form.getBytes(StandardCharsets.UTF_8)); }
        }
        int status = http.getResponseCode();
        ByteArrayOutputStream body = new ByteArrayOutputStream();
        try (InputStream in = status >= 400 ? http.getErrorStream() : http.getInputStream()) {
            byte[] buffer = new byte[4096];
            if (in != null) for (int n; (n = in.read(buffer)) >= 0 && body.size() < 65536; ) body.write(buffer, 0, n);
        } finally {
            http.disconnect();
        }
        return new String[]{String.valueOf(status), body.toString("UTF-8")};
    };

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREFS, 0);
    }

    private static TokenSession load(Context c) {
        return TokenSession.load(prefs(c).getString("session", ""));
    }

    private static void publish(TokenSession session) {
        try {
            Class<?> drive = Class.forName("com.brisa.local.u");
            drive.getField("a").set(null, session.access);
            drive.getField("b").setLong(null, SystemClock.elapsedRealtime() + Math.max(0, session.expiry - System.currentTimeMillis() - TokenSession.MARGIN_MS));
        } catch (Exception ignored) { }
    }

    public static boolean active(Context c) {
        return !load(c).email.isEmpty();
    }

    /** Un token temporal ya caducado: hay que pegar otro. Una sesión permanente nunca caduca. */
    public static boolean expired(Context c) {
        TokenSession session = load(c);
        return !session.email.isEmpty() && !session.permanent() && !session.usable(System.currentTimeMillis());
    }

    /**
     * Se llama al principio de u.c(), el punto por el que pasa toda petición a Drive. Si hay una
     * sesión por token, deja el token vigente en su sitio (renovándolo si hace falta) para que el
     * código original no intente el inicio de sesión de Google.
     */
    public static synchronized void ensure(Context c) throws IOException {
        TokenSession session = load(c);
        if (session.email.isEmpty()) return;
        if (!session.email.equals(c.getSharedPreferences("brisa-drive", 0).getString("email", ""))) {
            // La cuenta se desconectó o se cambió por el inicio normal: la sesión por token ya no aplica.
            prefs(c).edit().clear().apply();
            return;
        }
        long now = System.currentTimeMillis();
        if (!session.usable(now)) {
            session.renew(NETWORK, now);
            prefs(c).edit().putString("session", session.save().toString()).apply();
        }
        publish(session);
    }

    /** Obliga a renovar en la siguiente petición; lo usa el streaming cuando Drive rechaza el token. */
    public static synchronized void invalidate(Context c) {
        TokenSession session = load(c);
        if (session.email.isEmpty() || !session.permanent()) return;
        session.expiry = 0;
        prefs(c).edit().putString("session", session.save().toString()).apply();
    }

    public static synchronized JSONObject connect(Context c, JSONObject input) throws IOException {
        long now = System.currentTimeMillis();
        TokenSession session = TokenSession.connect(input, NETWORK, now);
        if (!prefs(c).edit().putString("session", session.save().toString()).commit()
            || !c.getSharedPreferences("brisa-drive", 0).edit().putString("email", session.email).commit())
            throw new IOException("No se pudo guardar la sesión.");
        publish(session);
        return session.summary(now);
    }

    public static synchronized void clear(Context c) {
        prefs(c).edit().clear().apply();
    }

    public static JSONObject summary(Context c) {
        return load(c).summary(System.currentTimeMillis());
    }
}
