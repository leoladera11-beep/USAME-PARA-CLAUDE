package com.brisa.local;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/** Ejecuta la lógica de producción contra el servidor local de tests/downloads/benchmark.py. */
public final class RangeTransferDemo {
    public static void main(String[] args) throws IOException {
        File root = new File(args[0]);
        AtomicLong bytes = new AtomicLong();
        long cancelAfter = Long.parseLong(args[1]);
        Http transport = new Http();
        List<RangeTransfer.Track> tracks = new ArrayList<>();
        for (int i = 2; i < args.length; i += 2) {
            File file = new File(root, args[i]);
            String url = args[i + 1];
            tracks.add(new RangeTransfer.Track(url, url, file, args[i].equals("video")));
        }
        new RangeTransfer(new File(root, "parts"), transport, () -> transport.stopped, count -> {
            if (bytes.addAndGet(count) >= cancelAfter && cancelAfter > 0) transport.cancel();
        }).download(tracks);
    }

    private static final class Http implements RangeTransfer.Transport {
        private final Set<HttpURLConnection> calls = ConcurrentHashMap.newKeySet();
        private volatile boolean stopped;

        public RangeTransfer.Response get(String url, String range, String tag) throws IOException {
            HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
            connection.setConnectTimeout(3000);
            connection.setReadTimeout(3000);
            connection.setRequestProperty("Accept-Encoding", "identity");
            if (range != null) connection.setRequestProperty("Range", range);
            if (tag != null) connection.setRequestProperty("If-Range", tag);
            calls.add(connection);
            try {
                if (stopped) throw new InterruptedIOException();
                int status = connection.getResponseCode();
                return new RangeTransfer.Response() {
                    public int status() { return status; }
                    public String header(String name) { return connection.getHeaderField(name); }
                    public String resource() { return connection.getURL().toString(); }
                    public long length() { return connection.getContentLengthLong(); }
                    public InputStream stream() throws IOException { return connection.getInputStream(); }
                    public void close() {
                        connection.disconnect();
                        calls.remove(connection);
                    }
                };
            } catch (IOException failure) {
                connection.disconnect();
                calls.remove(connection);
                throw failure;
            }
        }

        public void cancel() {
            stopped = true;
            for (HttpURLConnection call : calls) call.disconnect();
        }
    }
}
