package com.brisa.local;

import android.app.*;
import android.content.*;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.*;
import android.provider.DocumentsContract;
import java.io.*;
import java.util.UUID;
import java.util.concurrent.*;
import org.json.JSONObject;

public final class DownloadService extends Service {
    private static volatile DownloadService instance;
    private static final String CHANNEL = "brisa-downloads";
    private static final int NOTICE = 2601;
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private volatile boolean cancelled;
    private volatile okhttp3.Call call;
    private String title = "Descargando vídeo";
    private long done, total, lastUpdate;
    private volatile boolean busy;
    private Uri exporting;
    private PowerManager.WakeLock wakeLock;
    static boolean isActive() { return instance != null && instance.busy; }
    static JSONObject state(Context context) {
        try {
            JSONObject state = new JSONObject(context.getSharedPreferences(CHANNEL, 0).getString("state", "{\"status\":\"idle\"}"));
            if (!isActive() && java.util.Arrays.asList("starting", "downloading", "merging", "exporting", "cancelling").contains(state.optString("status")))
                return new JSONObject().put("status", "error").put("error", "La descarga se interrumpió. Vuelve a consultar el enlace para intentarlo de nuevo.");
            return state;
        } catch (Exception e) { return new JSONObject(); }
    }
    static void cancelActive() {
        DownloadService service = instance;
        if (service != null) { service.cancelled = true; if (service.call != null) service.call.cancel(); service.publish("cancelling", null); }
    }
    @Override public void onCreate() {
        super.onCreate(); instance = this;
        getSystemService(NotificationManager.class).createNotificationChannel(new NotificationChannel(CHANNEL, "Descargas de vídeos", NotificationManager.IMPORTANCE_LOW));
    }
    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && "cancel".equals(intent.getAction())) { cancelActive(); return START_NOT_STICKY; }
        if (busy) return START_NOT_STICKY;
        if (intent == null) { stopSelf(); return START_NOT_STICKY; }
        DownloadEngine.Plan plan = DownloadEngine.PLANS.get(intent.getStringExtra("plan"));
        DownloadEngine.Choice choice = plan == null ? null : plan.choices.get(intent.getStringExtra("format"));
        if (choice == null) { stopSelf(); return START_NOT_STICKY; }
        busy = true; cancelled = false; title = plan.title; total = choice.size; done = 0;
        if (Build.VERSION.SDK_INT >= 29) startForeground(NOTICE, notification("Preparando descarga…"), ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC);
        else startForeground(NOTICE, notification("Preparando descarga…"));
        wakeLock = getSystemService(PowerManager.class).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "Brisa:download");
        wakeLock.acquire(6 * 60 * 60 * 1000L);
        publish("starting", null);
        worker.execute(() -> run(plan, choice));
        return START_NOT_STICKY;
    }
    private Notification notification(String text) {
        PendingIntent open = PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        PendingIntent cancel = PendingIntent.getService(this, 1, new Intent(this, DownloadService.class).setAction("cancel"), PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder b = new Notification.Builder(this, CHANNEL).setSmallIcon(R.drawable.ic_music).setContentTitle(title).setContentText(text)
            .setContentIntent(open).setOngoing(true).setOnlyAlertOnce(true).addAction(new Notification.Action.Builder(null, "Cancelar", cancel).build());
        if (total > 0) b.setProgress(100, (int) Math.min(100, done * 100 / total), false); else b.setProgress(0, 0, true);
        return b.build();
    }
    private void publish(String status, String error) {
        try {
            JSONObject value = new JSONObject().put("status", status).put("title", title).put("downloadedBytes", done).put("totalBytes", total);
            if (error != null) value.put("error", error);
            getSharedPreferences(CHANNEL, 0).edit().putString("state", value.toString()).apply();
            MainActivity.event("brisa-download", value);
            if (busy) getSystemService(NotificationManager.class).notify(NOTICE, notification(status.equals("merging") ? "Uniendo audio y vídeo…" : status.equals("exporting") ? "Guardando archivo…" : "Descargando…"));
        } catch (Exception ignored) { }
    }
    private void check() throws InterruptedIOException { if (cancelled || Thread.currentThread().isInterrupted()) throw new InterruptedIOException("Descarga cancelada."); }
    private void run(DownloadEngine.Plan plan, DownloadEngine.Choice choice) {
        File folder = new File(getCacheDir(), "download-" + UUID.randomUUID()); folder.mkdirs();
        try {
            File video = new File(folder, "video.part"), audio = new File(folder, "audio.part"), result = video;
            publish("downloading", null); transfer(choice.videoUrl, video);
            if (!plan.direct) {
                if (choice.audioUrl != null) transfer(choice.audioUrl, audio);
                check(); publish("merging", null); result = new File(folder, "complete.mp4");
                LocalMuxer.merge(video, choice.audioUrl == null ? null : audio, result, () -> cancelled || Thread.currentThread().isInterrupted());
            }
            check(); publish("exporting", null);
            String treeString = getSharedPreferences(CHANNEL, 0).getString("folder", "");
            Uri tree = Uri.parse(treeString), parent = DocumentsContract.buildDocumentUriUsingTree(tree, DocumentsContract.getTreeDocumentId(tree));
            String name = SafeNetwork.safeName(plan.title);
            if (!plan.direct || !name.toLowerCase(java.util.Locale.ROOT).endsWith("." + choice.extension)) name += "." + choice.extension;
            exporting = DocumentsContract.createDocument(getContentResolver(), parent, plan.direct && choice.extension.equals("webm") ? "video/webm" : "video/mp4", name);
            if (exporting == null) throw new IOException("No se pudo crear el archivo. Comprueba la carpeta y el espacio disponible.");
            try (InputStream in = new FileInputStream(result); OutputStream out = getContentResolver().openOutputStream(exporting, "w")) {
                if (out == null) throw new IOException("No se puede escribir en la carpeta elegida.");
                byte[] buffer = new byte[65536]; int n;
                while ((n = in.read(buffer)) >= 0) { check(); out.write(buffer, 0, n); }
            }
            check(); VideoFiles.addOwned(this, exporting); exporting = null;
            done = result.length(); total = done; publish("completed", null);
        } catch (Throwable error) {
            if (exporting != null) { try { DocumentsContract.deleteDocument(getContentResolver(), exporting); } catch (Exception ignored) { } exporting = null; }
            if (error instanceof SecurityException) getSharedPreferences(CHANNEL, 0).edit().remove("folder").apply();
            publish(cancelled ? "cancelled" : "error", cancelled ? null : DownloadBridge.friendly(error));
        } finally {
            File[] files = folder.listFiles(); if (files != null) for (File f : files) f.delete(); folder.delete();
            if (wakeLock != null && wakeLock.isHeld()) wakeLock.release();
            busy = false; call = null; stopForeground(STOP_FOREGROUND_REMOVE); stopSelf();
        }
    }
    private void transfer(String url, File destination) throws Exception {
        check();
        call = SafeNetwork.CLIENT.newCall(new okhttp3.Request.Builder().url(url).header("User-Agent", "Mozilla/5.0").build());
        try (okhttp3.Response response = call.execute()) {
            if (!response.isSuccessful() || response.body() == null) throw new IOException("La descarga falló (HTTP " + response.code() + "). Consulta el enlace de nuevo.");
            String mime = response.header("Content-Type", "");
            if (mime.contains("text/html") || mime.contains("application/json")) throw new IOException("El enlace no devuelve un archivo de vídeo.");
            long length = response.body().contentLength();
            if (length > 0 && getCacheDir().getUsableSpace() < length * 2 + 16777216) throw new IOException("Falta espacio libre para descargar y unir el vídeo.");
            try (InputStream in = response.body().byteStream(); OutputStream out = new FileOutputStream(destination)) {
                byte[] buffer = new byte[65536]; int n; long written = 0;
                while ((n = in.read(buffer)) >= 0) {
                    check(); out.write(buffer, 0, n); done += n; written += n;
                    if (SystemClock.elapsedRealtime() - lastUpdate > 500) { lastUpdate = SystemClock.elapsedRealtime(); publish("downloading", null); }
                }
                if (length > 0 && written != length) throw new IOException("La descarga quedó incompleta. Vuelve a intentarlo.");
                if (written == 0) throw new IOException("El archivo descargado está vacío.");
            }
        } finally { call = null; }
    }
    @Override public void onTimeout(int startId, int fgsType) { cancelled = true; if (call != null) call.cancel(); stopForeground(STOP_FOREGROUND_REMOVE); stopSelf(); }
    @Override public void onDestroy() { cancelled = true; if (call != null) call.cancel(); worker.shutdownNow(); if (wakeLock != null && wakeLock.isHeld()) wakeLock.release(); if (instance == this) instance = null; super.onDestroy(); }
    @Override public IBinder onBind(Intent intent) { return null; }
}
