package com.brisa.local;

import android.content.Context;
import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.provider.DocumentsContract;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class Library {
    static final String PREF = "brisa-file-grants";
    private static Map<String, String> identities;

    Library() {
    }

    private static String identity(Context context, Uri uri) {
        try {
            if (DocumentsContract.isDocumentUri(context, uri)) {
                return String.valueOf(uri.getAuthority()) + "|" + DocumentsContract.getDocumentId(uri);
            }
        } catch (Exception e) {
        }
        return uri.toString();
    }

    static synchronized String register(Context context, Uri uri) throws Exception {
        String string;
        if (!"content".equals(uri.getScheme())) {
            throw new SecurityException("Solo se admiten archivos elegidos con Android");
        }
        if (identities == null) {
            identities = new HashMap();
            for (Map.Entry<String, ?> entry : context.getSharedPreferences(PREF, 0).getAll().entrySet()) {
                if (entry.getValue() instanceof String) {
                    identities.put(identity(context, Uri.parse((String) entry.getValue())), entry.getKey());
                }
            }
        }
        String strIdentity = identity(context, uri);
        string = identities.get(strIdentity);
        if (string == null) {
            StringBuilder sb = new StringBuilder();
            for (byte b : MessageDigest.getInstance("SHA-256").digest(strIdentity.getBytes("UTF-8"))) {
                sb.append(String.format("%02x", Integer.valueOf(b & 255)));
            }
            string = sb.toString();
            identities.put(strIdentity, string);
        }
        context.getSharedPreferences(PREF, 0).edit().putString(string, uri.toString()).apply();
        return string;
    }

    static Uri resolve(Context context, String str) {
        String string;
        if (str == null || !str.matches("[a-f0-9]{64}") || (string = context.getSharedPreferences(PREF, 0).getString(str, null)) == null) {
            return null;
        }
        return Uri.parse(string);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    static JSONObject describe(Context context, Uri uri) throws Exception {
        String string;
        String strExtractMetadata;
        String strExtractMetadata2;
        String strRegister = register(context, uri);
        Throwable th = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_display_name", "_size"}, null, null, null);
            long j = 0;
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        string = cursorQuery.getString(0);
                        if (!cursorQuery.isNull(1)) {
                            j = cursorQuery.getLong(1);
                        }
                    } else {
                        string = "Canción";
                    }
                } catch (Throwable th2) {
                    if (cursorQuery == null) {
                        throw th2;
                    }
                    cursorQuery.close();
                    throw th2;
                }
            } else {
                string = "Canción";
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("nativeId", strRegister);
            jSONObject.put("nativeUri", true);
            jSONObject.put("name", string);
            jSONObject.put("size", j);
            jSONObject.put("path", "https://appassets.androidplatform.net/audio/" + strRegister);
            String lowerCase = string.contains(".") ? string.substring(string.lastIndexOf(46) + 1).toLowerCase() : "audio";
            jSONObject.put("format", lowerCase);
            jSONObject.put("lossless", lowerCase.equals("flac") || lowerCase.equals("wav"));
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    mediaMetadataRetriever.setDataSource(context, uri);
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(7);
                    try {
                        strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(2);
                        try {
                            String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(9);
                            if (strExtractMetadata3 != null) {
                                jSONObject.put("duration", Long.parseLong(strExtractMetadata3) / 1000.0d);
                            }
                            String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(20);
                            if (strExtractMetadata4 != null) {
                                jSONObject.put("bitrate", Math.round(Double.parseDouble(strExtractMetadata4) / 1000.0d));
                            }
                            if (Build.VERSION.SDK_INT >= 31) {
                                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(38);
                                if (strExtractMetadata5 != null) {
                                    jSONObject.put("sampleRate", Integer.parseInt(strExtractMetadata5));
                                }
                                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(39);
                                if (strExtractMetadata6 != null) {
                                    jSONObject.put("bits", Integer.parseInt(strExtractMetadata6));
                                }
                            }
                        } catch (Exception e) {
                        }
                    } catch (Exception e2) {
                        strExtractMetadata2 = "";
                    }
                } catch (Exception e3) {
                    strExtractMetadata = "";
                    strExtractMetadata2 = strExtractMetadata;
                }
                mediaMetadataRetriever.release();
                if (strExtractMetadata == null) {
                    strExtractMetadata = "";
                }
                jSONObject.put("title", strExtractMetadata);
                jSONObject.put("artist", strExtractMetadata2 != null ? strExtractMetadata2 : "");
                return jSONObject;
            } catch (Throwable th3) {
                mediaMetadataRetriever.release();
                throw th3;
            }
        } catch (Throwable th4) {
            if (0 == 0) {
                throw th4;
            }
            if (null != th4) {
                th.addSuppressed(th4);
            }
            throw null;
        }
    }
}
