package com.brisa.local;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.BooleanSupplier;
import java.util.function.LongConsumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/** Transfiere pistas HTTP a partes independientes. El servicio decide qué pistas hacen falta. */
final class RangeTransfer {
    static final long MAX_AGE = TimeUnit.HOURS.toMillis(6);
    private static final long PARALLEL_MIN = 3L * 1024 * 1024;
    private static final Pattern CONTENT_RANGE = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)");

    interface Response extends Closeable {
        int status();
        String header(String name);
        String resource();
        long length();
        InputStream stream() throws IOException;
    }

    interface Transport {
        Response get(String url, String range, String ifRange) throws IOException;
        void cancel();
    }

    static final class Track {
        final String url, key;
        final File output;
        final boolean split;
        Track(String url, String key, File output, boolean split) {
            this.url = url;
            this.key = key;
            this.output = output;
            this.split = split;
        }
    }

    private final File cache;
    private final Transport transport;
    private final BooleanSupplier cancelled;
    private final LongConsumer progress;
    private final Semaphore connections = new Semaphore(4, true);

    RangeTransfer(File cache, Transport transport, BooleanSupplier cancelled, LongConsumer progress) {
        this.cache = cache;
        this.transport = transport;
        this.cancelled = cancelled;
        this.progress = progress;
    }

    void download(List<Track> tracks) throws IOException {
        Files.createDirectories(cache.toPath());
        long now = System.currentTimeMillis();
        File[] old = cache.listFiles(File::isDirectory);
        if (old != null) for (File dir : old) {
            if (now - dir.lastModified() > MAX_AGE || dir.lastModified() > now) clear(dir);
        }
        List<Callable<Void>> jobs = new ArrayList<>();
        for (Track track : tracks) jobs.add(() -> { downloadTrack(track); return null; });
        run(jobs, true);
        for (Track track : tracks) clear(directory(track));
    }

    private File directory(Track track) {
        return new File(cache, digest(track.key + "\n" + track.output.getName()));
    }

    private void downloadTrack(Track track) throws IOException {
        File dir = directory(track);
        Files.createDirectories(dir.toPath());
        try {
            Version saved = Version.read(dir);
            if (saved != null && resumable(track, saved) && saved.parts == 1 && part(dir, 0).length() > 0) {
                try {
                    segment(track, dir, saved, 0, 0, saved.length - 1, true);
                    assemble(track, dir, saved);
                    return;
                } catch (Changed changed) {
                    clear(dir);
                    Files.createDirectories(dir.toPath());
                }
            }

            if (track.split) {
                Version found = probe(track, dir);
                if (found == null) return; // El 200 del sondeo ya se usó como descarga completa.
                if (found.parts == 3) {
                    checkSpace(dir, found.length);
                    try {
                        List<Callable<Void>> jobs = new ArrayList<>();
                        for (int i = 0; i < found.parts; i++) {
                            final int index = i;
                            jobs.add(() -> {
                                long first = found.length / found.parts * index;
                                long end = index == found.parts - 1 ? found.length : found.length / found.parts * (index + 1);
                                segment(track, dir, found, index, first, end - 1, saved != null && found.same(saved));
                                return null;
                            });
                        }
                        run(jobs, false);
                        assemble(track, dir, found);
                        return;
                    } catch (Changed changed) {
                        // El origen cambió o dejó de honrar Range. No se mezclan representaciones.
                    }
                }
            }
            full(track, dir);
        } finally {
            if (dir.isDirectory()) dir.setLastModified(System.currentTimeMillis());
        }
    }

    private Version probe(Track track, File dir) throws IOException {
        return request(track.url, "bytes=0-0", null, response -> {
            if (response.status() == 200) {
                fullResponse(track, dir, response);
                return null;
            }
            if (response.status() == 416) return Version.SINGLE;
            requireMedia(response, 206);
            long[] range = bounds(response);
            if (range == null || range[0] != 0 || range[1] != 0) return Version.SINGLE;
            String tag = tag(response);
            // Las pistas firmadas de YouTube pueden omitir ETag. Solo se admiten en paralelo
            // cuando la URL identifica la pista, su revisión (lmt) y su longitud (clen).
            boolean signed = track.key.startsWith("youtube:") && track.key.endsWith(":" + range[2]);
            if (range[2] < PARALLEL_MIN || (tag == null && !signed)) return Version.SINGLE;
            Version found = new Version(range[2], tag, 3, digest(response.resource()));
            Version saved = Version.read(dir);
            if (!found.same(saved)) reset(dir, found);
            return found;
        });
    }

    private void full(Track track, File dir) throws IOException {
        request(track.url, null, null, response -> {
            requireMedia(response, 200);
            fullResponse(track, dir, response);
            return null;
        });
    }

    private void fullResponse(Track track, File dir, Response response) throws IOException {
        requireMedia(response, 200);
        long length = response.length();
        String tag = tag(response);
        if (length > 0 && track.key.startsWith("youtube:") && !track.key.endsWith(":" + length)) {
            throw new IOException("La pista cambió de tamaño. Vuelve a consultar el enlace.");
        }
        Version version = new Version(length, tag, 1, digest(response.resource()));
        reset(dir, version);
        File partial = part(dir, 0);
        checkSpace(dir, length);
        try {
            copy(response, partial, length, 0);
        } catch (IOException cut) {
            checkCancelled();
            if (!resumable(track, version) || partial.length() == 0 || partial.length() >= length) throw cut;
            segment(track, dir, version, 0, 0, length - 1, false);
        }
        assemble(track, dir, version);
    }

    private void segment(Track track, File dir, Version version, int index, long first, long last,
                         boolean reuse) throws IOException {
        File partial = part(dir, index);
        long count = last - first + 1;
        long offset = partial.length();
        if (offset > count) throw new Changed();
        checkSpace(dir, count - offset);
        if (reuse && offset > 0 && offset < count) progress.accept(offset);
        // Aun con todas las partes presentes, se comprueba la versión antes de volver a usarlas.
        if (offset == count) {
            if (reuse && version.parts == 1) {
                request(track.url, "bytes=0-0", version.tag, response -> {
                    validateRange(response, version, 0, 0);
                    return null;
                });
            }
            if (reuse) progress.accept(offset);
            return;
        }
        for (int attempt = 0; ; attempt++) {
            checkCancelled();
            long position = partial.length();
            try {
                request(track.url, "bytes=" + (first + position) + "-" + last, version.tag, response -> {
                    validateRange(response, version, first + position, last);
                    copy(response, partial, count, position);
                    return null;
                });
                return;
            } catch (Changed mismatch) {
                throw mismatch;
            } catch (IOException cut) {
                checkCancelled();
                if (attempt == 2 || !resumable(track, version) || partial.length() >= count) throw cut;
            }
        }
    }

    private static boolean resumable(Track track, Version version) {
        return version.length > 0 && (version.tag != null ||
                (track.key.startsWith("youtube:") && track.key.endsWith(":" + version.length)));
    }

    private static void validateRange(Response response, Version version, long first, long last) throws IOException {
        if (response.status() == 200 || response.status() == 416) throw new Changed();
        requireMedia(response, 206);
        long[] range = bounds(response);
        if (range == null || range[0] != first || range[1] != last || range[2] != version.length ||
                !version.resource.equals(digest(response.resource())) ||
                (version.tag != null && !version.tag.equals(tag(response))) ||
                (response.length() >= 0 && response.length() != last - first + 1)) throw new Changed();
    }

    private static void requireMedia(Response response, int status) throws IOException {
        if (response.status() != status) throw new IOException("La descarga falló (HTTP " + response.status() + ").");
        String type = response.header("Content-Type");
        String encoding = response.header("Content-Encoding");
        if ((type != null && (type.contains("text/html") || type.contains("application/json"))) ||
                (encoding != null && !encoding.equalsIgnoreCase("identity"))) {
            throw new IOException("El enlace no devolvió un archivo multimedia válido.");
        }
    }

    private void copy(Response response, File partial, long expected, long offset) throws IOException {
        try (InputStream input = response.stream(); RandomAccessFile output = new RandomAccessFile(partial, "rw")) {
            output.seek(offset);
            byte[] buffer = new byte[65536];
            long done = offset;
            for (int count; (count = input.read(buffer)) != -1; ) {
                checkCancelled();
                if (expected >= 0 && count > expected - done) {
                    output.setLength(offset);
                    throw new Changed();
                }
                output.write(buffer, 0, count);
                done += count;
                progress.accept(count);
            }
            if (done == 0 || (expected >= 0 && done != expected)) throw new EOFException("La conexión se interrumpió antes de completar el archivo.");
        }
    }

    private void assemble(Track track, File dir, Version version) throws IOException {
        checkCancelled();
        if (version.parts == 1) {
            Files.copy(part(dir, 0).toPath(), track.output.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return;
        }
        checkSpace(dir, version.length);
        try (OutputStream output = new FileOutputStream(track.output)) {
            byte[] buffer = new byte[65536];
            long done = 0;
            for (int i = 0; i < version.parts; i++) {
                try (InputStream input = new FileInputStream(part(dir, i))) {
                    for (int count; (count = input.read(buffer)) != -1; ) {
                        checkCancelled();
                        output.write(buffer, 0, count);
                        done += count;
                    }
                }
            }
            if (done != version.length) throw new IOException("La descarga quedó incompleta.");
        }
    }

    private static void checkSpace(File dir, long remaining) throws IOException {
        if (remaining > 0 && remaining > Math.max(0, dir.getUsableSpace() - 16L * 1024 * 1024) / 2) {
            throw new IOException("Falta espacio libre para descargar y unir el vídeo.");
        }
    }

    private static File part(File dir, int index) {
        return new File(dir, index + ".part");
    }

    private static void reset(File dir, Version version) throws IOException {
        clear(dir);
        Files.createDirectories(dir.toPath());
        if (version.length > 0) version.write(dir);
    }

    private static void clear(File dir) throws IOException {
        File[] files = dir.listFiles();
        if (files != null) for (File file : files) Files.deleteIfExists(file.toPath());
        Files.deleteIfExists(dir.toPath());
    }

    private static long[] bounds(Response response) {
        String value = response.header("Content-Range");
        if (value == null) return null;
        Matcher match = CONTENT_RANGE.matcher(value);
        if (!match.matches()) return null;
        try {
            long first = Long.parseLong(match.group(1)), last = Long.parseLong(match.group(2)), total = Long.parseLong(match.group(3));
            return first <= last && last < total ? new long[]{first, last, total} : null;
        } catch (NumberFormatException invalid) { return null; }
    }

    private static String tag(Response response) {
        String value = response.header("ETag");
        return value != null && value.length() >= 2 && value.startsWith("\"") && value.endsWith("\"") ? value : null;
    }

    private interface Reader<T> { T read(Response response) throws IOException; }

    private <T> T request(String url, String range, String tag, Reader<T> reader) throws IOException {
        try {
            connections.acquire();
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new IOException("Descarga cancelada.", interrupted);
        }
        try {
            checkCancelled();
            try (Response response = transport.get(url, range, tag)) { return reader.read(response); }
        } finally {
            connections.release();
        }
    }

    private void run(List<Callable<Void>> jobs, boolean top) throws IOException {
        if (jobs.size() == 1) {
            try { jobs.get(0).call(); return; }
            catch (IOException failure) { throw failure; }
            catch (Exception failure) { throw new IOException(failure); }
        }
        ExecutorService workers = Executors.newFixedThreadPool(jobs.size());
        CompletionService<Void> completed = new ExecutorCompletionService<>(workers);
        try {
            for (Callable<Void> job : jobs) completed.submit(job);
            for (int i = 0; i < jobs.size(); i++) completed.take().get();
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new IOException("Descarga cancelada.", interrupted);
        } catch (ExecutionException failure) {
            Throwable cause = failure.getCause();
            if (cause instanceof IOException) throw (IOException) cause;
            throw new IOException(cause);
        } finally {
            if (top) transport.cancel();
            workers.shutdownNow();
            // No se borra ni se reutiliza un parcial hasta que todos los escritores lo cierren.
            boolean interrupted = Thread.interrupted();
            try {
                while (!workers.isTerminated()) {
                    try { workers.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS); }
                    catch (InterruptedException retry) { interrupted = true; }
                }
            } finally {
                if (interrupted) Thread.currentThread().interrupt();
            }
        }
    }

    private void checkCancelled() throws IOException {
        if (cancelled.getAsBoolean() || Thread.currentThread().isInterrupted()) throw new IOException("Descarga cancelada.");
    }

    private static String digest(String value) {
        try {
            byte[] bytes = MessageDigest.getInstance("SHA-256").digest(value.getBytes(StandardCharsets.UTF_8));
            StringBuilder hex = new StringBuilder();
            for (byte b : bytes) hex.append(Character.forDigit((b & 255) >> 4, 16)).append(Character.forDigit(b & 15, 16));
            return hex.toString();
        } catch (java.security.NoSuchAlgorithmException impossible) { throw new AssertionError(impossible); }
    }

    private static final class Changed extends IOException {
        Changed() { super("El origen cambió o no devolvió el rango solicitado."); }
    }

    private static final class Version {
        static final Version SINGLE = new Version(-1, null, 1, "");
        final long length;
        final String tag, resource;
        final int parts;

        Version(long length, String tag, int parts, String resource) {
            this.length = length;
            this.tag = tag;
            this.parts = parts;
            this.resource = resource;
        }

        boolean same(Version other) {
            return other != null && length == other.length && parts == other.parts && Objects.equals(tag, other.tag) && resource.equals(other.resource);
        }

        static Version read(File dir) {
            try (DataInputStream in = new DataInputStream(new FileInputStream(new File(dir, "version")))) {
                long length = in.readLong();
                int parts = in.readInt();
                String tag = in.readUTF(), resource = in.readUTF();
                return length > 0 && (parts == 1 || parts == 3) ? new Version(length, tag.isEmpty() ? null : tag, parts, resource) : null;
            } catch (IOException missing) { return null; }
        }

        void write(File dir) throws IOException {
            try (DataOutputStream out = new DataOutputStream(new FileOutputStream(new File(dir, "version")))) {
                out.writeLong(length);
                out.writeInt(parts);
                out.writeUTF(tag == null ? "" : tag);
                out.writeUTF(resource);
            }
        }
    }
}
