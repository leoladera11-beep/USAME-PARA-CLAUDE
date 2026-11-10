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
                .toString();
        } catch (Exception failure) {
            return "{}";
        }
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
}
