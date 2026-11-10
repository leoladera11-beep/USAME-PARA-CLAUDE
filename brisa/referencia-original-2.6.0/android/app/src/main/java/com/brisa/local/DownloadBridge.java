package com.brisa.local;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.webkit.JavascriptInterface;
import java.util.concurrent.*;
import org.json.JSONObject;

final class DownloadBridge {
    static final int FOLDER_REQUEST = 81;
    private final MainActivity activity;
    private static final ThreadPoolExecutor WORK = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new ArrayBlockingQueue<>(3));
    String pendingRequest, pendingPlan, pendingFormat;
    DownloadBridge(MainActivity activity) { this.activity = activity; }
    static void reply(String id, Object result, Throwable error) {
        try { MainActivity.downloadReply(new JSONObject().put("requestId", id).put("ok", error == null)
            .put("result", result == null ? JSONObject.NULL : result)
            .put("error", error == null ? JSONObject.NULL : friendly(error))); } catch (Exception ignored) { }
    }
    static String friendly(Throwable error) {
        if (error instanceof java.net.UnknownHostException) return "No se pudo conectar. Comprueba Internet y vuelve a intentarlo.";
        if (error instanceof java.net.SocketTimeoutException) return "La conexión tardó demasiado. Inténtalo otra vez.";
        if (error instanceof java.io.InterruptedIOException || error instanceof InterruptedException) return "Operación cancelada.";
        String message = error.getMessage();
        if (message == null || message.contains("https://") || message.length() > 220) return "No se pudo consultar o descargar el vídeo. Puede no estar disponible o requerir una actualización de Brisa.";
        return message;
    }
    @JavascriptInterface public void inspect(String requestId, String url) {
        try { WORK.execute(() -> { try { reply(requestId, DownloadEngine.inspect(url).json(), null); } catch (Throwable e) { reply(requestId, null, e); } }); }
        catch (RejectedExecutionException e) { reply(requestId, null, new Exception("Hay otra consulta en curso. Espera un momento.")); }
    }
    @JavascriptInterface public void state(String requestId) { reply(requestId, DownloadService.state(activity), null); }
    @JavascriptInterface public void cancel(String requestId) { DownloadService.cancelActive(); reply(requestId, true, null); }
    @JavascriptInterface public void start(String requestId, String planId, String formatId) {
        activity.runOnUiThread(() -> {
            DownloadEngine.Plan plan = DownloadEngine.PLANS.get(planId);
            if (plan == null || !plan.choices.containsKey(formatId) || System.currentTimeMillis() - plan.created > 600000) { reply(requestId, null, new Exception("El enlace ha caducado. Vuelve a consultar sus calidades.")); return; }
            if (DownloadService.isActive() || pendingRequest != null) { reply(requestId, null, new Exception("Ya hay una descarga o una selección de carpeta en curso.")); return; }
            if (Build.VERSION.SDK_INT >= 33 && activity.checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED)
                activity.requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS}, 82);
            pendingRequest = requestId; pendingPlan = planId; pendingFormat = formatId;
            if (activity.getSharedPreferences("brisa-downloads", 0).getString("folder", "").isEmpty()) chooseFolder(); else launch();
        });
    }
    @JavascriptInterface public void folder(String requestId) {
        activity.runOnUiThread(() -> {
            if (DownloadService.isActive() || pendingRequest != null) { reply(requestId, null, new Exception("Espera a que termine la descarga antes de cambiar de carpeta.")); return; }
            pendingRequest = requestId; pendingPlan = null; pendingFormat = null; chooseFolder();
        });
    }
    private void chooseFolder() {
        try { activity.startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE)
            .addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION), FOLDER_REQUEST); }
        catch (Exception e) { fail(e); }
    }
    void folderResult(int result, Intent data) {
        if (pendingRequest == null) return;
        if (result != android.app.Activity.RESULT_OK || data == null || data.getData() == null) { fail(new Exception("No se eligió una carpeta. Puedes volver a intentarlo.")); return; }
        try {
            activity.getContentResolver().takePersistableUriPermission(data.getData(), Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            activity.getSharedPreferences("brisa-downloads", 0).edit().putString("folder", data.getData().toString()).apply();
            if (pendingPlan == null) { reply(pendingRequest, true, null); clear(); } else launch();
        } catch (Exception e) { fail(new Exception("No se obtuvo acceso a la carpeta. Elige otra ubicación.")); }
    }
    private void launch() {
        try {
            Intent intent = new Intent(activity, DownloadService.class).putExtra("plan", pendingPlan).putExtra("format", pendingFormat);
            activity.startForegroundService(intent); reply(pendingRequest, true, null); clear();
        } catch (Exception e) { fail(e); }
    }
    private void fail(Exception e) { reply(pendingRequest, null, e); clear(); }
    private void clear() { pendingRequest = null; pendingPlan = null; pendingFormat = null; }
}
