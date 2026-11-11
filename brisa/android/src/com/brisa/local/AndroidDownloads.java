package com.brisa.local;

import android.os.SystemClock;
import org.json.JSONObject;
import java.io.*;
import java.net.URI;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;

/** Adaptación de la descarga de pistas al servicio recuperado y a su cliente HTTP. */
public final class AndroidDownloads {
    private static final Map<DownloadService, Http> ACTIVE = new ConcurrentHashMap<>();
    private static final long INSPECTION_TTL = 120_000;
    private static String lastLink;
    private static l lastPlan;

    public static synchronized JSONObject inspect(String url) throws Exception {
        long now = System.currentTimeMillis();
        if (!url.equals(lastLink) || lastPlan == null || now < lastPlan.b ||
                now - lastPlan.b >= INSPECTION_TTL || m.a.get(lastPlan.a) != lastPlan) {
            lastPlan = m.b(url);
            lastLink = url;
        }
        JSONObject result = lastPlan.a();
        result.put("audioAvailable", lastPlan.e != null && !lastPlan.h);
        if (!lastPlan.h && lastPlan.e != null) result.put("audioSize", number(lastPlan.e, "clen"));
        return result;
    }

    public static File fetch(DownloadService service, l plan, k format, N.Y options, File video) throws IOException {
        boolean videoWanted = options.b();
        File audio = new File(video.getParentFile(), "audio.part");
        if (!videoWanted && (plan.h || plan.e == null)) {
            throw new IOException("El enlace no ofrece una pista de audio independiente.");
        }
        List<RangeTransfer.Track> tracks = new ArrayList<>(2);
        if (videoWanted) tracks.add(track(format.b, video, true));
        if (!plan.h && (!videoWanted || format.c != null || !"mp4".equals(options.b))) {
            String audioUrl = videoWanted && format.c != null ? format.c : plan.e;
            if (audioUrl != null) tracks.add(track(audioUrl, audio, number(audioUrl, "clen") >= 3L * 1024 * 1024));
        }
        Http http = new Http(() -> service.b);
        ACTIVE.put(service, http);
        try {
            new RangeTransfer(new File(service.getCacheDir(), "brisa-download-parts"), http,
                    () -> service.b, bytes -> progress(service, bytes)).download(tracks);
        } finally {
            http.cancel();
            ACTIVE.remove(service, http);
        }
        return plan.h ? video : audio;
    }

    public static void cancel(DownloadService service) {
        Http http = ACTIVE.get(service);
        if (http != null) http.cancel();
    }

    private static void progress(DownloadService service, long bytes) {
        synchronized (service) {
            service.e += bytes;
            long now = SystemClock.elapsedRealtime();
            if (now - service.g >= 500) {
                service.g = now;
                service.f("downloading", null);
            }
        }
    }

    private static RangeTransfer.Track track(String url, File file, boolean split) {
        String key = sourceKey(url);
        return new RangeTransfer.Track(url, key, file, split);
    }

    private static String sourceKey(String url) {
        URI uri = URI.create(url);
        String host = uri.getHost();
        if (host != null && (host.equals("googlevideo.com") || host.endsWith(".googlevideo.com"))
                && "/videoplayback".equals(uri.getPath())) {
            String id = parameter(uri, "id");
            long format = number(url, "itag"), modified = number(url, "lmt"), length = number(url, "clen");
            if (id.matches("[A-Za-z0-9_.-]{1,150}") && format > 0 && modified > 0 && length > 0) {
                return "youtube:" + id + ":" + format + ":" + modified + ":" + length;
            }
        }
        return url;
    }

    private static long number(String url, String name) {
        try { return Math.max(0, Long.parseLong(parameter(URI.create(url), name))); }
        catch (IllegalArgumentException missing) { return 0; }
    }

    private static String parameter(URI uri, String name) {
        String query = uri.getRawQuery();
        if (query != null) for (String pair : query.split("&")) {
            if (pair.startsWith(name + "=")) return pair.substring(name.length() + 1);
        }
        return "";
    }

    private static final class Http implements RangeTransfer.Transport {
        private final Set<a2.h> calls = ConcurrentHashMap.newKeySet();
        private final java.util.function.BooleanSupplier cancelled;
        private volatile boolean closed;

        Http(java.util.function.BooleanSupplier cancelled) { this.cancelled = cancelled; }

        public RangeTransfer.Response get(String url, String range, String ifRange) throws IOException {
            C2.b request = new C2.b();
            request.s(url);
            request.l("User-Agent", "Mozilla/5.0");
            request.l("Accept-Encoding", "identity");
            if (range != null) request.l("Range", range);
            if (ifRange != null) request.l("If-Range", ifRange);
            a2.h call = new a2.h(W.a, request.b());
            calls.add(call);
            try {
                if (closed || cancelled.getAsBoolean()) throw new InterruptedIOException("Descarga cancelada.");
                W1.v response = call.d();
                String expected = sourceKey(url);
                String resource = sourceKey(response.e.c.toString());
                if (expected.startsWith("youtube:") && !expected.equals(resource)) {
                    response.close();
                    throw new IOException("La redirección cambió la pista de origen.");
                }
                return new RangeTransfer.Response() {
                    public int status() { return response.h; }
                    public String resource() { return resource; }
                    public String header(String name) { return response.j.a(name); }
                    public long length() { return response.k == null ? -1 : response.k.c(); }
                    public InputStream stream() throws IOException {
                        if (response.k == null) throw new IOException("La respuesta no contiene un archivo.");
                        return response.k.q().p();
                    }
                    public void close() {
                        try { response.close(); }
                        finally { calls.remove(call); }
                    }
                };
            } catch (IOException | RuntimeException failure) {
                calls.remove(call);
                throw failure;
            }
        }

        public void cancel() {
            closed = true;
            for (a2.h call : calls) call.c();
        }
    }
}
