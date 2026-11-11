package com.brisa.local;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.Locale;
import java.util.function.BooleanSupplier;

/**
 * Salida de música del descargador.
 *
 * Antes toda la música se recodificaba a MP3 de 320 kbps. YouTube entrega Opus (~160 kbps) o AAC
 * (~128 kbps), así que esa conversión no añadía calidad: descodificaba y volvía a comprimir con
 * pérdida, y el resultado ocupaba más y sonaba distinto del vídeo. El modo «original» guarda la
 * misma pista de audio que lleva el vídeo, sin tocar una sola muestra, dentro de un M4A.
 * El modo MP3 se conserva para reproductores antiguos.
 */
public final class AudioExport {
    private AudioExport() { }

    public static boolean original(Context c) {
        return c == null || !"mp3".equals(c.getSharedPreferences("brisa-tuning", 0).getString("audioFormat", "original"));
    }

    public static void setFormat(Context c, String value) {
        c.getSharedPreferences("brisa-tuning", 0).edit().putString("audioFormat", "mp3".equals(value) ? "mp3" : "original").apply();
    }

    /** Elección pura, probada en JVM: los archivos MP4/M4A empiezan con una caja «ftyp». */
    public static String extensionFor(byte[] head, int length) {
        return length >= 8 && head[4] == 'f' && head[5] == 't' && head[6] == 'y' && head[7] == 'p' ? "m4a" : "mp3";
    }

    /** Extensión real del archivo de música terminado. Sustituye a la constante «mp3». */
    public static String ext(File file) {
        byte[] head = new byte[12];
        try (InputStream in = new FileInputStream(file)) {
            return extensionFor(head, in.read(head));
        } catch (Exception unreadable) {
            return "mp3";
        }
    }

    /** Tipo MIME según el nombre final. Sustituye a la constante «audio/mpeg». */
    public static String mime(String name) {
        String lower = name == null ? "" : name.toLowerCase(Locale.ROOT);
        return lower.endsWith(".m4a") || lower.endsWith(".mp4") ? "audio/mp4" : lower.endsWith(".webm") ? "audio/webm" : lower.endsWith(".opus") || lower.endsWith(".ogg") ? "audio/ogg" : "audio/mpeg";
    }

    private static boolean audioOnly(File file) {
        MediaExtractor extractor = new MediaExtractor();
        try {
            extractor.setDataSource(file.getPath());
            int audio = 0, other = 0;
            for (int i = 0; i < extractor.getTrackCount(); i++) {
                String type = extractor.getTrackFormat(i).getString(MediaFormat.KEY_MIME);
                if (type != null && type.startsWith("audio/")) audio++; else other++;
            }
            return audio == 1 && other == 0;
        } catch (Exception unreadable) {
            return false;
        } finally {
            extractor.release();
        }
    }

    private static void invoke(String type, Class<?>[] signature, Object... args) throws Exception {
        try {
            Class.forName(type).getMethod(type.equals("F1.i") ? "s" : "a", signature).invoke(null, args);
        } catch (InvocationTargetException wrapped) {
            Throwable cause = wrapped.getCause();
            if (cause instanceof Exception) throw (Exception) cause;
            if (cause instanceof Error) throw (Error) cause;
            throw wrapped;
        }
    }

    /**
     * Sustituye a Mp3Encoder.a() con la misma firma. En modo original copia la pista de audio con
     * el mismo unidor sin recompresión que ya usa el vídeo; si la fuente no lo permite (por ejemplo,
     * un archivo que mezcla vídeo y audio), recurre al MP3 de siempre para no dejar al usuario sin música.
     */
    public static void a(File source, File target, int bitrate, String title, BooleanSupplier cancelled) throws Exception {
        Context context = null;
        try {
            context = (Context) Class.forName("com.brisa.local.DownloadService").getField("l").get(null);
        } catch (Exception ignored) { }
        Class<?> callback = Class.forName("com.brisa.local.p");
        if (original(context)) {
            try {
                invoke("F1.i", new Class<?>[]{File.class, File.class, File.class, callback}, source, null, target, cancelled);
                if (audioOnly(target)) return;
            } catch (Exception failure) {
                if (cancelled.getAsBoolean()) throw failure;
            }
            target.delete();
        }
        invoke("com.brisa.local.Mp3Encoder", new Class<?>[]{File.class, File.class, int.class, String.class, callback}, source, target, bitrate, title, cancelled);
    }
}
