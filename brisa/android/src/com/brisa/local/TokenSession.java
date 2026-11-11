package com.brisa.local;

import java.io.IOException;
import java.net.URLEncoder;
import org.json.JSONObject;

/**
 * Inicio de sesión en Drive con un token OAuth pegado a mano.
 *
 * El inicio normal exige registrar en Google Cloud la huella de la firma de la APK. Con un token
 * de acceso que ya tengas, Drive te reconoce al instante y no hace falta ese registro. Un token
 * de acceso dura alrededor de una hora; si además se dan el token de actualización y los datos
 * del cliente OAuth, Brisa lo renueva sola y la sesión no caduca.
 *
 * Esta clase no usa Android: toda la lógica se prueba en una JVM con un transporte simulado.
 */
public final class TokenSession {
    public static final String ABOUT = "https://www.googleapis.com/drive/v3/about?fields=user(emailAddress)";
    public static final String INFO = "https://oauth2.googleapis.com/tokeninfo?access_token=";
    public static final String RENEW = "https://oauth2.googleapis.com/token";
    /** Margen para no usar un token a punto de caducar. */
    static final long MARGIN_MS = 60000;
    static final long DEFAULT_LIFE_MS = 50 * 60000L;

    public interface Transport {
        /** Devuelve {código HTTP, cuerpo}. form == null es GET; si no, POST con ese formulario. */
        String[] send(String url, String bearer, String form) throws IOException;
    }

    public String access = "", refresh = "", clientId = "", clientSecret = "", email = "", scope = "";
    public long expiry;

    public boolean permanent() {
        return !refresh.isEmpty() && !clientId.isEmpty();
    }

    public boolean usable(long now) {
        return !access.isEmpty() && now < expiry - MARGIN_MS;
    }

    public long minutesLeft(long now) {
        return Math.max(0, (expiry - now) / 60000);
    }

    /** Los tokens de Google solo llevan estos caracteres; se rechaza cualquier otra cosa antes de enviarla. */
    public static boolean plausible(String value, int min) {
        return value != null && value.length() >= min && value.length() <= 4096 && value.matches("[A-Za-z0-9._~+/=:-]+");
    }

    static String clean(String value) {
        String text = value == null ? "" : value.trim();
        if (text.regionMatches(true, 0, "Bearer ", 0, 7)) text = text.substring(7).trim();
        return text;
    }

    static String form(String... pairs) throws IOException {
        StringBuilder body = new StringBuilder();
        for (int i = 0; i < pairs.length; i += 2) {
            if (body.length() > 0) body.append('&');
            body.append(pairs[i]).append('=').append(URLEncoder.encode(pairs[i + 1], "UTF-8"));
        }
        return body.toString();
    }

    private static JSONObject json(String body) {
        try { return new JSONObject(body); } catch (Exception invalid) { return new JSONObject(); }
    }

    /** Pide un token de acceso nuevo con el token de actualización. */
    public void renew(Transport transport, long now) throws IOException {
        if (!permanent()) throw new IOException("El token de acceso caducó. Pega uno nuevo en Google Drive.");
        String body = clientSecret.isEmpty()
            ? form("grant_type", "refresh_token", "refresh_token", refresh, "client_id", clientId)
            : form("grant_type", "refresh_token", "refresh_token", refresh, "client_id", clientId, "client_secret", clientSecret);
        String[] reply = transport.send(RENEW, null, body);
        JSONObject data = json(reply[1]);
        String token = data.optString("access_token");
        if (!reply[0].equals("200") || !plausible(token, 20)) {
            String reason = data.optString("error_description", data.optString("error")).replaceAll("[.\\s]+$", "");
            throw new IOException("Google no renovó la sesión" + (reason.isEmpty() ? "." : ": " + reason + ".") + " Revisa el token de actualización y los datos del cliente.");
        }
        access = token;
        long seconds = data.optLong("expires_in", 0);
        expiry = now + (seconds > 0 ? seconds * 1000 : DEFAULT_LIFE_MS);
        if (!data.optString("scope").isEmpty()) scope = data.optString("scope");
    }

    /** Comprueba el token contra Drive y devuelve la sesión lista para guardar. */
    public static TokenSession connect(JSONObject input, Transport transport, long now) throws IOException {
        TokenSession session = new TokenSession();
        session.access = clean(input.optString("access"));
        session.refresh = clean(input.optString("refresh"));
        session.clientId = input.optString("clientId").trim();
        session.clientSecret = input.optString("clientSecret").trim();
        if (!session.refresh.isEmpty() && (!plausible(session.refresh, 20) || !plausible(session.clientId, 10) || (!session.clientSecret.isEmpty() && !plausible(session.clientSecret, 6))))
            throw new IOException("El token de actualización necesita también el ID de cliente (y su secreto, si lo tiene) sin espacios ni saltos de línea.");
        if (session.access.isEmpty() && session.permanent()) session.renew(transport, now);
        if (!plausible(session.access, 20)) throw new IOException("Pega un token de acceso OAuth válido, sin espacios ni saltos de línea.");

        String[] about = transport.send(ABOUT, session.access, null);
        if (about[0].equals("401") && session.permanent()) {
            session.renew(transport, now);
            about = transport.send(ABOUT, session.access, null);
        }
        if (about[0].equals("401")) throw new IOException("El token no es válido o ya caducó. Genera uno nuevo.");
        if (about[0].equals("403")) throw new IOException("El token no tiene permiso para Google Drive. Genera uno con el permiso drive.file o drive.");
        if (!about[0].equals("200")) throw new IOException("Drive no respondió (HTTP " + about[0] + "). Comprueba tu conexión.");
        JSONObject user = json(about[1]).optJSONObject("user");
        session.email = user == null ? "" : user.optString("emailAddress");
        if (session.email.isEmpty()) throw new IOException("Drive no indicó a qué cuenta pertenece el token.");

        if (session.expiry <= now) {
            // tokeninfo dice cuánto le queda; si no contesta se asume un margen prudente.
            long seconds = 0;
            try {
                String[] info = transport.send(INFO + URLEncoder.encode(session.access, "UTF-8"), null, null);
                if (info[0].equals("200")) {
                    JSONObject data = json(info[1]);
                    seconds = data.optLong("expires_in", 0);
                    session.scope = data.optString("scope");
                }
            } catch (IOException ignored) { }
            session.expiry = now + (seconds > 0 ? seconds * 1000 : DEFAULT_LIFE_MS);
        }
        return session;
    }

    public JSONObject save() {
        try {
            return new JSONObject().put("access", access).put("refresh", refresh).put("clientId", clientId).put("clientSecret", clientSecret)
                .put("email", email).put("scope", scope).put("expiry", expiry);
        } catch (Exception impossible) { return new JSONObject(); }
    }

    public static TokenSession load(String stored) {
        JSONObject data = json(stored == null ? "" : stored);
        TokenSession session = new TokenSession();
        session.access = data.optString("access"); session.refresh = data.optString("refresh");
        session.clientId = data.optString("clientId"); session.clientSecret = data.optString("clientSecret");
        session.email = data.optString("email"); session.scope = data.optString("scope"); session.expiry = data.optLong("expiry");
        return session;
    }

    /** Lo que se muestra en pantalla. Nunca incluye los tokens. */
    public JSONObject summary(long now) {
        try {
            return new JSONObject().put("active", !email.isEmpty()).put("email", email).put("permanent", permanent())
                .put("minutes", minutesLeft(now)).put("expired", !permanent() && !usable(now))
                .put("fullDrive", (" " + scope + " ").contains("/auth/drive "));
        } catch (Exception impossible) { return new JSONObject(); }
    }
}
