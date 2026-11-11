package com.brisa.local;

import android.content.Context;
import android.webkit.JavascriptInterface;
import org.json.JSONObject;

/** Ajustes nuevos de Brisa 4 expuestos a la interfaz como window.BrisaTuning. Solo lecturas y escrituras breves. */
public final class Tuning {
    private final Context context;

    Tuning(Context context) {
        this.context = context.getApplicationContext();
    }

    @JavascriptInterface
    public String state() {
        try {
            return new JSONObject()
                .put("streamMobile", DriveStream.mobileAllowed(context))
                .put("network", DriveStream.network(context))
                .put("account", !DriveStream.account(context).isEmpty())
                .put("audioFormat", AudioExport.original(context) ? "original" : "mp3")
                .put("token", ManualAuth.summary(context))
                .toString();
        } catch (Exception failure) {
            return "{}";
        }
    }

    @JavascriptInterface
    public String downloadNetwork() {
        return DriveStream.network(context);
    }

    /** Cadena vacía si ahora se puede reproducir desde Drive; si no, el motivo para mostrar. */
    @JavascriptInterface
    public String streamCheck() {
        return DriveStream.check(context);
    }

    @JavascriptInterface
    public void setStreamMobile(boolean allowed) {
        DriveStream.setMobileAllowed(context, allowed);
    }

    @JavascriptInterface
    public void setAudioFormat(String value) {
        AudioExport.setFormat(context, value);
    }

    /** Nombre nuevo de la canción que suena: actualiza la notificación y la sesión multimedia al momento. */
    @JavascriptInterface
    public void rename(String json) {
        TrackNames.rename(json);
    }

    private static void reply(String requestId, Object result, Throwable error) {
        try {
            Class.forName("com.brisa.local.h").getMethod("d", String.class, Object.class, Throwable.class).invoke(null, requestId, result, error);
        } catch (Exception ignored) { }
    }

    /** Inicia sesión en Drive con un token pegado. Responde por el mismo canal asíncrono que las descargas. */
    @JavascriptInterface
    public void manualToken(final String requestId, final String json) {
        new Thread(() -> {
            try {
                reply(requestId, ManualAuth.connect(context, new JSONObject(json)), null);
            } catch (Exception failure) {
                reply(requestId, null, failure);
            }
        }, "brisa-token").start();
    }

    @JavascriptInterface
    public void clearManualToken() {
        ManualAuth.clear(context);
    }
}
