package com.brisa.local;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/** Inicio de sesión en Drive con token: validación, caducidad y renovación, con transporte simulado. */
public final class TokenSessionTest {
    static int checks;
    static void check(boolean condition, String message) { checks++; if (!condition) throw new AssertionError(message); }
    interface Attempt { void run() throws Exception; }
    static String error(Attempt attempt) { try { attempt.run(); return ""; } catch (IOException e) { return e.getMessage(); } catch (Exception e) { throw new RuntimeException(e); } }

    public static void main(String[] args) throws Exception {
        final String good = "ya29.a0AfB_token-de-prueba_1234567890";
        final String fresh = "ya29.renovado_ABCDEFGHIJKLMNOPQRSTUV";
        final List<String> sent = new ArrayList<>();
        final String[] aboutStatus = {"200"};
        TokenSession.Transport net = (url, bearer, form) -> {
            sent.add((form == null ? "GET " : "POST ") + url + (bearer == null ? "" : " [" + bearer + "]") + (form == null ? "" : " {" + form + "}"));
            if (url.equals(TokenSession.RENEW)) return form.contains("refresh_token=1%2F%2Fbueno") ? new String[]{"200", "{\"access_token\":\"" + fresh + "\",\"expires_in\":3599,\"scope\":\"https://www.googleapis.com/auth/drive\"}"} : new String[]{"400", "{\"error\":\"invalid_grant\",\"error_description\":\"Token has been expired or revoked\"}"};
            if (url.startsWith(TokenSession.INFO)) return new String[]{"200", "{\"expires_in\":\"1800\",\"scope\":\"https://www.googleapis.com/auth/drive.file\"}"};
            if (url.equals(TokenSession.ABOUT)) return bearer.equals("ya29.caducado_0123456789abcdef") ? new String[]{"401", "{}"} : new String[]{aboutStatus[0], "{\"user\":{\"emailAddress\":\"yo@example.com\"}}"};
            return new String[]{"404", ""};
        };
        long now = 1_000_000_000L;

        // Solo token de acceso: se reconoce al instante y caduca cuando dice Google.
        TokenSession simple = TokenSession.connect(new JSONObject().put("access", "  Bearer " + good + "\n"), net, now);
        check(simple.access.equals(good), "limpia espacios y el prefijo Bearer");
        check(simple.email.equals("yo@example.com"), "identifica la cuenta");
        check(simple.expiry == now + 1800_000L, "usa la caducidad que informa Google");
        check(!simple.permanent() && simple.usable(now) && simple.minutesLeft(now) == 30, "sesión temporal de 30 minutos");
        check(!simple.usable(now + 1800_000L - 30_000L), "no se usa en el último minuto");
        check(!simple.summary(now).getBoolean("fullDrive") && simple.summary(now).getBoolean("active"), "permiso drive.file detectado");
        check(!simple.summary(now).toString().contains(good), "el resumen nunca incluye el token");
        check(error(() -> simple.renew(net, now)).contains("caducó"), "sin token de actualización no se puede renovar");
        check(simple.summary(now + 3600_000L).getBoolean("expired"), "se marca como caducada");

        // Guardar y recuperar.
        TokenSession loaded = TokenSession.load(simple.save().toString());
        check(loaded.access.equals(good) && loaded.expiry == simple.expiry && loaded.email.equals("yo@example.com"), "se conserva al guardar");
        check(TokenSession.load("").email.isEmpty() && TokenSession.load(null).email.isEmpty() && TokenSession.load("no es json").email.isEmpty(), "sin datos no hay sesión");

        // Con token de actualización la sesión es permanente y se renueva sola.
        sent.clear();
        TokenSession lasting = TokenSession.connect(new JSONObject().put("refresh", "1//bueno-refresh-token-0123456789").put("clientId", "1234567890-abc.apps.googleusercontent.com").put("clientSecret", "GOCSPX-secreto"), net, now);
        check(lasting.access.equals(fresh) && lasting.permanent(), "obtiene el token de acceso a partir del de actualización");
        check(lasting.expiry == now + 3599_000L && lasting.summary(now).getBoolean("fullDrive"), "caducidad y permiso completos");
        check(sent.get(0).startsWith("POST " + TokenSession.RENEW) && sent.get(0).contains("client_secret=GOCSPX-secreto") && sent.get(0).contains("grant_type=refresh_token"), "petición de renovación correcta");
        check(!lasting.summary(now + 99_000_000L).getBoolean("expired"), "una sesión permanente no caduca");
        lasting.access = "ya29.viejo_0123456789abcdefghij"; lasting.expiry = now - 1;
        lasting.renew(net, now + 5000);
        check(lasting.access.equals(fresh) && lasting.usable(now + 5000), "renueva cuando caduca");

        // Un token de acceso caducado se salva si hay token de actualización.
        TokenSession rescued = TokenSession.connect(new JSONObject().put("access", "ya29.caducado_0123456789abcdef").put("refresh", "1//bueno-refresh-token-0123456789").put("clientId", "1234567890-abc.apps.googleusercontent.com"), net, now);
        check(rescued.access.equals(fresh), "renueva un token de acceso caducado");

        // Errores con mensajes claros.
        check(error(() -> TokenSession.connect(new JSONObject().put("access", "ya29.caducado_0123456789abcdef"), net, now)).contains("no es válido o ya caducó"), "token caducado");
        check(error(() -> TokenSession.connect(new JSONObject().put("access", "corto"), net, now)).contains("token de acceso OAuth válido"), "token demasiado corto");
        check(error(() -> TokenSession.connect(new JSONObject().put("access", "ya29.con espacios dentro del token"), net, now)).contains("válido"), "token con espacios");
        check(error(() -> TokenSession.connect(new JSONObject().put("access", ""), net, now)).contains("válido"), "token vacío");
        check(error(() -> TokenSession.connect(new JSONObject().put("refresh", "1//bueno-refresh-token-0123456789"), net, now)).contains("ID de cliente"), "falta el cliente");
        check(error(() -> TokenSession.connect(new JSONObject().put("refresh", "1//malo-refresh-token-0123456789").put("clientId", "1234567890-abc.apps.googleusercontent.com"), net, now)).contains("expired or revoked"), "token de actualización revocado");
        aboutStatus[0] = "403";
        check(error(() -> TokenSession.connect(new JSONObject().put("access", good), net, now)).contains("permiso para Google Drive"), "token sin permiso de Drive");
        aboutStatus[0] = "500";
        check(error(() -> TokenSession.connect(new JSONObject().put("access", good), net, now)).contains("HTTP 500"), "fallo del servidor");
        aboutStatus[0] = "200";
        int before = sent.size();
        error(() -> TokenSession.connect(new JSONObject().put("access", "token\ncon-salto-de-linea-0123456789"), net, now));
        check(sent.size() == before, "un token malformado nunca sale del dispositivo");

        // Sin respuesta de tokeninfo se asume un margen prudente.
        TokenSession.Transport quiet = (url, bearer, form) -> url.startsWith(TokenSession.INFO) ? new String[]{"400", "{}"} : net.send(url, bearer, form);
        check(TokenSession.connect(new JSONObject().put("access", good), quiet, now).expiry == now + 50 * 60000L, "caducidad por defecto de 50 minutos");
        System.out.println("TokenSessionTest: " + checks + " comprobaciones correctas");
    }
}
