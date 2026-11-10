package com.brisa.local;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Insets;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.WindowInsets;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.Toast;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends Activity {
    private static final int AUDIO = 10;
    private static final int FILE = 11;
    private static final int FOLDER = 13;
    public static final String ORIGIN = "https://appassets.androidplatform.net";
    private static final int SAVE = 12;
    private static final int VIDEOS = 14;
    private static WeakReference<MainActivity> active = new WeakReference<>(null);
    private ValueCallback<Uri[]> chooser;
    private volatile AudioImport importer;
    private boolean importingVideos;
    private String pendingText;
    private WebView web;
    private DownloadBridge downloadBridge;
    private boolean visible = false;
    private boolean pageReady = false;
    private String deliveredBatch = "";

    static /* synthetic */ void access$10(MainActivity mainActivity, String str) {
        mainActivity.pendingText = str;
    }

    static /* synthetic */ ValueCallback access$11(MainActivity mainActivity) {
        return mainActivity.chooser;
    }

    static /* synthetic */ void access$12(MainActivity mainActivity, ValueCallback valueCallback) {
        mainActivity.chooser = valueCallback;
    }

    static /* synthetic */ AudioImport access$2(MainActivity mainActivity) {
        return mainActivity.importer;
    }

    static /* synthetic */ void access$3(MainActivity mainActivity, boolean z) {
        mainActivity.pageReady = z;
    }

    static /* synthetic */ void access$4(MainActivity mainActivity, String str) {
        mainActivity.deliveredBatch = str;
    }

    static void downloadReply(JSONObject result) { evaluate("window.BrisaDownloadResult&&window.BrisaDownloadResult(" + result + ");"); }
    static void event(String type, JSONObject detail) { evaluate("window.dispatchEvent(new CustomEvent(" + JSONObject.quote(type) + ",{detail:" + detail + "}));"); }
    private static void evaluate(String script) {
        MainActivity activity = active.get();
        if (activity == null) return;
        activity.runOnUiThread(() -> {
            if (activity.web != null && activity.web.getUrl() != null && activity.web.getUrl().startsWith(ORIGIN + "/assets/"))
                activity.web.evaluateJavascript(script.replace("\u2028", "\\u2028").replace("\u2029", "\\u2029"), null);
        });
    }

    public static boolean isVisible() {
        MainActivity mainActivity = active.get();
        return mainActivity != null && mainActivity.visible;
    }

    /* JADX INFO: renamed from: com.brisa.local.MainActivity$1, reason: invalid class name */
    class AnonymousClass1 extends WebChromeClient {
        AnonymousClass1() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            if (MainActivity.access$11(MainActivity.this) != null) {
                MainActivity.access$11(MainActivity.this).onReceiveValue(null);
            }
            MainActivity.access$12(MainActivity.this, valueCallback);
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("*/*");
            intent.addFlags(1);
            try {
                MainActivity.this.startActivityForResult(intent, MainActivity.FILE);
            } catch (Exception e) {
                MainActivity.access$11(MainActivity.this).onReceiveValue(null);
                MainActivity.access$12(MainActivity.this, null);
            }
            return true;
        }
    }

    static /* synthetic */ void lambda$0(MainActivity mainActivity, String str, String str2) {
        if (!mainActivity.visible || mainActivity.web == null) {
            return;
        }
        mainActivity.web.evaluateJavascript("window.BrisaPlatform&&window.BrisaPlatform." + str + "(" + str2 + ");", null);
    }

    public static void send(String str, JSONObject jSONObject) {
        MainActivity mainActivity = active.get();
        if (mainActivity == null || !mainActivity.visible || mainActivity.web == null) {
            return;
        }
        mainActivity.runOnUiThread(new MainActivity$$ExternalSyntheticLambda0(mainActivity, str, jSONObject.toString().replace("\u2028", "\\u2028").replace("\u2029", "\\u2029")));
    }

    static /* synthetic */ WindowInsets lambda$1(View view, WindowInsets windowInsets) {
        int iSystemBars = WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout();
        Insets insets = windowInsets.getInsets(iSystemBars);
        view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return new WindowInsets.Builder(windowInsets).setInsets(iSystemBars, Insets.NONE).setInsetsIgnoringVisibility(iSystemBars, Insets.NONE).setDisplayCutout(null).build();
    }

    /* JADX INFO: renamed from: lambda$2$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m3lambda$2$combrisalocalMainActivity() {
        handleBack();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        active = new WeakReference<>(this);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(Color.rgb(16, 23, 20));
        if (Build.VERSION.SDK_INT >= 30) {
            getWindow().setDecorFitsSystemWindows(false);
            frameLayout.setOnApplyWindowInsetsListener(new MainActivity$$ExternalSyntheticLambda6());
        } else {
            frameLayout.setFitsSystemWindows(true);
        }
        this.web = new WebView(this);
        frameLayout.addView(this.web, new FrameLayout.LayoutParams(-1, -1));
        setContentView(frameLayout);
        WebView.setWebContentsDebuggingEnabled(false);
        WebSettings settings = this.web.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(true);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMixedContentMode(1);
        settings.setMediaPlaybackRequiresUserGesture(true);
        settings.setSafeBrowsingEnabled(true);
        settings.setSupportMultipleWindows(false);
        this.web.addJavascriptInterface(new NativeBridge(), "BrisaNative");
        this.downloadBridge = new DownloadBridge(this);
        this.web.addJavascriptInterface(downloadBridge, "BrisaDownloadNative");
        this.web.addJavascriptInterface(new SoundEffects.Bridge(this), "BrisaSoundNative");
        this.web.setWebViewClient(new LocalClient());
        this.web.setWebChromeClient(new AnonymousClass1());
        this.web.loadUrl("https://appassets.androidplatform.net/assets/index.html");
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new MainActivity$$ExternalSyntheticLambda7(this));
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.visible = true;
        active = new WeakReference<>(this);
        if (PlaybackService.instance != null) {
            PlaybackService.instance.visibilityChanged(true);
            PlaybackService.instance.publish(false);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.visible = false;
        if (PlaybackService.instance != null) {
            PlaybackService.instance.visibilityChanged(false);
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.importer != null) {
            this.importer.cancel();
        }
        if (active.get() == this) {
            active.clear();
        }
        if (this.chooser != null) {
            this.chooser.onReceiveValue(null);
        }
        if (this.web != null) {
            this.web.removeJavascriptInterface("BrisaNative");
            this.web.removeJavascriptInterface("BrisaDownloadNative");
            this.web.removeJavascriptInterface("BrisaSoundNative");
            this.web.destroy();
            this.web = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.web != null) {
            this.web.onResume();
        }
        deliverImport();
        refreshVideos();
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.web != null) {
            this.web.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        handleBack();
    }

    private void handleBack() {
        if (this.web != null) {
            this.web.evaluateJavascript("(()=>{const d=document.querySelector('dialog[open]');if(d){d.close();return true;}if(document.body.classList.contains('player-expanded')){window.BrisaClosePlayer&&window.BrisaClosePlayer();return true;}const p=document.getElementById('rightPanel');if(p&&p.classList.contains('open')){if(window.BrisaClosePanel)window.BrisaClosePanel();else p.classList.remove('open');return true;}if(window.BrisaCloseVideos&&window.BrisaCloseVideos())return true;return false;})()", new MainActivity$$ExternalSyntheticLambda2(this));
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: renamed from: lambda$3$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m4lambda$3$combrisalocalMainActivity(String str) {
        if ("true".equals(str)) {
            return;
        }
        moveTaskToBack(true);
    }

    /* JADX INFO: renamed from: lambda$4$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m5lambda$4$combrisalocalMainActivity(String str) {
        Toast.makeText(this, str, 1).show();
    }

    void message(String str) {
        runOnUiThread(new MainActivity$$ExternalSyntheticLambda3(this, str));
    }

    final class NativeBridge {
        NativeBridge() {
        }

        /* JADX INFO: renamed from: lambda$0$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m11lambda$0$combrisalocalMainActivity$NativeBridge() {
            if (MainActivity.access$0(MainActivity.this)) {
                return;
            }
            new AlertDialog.Builder(MainActivity.this).setTitle("Añadir música en masa").setItems(new String[]{"Seleccionar varias canciones", "Importar carpeta y subcarpetas"}, new MainActivity$NativeBridge$$ExternalSyntheticLambda7(this)).setNegativeButton("Cancelar", (DialogInterface.OnClickListener) null).show();
        }

        /* JADX INFO: renamed from: lambda$1$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m12lambda$1$combrisalocalMainActivity$NativeBridge(DialogInterface dialogInterface, int i) {
            MainActivity.access$1(MainActivity.this, i == 1);
        }

        @JavascriptInterface
        public void pickAudio() {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda2(this));
        }

        /* JADX INFO: renamed from: lambda$2$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m14lambda$2$combrisalocalMainActivity$NativeBridge() {
            MainActivity.access$1(MainActivity.this, true);
        }

        @JavascriptInterface
        public void pickFolder() {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda3(this));
        }

        @JavascriptInterface
        public void importAck(String str) {
            AudioImport audioImportAccess$2 = MainActivity.access$2(MainActivity.this);
            if (audioImportAccess$2 != null) {
                audioImportAccess$2.acknowledge(str);
            }
        }

        @JavascriptInterface
        public void importReady() {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda8(this));
        }

        /* JADX INFO: renamed from: lambda$3$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m15lambda$3$combrisalocalMainActivity$NativeBridge() {
            MainActivity.access$3(MainActivity.this, true);
            MainActivity.access$4(MainActivity.this, "");
            MainActivity.access$5(MainActivity.this);
        }

        @JavascriptInterface
        public void cancelImport() {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda1(this));
        }

        /* JADX INFO: renamed from: lambda$4$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m16lambda$4$combrisalocalMainActivity$NativeBridge() {
            if (MainActivity.access$2(MainActivity.this) != null) {
                MainActivity.access$2(MainActivity.this).cancel();
            }
        }

        @JavascriptInterface
        public String snapshot() {
            PlaybackService playbackService = PlaybackService.instance;
            return playbackService == null ? "{}" : playbackService.snapshot().toString();
        }

        @JavascriptInterface
        public void load(String str) {
            MainActivity.this.command("load", str);
        }

        @JavascriptInterface
        public void play() {
            MainActivity.this.command("play", "");
        }

        @JavascriptInterface
        public void resetQueueCycle() {
            MainActivity.this.command("resetCycle", "");
        }

        @JavascriptInterface
        public void next() {
            MainActivity.this.command("next", "");
        }

        @JavascriptInterface
        public void previous() {
            MainActivity.this.command("previous", "");
        }

        @JavascriptInterface
        public void pause() {
            MainActivity.this.command("pause", "");
        }

        @JavascriptInterface
        public void seek(double d) {
            if (Double.isFinite(d)) {
                MainActivity.this.command("seek", String.valueOf(d));
            }
        }

        @JavascriptInterface
        public void volume(double d) {
            if (Double.isFinite(d)) {
                MainActivity.this.command("volume", String.valueOf(d));
            }
        }

        @JavascriptInterface
        public void rate(double d) {
            if (Double.isFinite(d)) {
                MainActivity.this.command("rate", String.valueOf(d));
            }
        }

        @JavascriptInterface
        public void queue(String str) {
            if (str.length() < 2000000) {
                MainActivity.this.command("queue", str);
            }
        }

        @JavascriptInterface
        public void sleep(String str) {
            MainActivity.this.command("sleep", str);
        }

        @JavascriptInterface
        public void stop() {
            MainActivity.this.command("stop", "");
        }

        @JavascriptInterface
        public void forget(String str) {
            Uri uriResolve = Library.resolve(MainActivity.this, str);
            if (uriResolve == null) {
                return;
            }
            MainActivity.this.getSharedPreferences("brisa-file-grants", 0).edit().remove(str).apply();
            if (VideoFiles.containsUri(MainActivity.this, uriResolve)) {
                return;
            }
            try {
                MainActivity.this.getContentResolver().releasePersistableUriPermission(uriResolve, 1);
            } catch (Exception e) {
            }
        }

        /* JADX INFO: renamed from: lambda$5$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m17lambda$5$combrisalocalMainActivity$NativeBridge() {
            MainActivity.access$6(MainActivity.this);
        }

        @JavascriptInterface
        public void pickVideos() {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda6(this));
        }

        @JavascriptInterface
        public String listVideos() {
            return VideoFiles.list(MainActivity.this);
        }

        @JavascriptInterface
        public void forgetVideo(String str) {
            VideoFiles.forget(MainActivity.this, str);
        }

        @JavascriptInterface
        public void playVideo(String str) {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda0(this, str));
        }

        /* JADX INFO: renamed from: lambda$6$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m18lambda$6$combrisalocalMainActivity$NativeBridge(String str) {
            if (VideoFiles.resolve(MainActivity.this, str) == null) {
                MainActivity.this.message("Vuelve a seleccionar el video original.");
                return;
            }
            if (PlaybackService.instance != null) {
                MainActivity.this.command("pause", "");
            }
            MainActivity.this.startActivity(new Intent(MainActivity.this, (Class<?>) VideoActivity.class).putExtra("videoId", str));
        }

        /* JADX INFO: renamed from: lambda$7$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m19lambda$7$combrisalocalMainActivity$NativeBridge(String str) {
            Uri uriAccess$7 = MainActivity.access$7(MainActivity.this, str);
            if (uriAccess$7 != null) {
                MainActivity.access$8(MainActivity.this, uriAccess$7);
            }
        }

        @JavascriptInterface
        public void openVideoLink(String str) {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda10(this, str));
        }

        @JavascriptInterface
        public void downloadVideo(String str) {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda5(this, str));
        }

        /* JADX INFO: renamed from: lambda$8$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m20lambda$8$combrisalocalMainActivity$NativeBridge(String str) {
            MainActivity.access$9(MainActivity.this, str);
        }

        /* JADX INFO: renamed from: lambda$9$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m21lambda$9$combrisalocalMainActivity$NativeBridge() {
            MainActivity.this.message("Brisa Local 2.6.0. Conserva el paquete y tu copia de firma para las próximas actualizaciones.");
        }

        @JavascriptInterface
        public void openUpdates() {
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda9(this));
        }

        /* JADX INFO: renamed from: lambda$10$com-brisa-local-MainActivity$NativeBridge, reason: not valid java name */
        /* synthetic */ void m13lambda$10$combrisalocalMainActivity$NativeBridge(String str, String str2) {
            MainActivity.access$10(MainActivity.this, str);
            Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TITLE", str2.replaceAll("[\\\\/<>:\"|?*]", "_"));
            try {
                MainActivity.this.startActivityForResult(intent, MainActivity.SAVE);
            } catch (Exception e) {
                MainActivity.access$10(MainActivity.this, null);
                MainActivity.this.message("No se pudo abrir el selector para guardar.");
            }
        }

        @JavascriptInterface
        public void saveText(String str, String str2) {
            if (str2.length() > 4000000) {
                return;
            }
            MainActivity.this.runOnUiThread(new MainActivity$NativeBridge$$ExternalSyntheticLambda4(this, str2, str));
        }
    }

    void command(String str, String str2) {
        runOnUiThread(new MainActivity$$ExternalSyntheticLambda9(this, str, str2));
    }

    /* JADX INFO: renamed from: lambda$5$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m6lambda$5$combrisalocalMainActivity(String str, String str2) {
        Intent intentPutExtra = new Intent(this, (Class<?>) PlaybackService.class).setAction(str).putExtra("value", str2);
        if (str.equals("play")) {
            startForegroundService(intentPutExtra);
        } else {
            startService(intentPutExtra);
        }
    }

    /* JADX INFO: renamed from: lambda$6$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m7lambda$6$combrisalocalMainActivity(Intent intent, String text) {
        try (OutputStream out = getContentResolver().openOutputStream(intent.getData())) {
            if (out == null) throw new IOException();
            out.write(text.getBytes(java.nio.charset.StandardCharsets.UTF_8)); message("Letra guardada.");
        } catch (Exception e) { message("No se pudo guardar la letra. Elige otra ubicación."); }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == DownloadBridge.FOLDER_REQUEST) { if (downloadBridge != null) downloadBridge.folderResult(i2, intent); return; }
        if (i == VIDEOS) {
            if (i2 != -1 || intent == null) {
                return;
            }
            importVideos(intent);
            return;
        }
        Uri data = null;
        if (i == FILE) {
            if (this.chooser != null) {
                this.chooser.onReceiveValue(i2 == -1 ? WebChromeClient.FileChooserParams.parseResult(i2, intent) : null);
                this.chooser = null;
                return;
            }
            return;
        }
        if (i == SAVE) {
            String str = this.pendingText;
            this.pendingText = null;
            if (i2 != -1 || intent == null || intent.getData() == null || str == null) {
                return;
            }
            new Thread(new MainActivity$$ExternalSyntheticLambda4(this, intent, str)).start();
            return;
        }
        if ((i == AUDIO || i == FOLDER) && i2 == -1 && intent != null && !importBusy()) {
            ArrayList arrayList = new ArrayList();
            if (i == FOLDER) {
                data = intent.getData();
                if (data == null) {
                    return;
                }
                try {
                    getContentResolver().takePersistableUriPermission(data, 1);
                } catch (Exception e) {
                    message("Android no permitió conservar acceso a esa carpeta. Elige otra carpeta local.");
                    return;
                }
            } else if (intent.getClipData() != null) {
                for (int i3 = 0; i3 < intent.getClipData().getItemCount(); i3++) {
                    arrayList.add(intent.getClipData().getItemAt(i3).getUri());
                }
            } else if (intent.getData() != null) {
                arrayList.add(intent.getData());
            }
            this.deliveredBatch = "";
            this.importer = new AudioImport(this, new MainActivity$$ExternalSyntheticLambda5(this));
            this.importer.start(arrayList, data);
        }
    }

    /* JADX INFO: renamed from: lambda$7$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m8lambda$7$combrisalocalMainActivity() {
        deliverImport();
    }

    private void refreshVideos() {
        if (this.web == null || !this.visible) {
            return;
        }
        this.web.evaluateJavascript("window.BrisaVideosChanged&&window.BrisaVideosChanged()", null);
    }

    static /* synthetic */ void access$6(MainActivity mainActivity) {
        mainActivity.openVideosPicker();
    }

    private void openVideosPicker() {
        if (this.importingVideos) {
            message("Espera a que termine la importación de videos.");
            return;
        }
        Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType("video/*");
        type.putExtra("android.intent.extra.ALLOW_MULTIPLE", true).addFlags(65);
        try {
            startActivityForResult(type, VIDEOS);
        } catch (Exception e) {
            message("No se pudo abrir el selector de videos.");
        }
    }

    private void importVideos(Intent intent) {
        if (this.importingVideos) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (intent.getClipData() != null) {
            for (int i = 0; i < Math.min(200, intent.getClipData().getItemCount()); i++) {
                arrayList.add(intent.getClipData().getItemAt(i).getUri());
            }
        } else if (intent.getData() != null) {
            arrayList.add(intent.getData());
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.importingVideos = true;
        new Thread(new MainActivity$$ExternalSyntheticLambda8(this, arrayList), "brisa-video-import").start();
    }

    /* JADX INFO: renamed from: lambda$8$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m9lambda$8$combrisalocalMainActivity(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            try {
                if (VideoFiles.add(this, (Uri) it.next())) {
                    i++;
                }
            } catch (Exception e) {
                i2++;
            }
        }
        runOnUiThread(new MainActivity$$ExternalSyntheticLambda1(this, String.valueOf(i) + " videos añadidos" + (i2 > 0 ? " · " + i2 + " no disponibles" : "") + "."));
    }

    /* JADX INFO: renamed from: lambda$9$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m10lambda$9$combrisalocalMainActivity(String str) {
        this.importingVideos = false;
        if (isDestroyed()) {
            return;
        }
        refreshVideos();
        message(str);
    }

    static /* synthetic */ Uri access$7(MainActivity mainActivity, String str) {
        return mainActivity.videoHttps(str);
    }

    private Uri videoHttps(String str) {
        if (str == null || str.length() > 8192) {
            return null;
        }
        Uri uri = Uri.parse(str);
        if (!"https".equals(uri.getScheme()) || uri.getHost() == null || uri.getUserInfo() != null || ((uri.getPort() != -1 && uri.getPort() != 443) || "appassets.androidplatform.net".equalsIgnoreCase(uri.getHost()))) {
            return null;
        }
        return uri;
    }

    static /* synthetic */ void access$8(MainActivity mainActivity, Uri uri) {
        mainActivity.openExternalVideo(uri);
    }

    private void openExternalVideo(Uri uri) {
        try {
            startActivity(new Intent("android.intent.action.VIEW", uri));
        } catch (Exception e) {
            message("No se encontró un navegador compatible.");
        }
    }

    static /* synthetic */ void access$9(MainActivity mainActivity, String str) {
        mainActivity.downloadOriginalVideo(str);
    }

    private void downloadOriginalVideo(String str) {
        Uri uriVideoHttps = videoHttps(str);
        if (uriVideoHttps == null) {
            return;
        }
        String lowerCase = uriVideoHttps.getHost().toLowerCase(Locale.ROOT);
        String lastPathSegment = uriVideoHttps.getLastPathSegment();
        if (lowerCase.equals("youtu.be") || lowerCase.endsWith(".youtu.be") || lowerCase.equals("youtube.com") || lowerCase.endsWith(".youtube.com") || lowerCase.equals("youtube-nocookie.com") || lowerCase.endsWith(".youtube-nocookie.com") || lastPathSegment == null || !lastPathSegment.matches("(?i).*\\.(mp4|m4v|webm|mov|mkv|3gp)$")) {
            message("Usa un enlace directo a un archivo de video.");
            return;
        }
        if (Build.VERSION.SDK_INT < 29) {
            openExternalVideo(uriVideoHttps);
            return;
        }
        String strReplaceAll = lastPathSegment.replaceAll("[^a-zA-Z0-9._-]", "_");
        if (strReplaceAll.length() > 120) {
            strReplaceAll = String.valueOf(strReplaceAll.substring(0, 100)) + strReplaceAll.substring(strReplaceAll.lastIndexOf(46));
        }
        try {
            ((DownloadManager) getSystemService("download")).enqueue(new DownloadManager.Request(uriVideoHttps).setTitle(strReplaceAll).setDescription("Video original · Brisa").setNotificationVisibility(1).setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, "Brisa-" + System.currentTimeMillis() + "-" + strReplaceAll));
            message("Descarga iniciada. Al terminar, añade el archivo desde Descargas.");
        } catch (Exception e) {
            message("No se pudo iniciar la descarga. Abriendo el enlace.");
            openExternalVideo(uriVideoHttps);
        }
    }

    static /* synthetic */ boolean access$0(MainActivity mainActivity) {
        return mainActivity.importBusy();
    }

    private boolean importBusy() {
        if (this.importer == null || !this.importer.isRunning()) {
            return false;
        }
        message("Espera a que termine la importación o pulsa Cancelar.");
        return true;
    }

    static /* synthetic */ void access$1(MainActivity mainActivity, boolean z) {
        mainActivity.openMusicPicker(z);
    }

    private void openMusicPicker(boolean z) {
        if (importBusy()) {
            return;
        }
        Intent intent = new Intent(z ? "android.intent.action.OPEN_DOCUMENT_TREE" : "android.intent.action.OPEN_DOCUMENT");
        intent.addFlags(65);
        if (z) {
            intent.addFlags(128);
        } else {
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("audio/*");
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            message("Mantén pulsada una canción y marca las demás, o usa Seleccionar todo en el menú del selector.");
        }
        try {
            startActivityForResult(intent, z ? FOLDER : AUDIO);
        } catch (Exception e) {
            message("No se encuentra un selector compatible. Prueba la otra opción para añadir música.");
        }
    }

    static /* synthetic */ void access$5(MainActivity mainActivity) {
        mainActivity.deliverImport();
    }

    private void deliverImport() {
        runOnUiThread(new MainActivity$$ExternalSyntheticLambda10(this));
    }

    /* JADX INFO: renamed from: lambda$10$com-brisa-local-MainActivity, reason: not valid java name */
    /* synthetic */ void m2lambda$10$combrisalocalMainActivity() {
        JSONObject jSONObjectPending;
        if (!this.visible || !this.pageReady || this.web == null || this.importer == null || (jSONObjectPending = this.importer.pending()) == null || jSONObjectPending.optString("batchId").equals(this.deliveredBatch)) {
            return;
        }
        this.deliveredBatch = jSONObjectPending.optString("batchId");
        this.web.evaluateJavascript("window.BrisaPlatform&&window.BrisaPlatform.imported(" + jSONObjectPending.toString().replace("\u2028", "\\u2028").replace("\u2029", "\\u2029") + ");", null);
    }

    final class LocalClient extends WebViewClient {
        LocalClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url = webResourceRequest.getUrl();
            if ("https".equals(url.getScheme()) && "appassets.androidplatform.net".equals(url.getHost())) {
                return false;
            }
            if (!"https".equals(url.getScheme())) {
                return true;
            }
            try {
                MainActivity.this.startActivity(new Intent("android.intent.action.VIEW", url));
                return true;
            } catch (Exception e) {
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (PlaybackService.instance != null) {
                PlaybackService.instance.publish(false);
            }
        }

        @Override public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            Uri url = request.getUrl();
            if (!ORIGIN.equals(url.getScheme() + "://" + url.getHost()) || url.getPort() != -1) return empty(403);
            try {
                String path = url.getPath();
                Map<String,String> headers = new HashMap<>();
                headers.put("Cache-Control", "no-cache"); headers.put("X-Content-Type-Options", "nosniff");
                if (path.startsWith("/assets/")) {
                    String name = path.substring(8);
                    if (name.contains("..") || name.startsWith("/") || name.contains("\\")) return empty(403);
                    String mime = name.endsWith(".js") ? "text/javascript" : name.endsWith(".css") ? "text/css" : name.endsWith(".html") ? "text/html" : name.endsWith(".svg") ? "image/svg+xml" : name.endsWith(".png") ? "image/png" : "application/octet-stream";
                    headers.put("Content-Security-Policy", "default-src 'self' data: blob:; script-src 'self' blob: 'wasm-unsafe-eval'; worker-src 'self' blob:; style-src 'self' 'unsafe-inline'; img-src 'self' data: blob:; connect-src 'self' https: blob:; object-src 'none'; base-uri 'none'; frame-src 'none'");
                    return new WebResourceResponse(mime, "UTF-8", 200, "OK", headers, getAssets().open(name));
                }
                if (!path.startsWith("/audio/")) return empty(404);
                Uri content = Library.resolve(MainActivity.this, path.substring(7));
                if (content == null) return empty(404);
                InputStream stream = getContentResolver().openInputStream(content);
                if (stream == null) return empty(404);
                String mime = getContentResolver().getType(content);
                if (mime == null) mime = "application/octet-stream";
                String range = null;
                for (Map.Entry<String,String> header : request.getRequestHeaders().entrySet()) if (header.getKey().equalsIgnoreCase("Range")) range = header.getValue();
                if (range == null) return new WebResourceResponse(mime, "UTF-8", 200, "OK", headers, stream);
                Matcher matcher = Pattern.compile("bytes=(\\d+)-(\\d+)").matcher(range);
                if (!matcher.matches()) { stream.close(); return empty(416); }
                long start = Long.parseLong(matcher.group(1)), end = Long.parseLong(matcher.group(2));
                if (end < start || end - start > 2097152) { stream.close(); return empty(416); }
                long left = start;
                while (left > 0) { long skipped = stream.skip(left); if (skipped == 0) { if (stream.read() < 0) break; skipped = 1; } left -= skipped; }
                headers.put("Content-Range", "bytes " + start + "-" + end + "/*");
                return new WebResourceResponse(mime, "UTF-8", 206, "Partial Content", headers, new Limited(stream, end - start + 1));
            } catch (Exception error) { return empty(404); }
        }

        private WebResourceResponse empty(int i) {
            return new WebResourceResponse("text/plain", "UTF-8", i, "Not available", new HashMap(), new ByteArrayInputStream(new byte[0]));
        }
    }

    static final class Limited extends FilterInputStream {
        long left;

        Limited(InputStream inputStream, long j) {
            super(inputStream);
            this.left = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.left <= 0) {
                return -1;
            }
            int i = super.read();
            if (i >= 0) {
                this.left--;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (this.left <= 0) {
                return -1;
            }
            int i3 = super.read(bArr, i, (int) Math.min(this.left, i2));
            if (i3 > 0) {
                this.left -= (long) i3;
            }
            return i3;
        }
    }
}
