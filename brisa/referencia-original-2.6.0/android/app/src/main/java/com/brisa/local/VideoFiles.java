package com.brisa.local;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import org.json.*;

final class VideoFiles {
    static final String PREF = "brisa-video-grants";
    private static JSONObject get(Context context, String id) {
        if (id == null || !id.matches("[a-f0-9]{64}")) return null;
        try { return new JSONObject(context.getSharedPreferences(PREF, 0).getString(id, "")); } catch (Exception e) { return null; }
    }
    static Uri resolve(Context context, String id) { JSONObject item = get(context, id); return item == null ? null : Uri.parse(item.optString("uri")); }
    static String name(Context context, String id) { JSONObject item = get(context, id); return item == null ? "Video" : item.optString("name", "Video"); }
    static synchronized boolean add(Context context, Uri uri) throws Exception { return add(context, uri, true); }
    static synchronized boolean addOwned(Context context, Uri uri) throws Exception { return add(context, uri, false); }
    private static boolean add(Context context, Uri uri, boolean persist) throws Exception {
        if (uri == null || !"content".equals(uri.getScheme())) return false;
        StringBuilder hash = new StringBuilder();
        for (byte b : MessageDigest.getInstance("SHA-256").digest(uri.toString().getBytes(StandardCharsets.UTF_8))) hash.append(String.format(Locale.ROOT, "%02x", b & 255));
        String id = hash.toString();
        if (persist) context.getContentResolver().takePersistableUriPermission(uri, 1);
        if (get(context, id) != null) return false;
        if (context.getSharedPreferences(PREF, 0).getAll().size() >= 500) throw new IllegalStateException("La biblioteca alcanzó 500 vídeos. Quita alguno antes de añadir más.");
        String name = "Video"; long size = 0;
        try (Cursor cursor = context.getContentResolver().query(uri, new String[]{"_display_name", "_size"}, null, null, null)) {
            if (cursor != null && cursor.moveToFirst()) { if (!cursor.isNull(0)) name = cursor.getString(0); if (!cursor.isNull(1)) size = cursor.getLong(1); }
        }
        String type = context.getContentResolver().getType(uri);
        if ((type == null || !type.startsWith("video/")) && !name.matches("(?i).*\\.(mp4|m4v|webm|mov|mkv|3gp)$")) throw new IllegalArgumentException("No es un vídeo.");
        JSONObject item = new JSONObject().put("id", id).put("name", name.substring(0, Math.min(256, name.length())))
            .put("size", size).put("added", System.currentTimeMillis()).put("uri", uri.toString());
        if (!context.getSharedPreferences(PREF, 0).edit().putString(id, item.toString()).commit()) throw new java.io.IOException("No se pudo registrar el vídeo en la biblioteca.");
        return true;
    }
    static String list(Context context) {
        JSONArray result = new JSONArray();
        for (Object entry : context.getSharedPreferences(PREF, 0).getAll().values()) try { JSONObject item = new JSONObject(String.valueOf(entry)); item.remove("uri"); result.put(item); } catch (Exception ignored) { }
        return result.toString();
    }
    static boolean containsUri(Context context, Uri uri) {
        for (Object entry : context.getSharedPreferences(PREF, 0).getAll().values()) try { if (uri.toString().equals(new JSONObject(String.valueOf(entry)).optString("uri"))) return true; } catch (Exception ignored) { }
        return false;
    }
    static synchronized void forget(Context context, String id) {
        Uri uri = resolve(context, id); if (uri == null) return;
        context.getSharedPreferences(PREF, 0).edit().remove(id).apply();
        if (context.getSharedPreferences("brisa-file-grants", 0).getAll().containsValue(uri.toString()) || containsUri(context, uri)) return;
        try { context.getContentResolver().releasePersistableUriPermission(uri, 1); } catch (Exception ignored) { }
    }
}
