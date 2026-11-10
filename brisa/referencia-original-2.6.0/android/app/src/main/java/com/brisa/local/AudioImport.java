package com.brisa.local;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class AudioImport {
    private CountDownLatch ack;
    private final Context context;
    private JSONObject pending;
    private final Runnable ready;
    private Thread worker;
    private final String id = UUID.randomUUID().toString();
    private volatile boolean cancelled = false;
    private volatile boolean running = true;
    private JSONArray batch = new JSONArray();
    private int found = 0;
    private int failed = 0;

    static /* synthetic */ boolean access$0(AudioImport audioImport) {
        return audioImport.cancelled;
    }

    AudioImport(Context context, Runnable runnable) {
        this.context = context.getApplicationContext();
        this.ready = runnable;
    }

    boolean isRunning() {
        return this.running;
    }

    synchronized JSONObject pending() {
        return this.pending;
    }

    synchronized void acknowledge(String str) {
        if (this.pending != null && this.pending.optString("batchId").equals(str) && this.ack != null) {
            this.ack.countDown();
        }
    }

    synchronized void cancel() {
        this.cancelled = true;
        if (this.ack != null) {
            this.ack.countDown();
        }
        if (this.worker != null) {
            this.worker.interrupt();
        }
    }

    /* JADX INFO: renamed from: lambda$0$com-brisa-local-AudioImport, reason: not valid java name */
    /* synthetic */ void m0lambda$0$combrisalocalAudioImport(List list, Uri uri) {
        run(list, uri);
    }

    void start(List<Uri> list, Uri uri) {
        this.worker = new Thread(new AudioImport$$ExternalSyntheticLambda1(this, list, uri), "Brisa-import");
        this.worker.start();
    }

    static /* synthetic */ void access$1(AudioImport audioImport, Uri uri) throws Exception {
        audioImport.add(uri);
    }

    private void add(Uri uri) throws Exception {
        if (this.cancelled) {
            throw new InterruptedException();
        }
        this.found++;
        try {
            this.batch.put(Library.describe(this.context, uri));
        } catch (Exception e) {
            this.failed++;
        }
        if (this.batch.length() >= 20) {
            flush(false, false, "");
        }
    }

    private void flush(boolean z, boolean z2, String str) throws Exception {
        if (this.cancelled) {
            throw new InterruptedException();
        }
        JSONObject jSONObject = new JSONObject();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        String string = UUID.randomUUID().toString();
        jSONObject.put("importId", this.id);
        jSONObject.put("batchId", string);
        jSONObject.put("items", this.batch);
        jSONObject.put("found", this.found);
        jSONObject.put("failed", this.failed);
        jSONObject.put("done", z);
        jSONObject.put("limited", z2);
        jSONObject.put("error", str);
        synchronized (this) {
            this.pending = jSONObject;
            this.ack = countDownLatch;
        }
        this.ready.run();
        countDownLatch.await();
        synchronized (this) {
            this.pending = null;
            this.ack = null;
        }
        this.batch = new JSONArray();
        if (this.cancelled) {
            throw new InterruptedException();
        }
    }

    private void run(List<Uri> list, Uri uri) {
        boolean limited = false;
        String error = "";
        try {
            flush(false, false, "");
            if (uri == null) {
                java.util.HashSet<String> seen = new java.util.HashSet<>();
                for (Uri item : list) {
                    if (cancelled) break;
                    if (!seen.add(item.toString())) continue;
                    if (found >= 5000) { limited = true; break; }
                    try { context.getContentResolver().takePersistableUriPermission(item, 1); add(item); }
                    catch (InterruptedException e) { throw e; }
                    catch (Exception e) { found++; failed++; }
                }
            } else {
                MusicTree.Result result = MusicTree.walk(DocumentsContract.getTreeDocumentId(uri), new AudioImport$$ExternalSyntheticLambda0(this, uri), new AnonymousClass2(uri));
                failed += result.failed; limited = result.limited;
            }
        } catch (InterruptedException e) { cancelled = true; }
        catch (Exception e) { error = "No se pudo terminar de leer la selección. Puedes volver a elegirla."; }
        try { if (!cancelled) flush(true, limited, error); } catch (Exception ignored) { }
        finally { running = false; synchronized (this) { pending = null; ack = null; } }
    }

    /* JADX INFO: renamed from: com.brisa.local.AudioImport$1, reason: invalid class name */
    class AnonymousClass1 implements MusicTree.Rows {
        private final /* synthetic */ Cursor val$cursor;

        AnonymousClass1(Cursor cursor) {
            this.val$cursor = cursor;
        }

        @Override // com.brisa.local.MusicTree.Rows, java.lang.AutoCloseable
        public void close() {
            this.val$cursor.close();
        }

        @Override // com.brisa.local.MusicTree.Rows
        public MusicTree.Entry next() {
            if (!this.val$cursor.moveToNext()) {
                return null;
            }
            String string = this.val$cursor.getString(2);
            return new MusicTree.Entry(this.val$cursor.getString(0), this.val$cursor.getString(1), string, "vnd.android.document/directory".equals(string));
        }
    }

    /* JADX INFO: renamed from: com.brisa.local.AudioImport$2, reason: invalid class name */
    class AnonymousClass2 implements MusicTree.Sink {
        private final /* synthetic */ Uri val$tree;

        AnonymousClass2(Uri uri) {
            this.val$tree = uri;
        }

        @Override // com.brisa.local.MusicTree.Sink
        public void audio(MusicTree.Entry entry) throws Exception {
            AudioImport.access$1(AudioImport.this, DocumentsContract.buildDocumentUriUsingTree(this.val$tree, entry.id));
        }

        @Override // com.brisa.local.MusicTree.Sink
        public boolean cancelled() {
            return AudioImport.access$0(AudioImport.this);
        }
    }

    /* JADX INFO: renamed from: lambda$1$com-brisa-local-AudioImport, reason: not valid java name */
    /* synthetic */ MusicTree.Rows m1lambda$1$combrisalocalAudioImport(Uri uri, String str) throws Exception {
        Cursor cursorQuery = this.context.getContentResolver().query(DocumentsContract.buildChildDocumentsUriUsingTree(uri, str), new String[]{"document_id", "_display_name", "mime_type"}, null, null, null);
        if (cursorQuery != null) {
            return new AnonymousClass1(cursorQuery);
        }
        throw new IllegalStateException("No se puede leer la carpeta");
    }
}
