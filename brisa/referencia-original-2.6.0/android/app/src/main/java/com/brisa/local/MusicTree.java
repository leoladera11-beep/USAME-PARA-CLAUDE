package com.brisa.local;

import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class MusicTree {
    static final int MAX_AUDIO = 5000;
    static final int MAX_DIRECTORIES = 5000;
    static final int MAX_ENTRIES = 100000;

    interface Rows extends AutoCloseable {
        @Override // java.lang.AutoCloseable
        void close();

        Entry next() throws Exception;
    }

    interface Sink {
        void audio(Entry entry) throws Exception;

        boolean cancelled();
    }

    interface Source {
        Rows children(String str) throws Exception;
    }

    MusicTree() {
    }

    static final class Entry {
        final boolean directory;
        final String id;
        final String mime;
        final String name;

        Entry(String str, String str2, String str3, boolean z) {
            this.id = str;
            this.name = str2;
            this.mime = str3;
            this.directory = z;
        }
    }

    static final class Result {
        int audio;
        int failed;
        boolean limited;
        int scanned;

        Result() {
        }
    }

    static boolean isAudio(String str, String str2) {
        if (str2 == null || !str2.startsWith("audio/")) {
            return str != null && str.toLowerCase(Locale.ROOT).matches(".*\\.(mp3|m4a|aac|wav|wave|ogg|oga|opus|flac|webm|amr|3gp|aif|aiff)$");
        }
        return true;
    }

    static Result walk(String root, Source source, Sink sink) throws Exception {
        Result result = new Result();
        ArrayDeque<String> queue = new ArrayDeque<>();
        HashSet<String> visited = new HashSet<>(); queue.add(root);
        while (!queue.isEmpty() && !sink.cancelled()) {
            String current = queue.removeFirst();
            if (!visited.add(current)) continue;
            if (visited.size() > MAX_DIRECTORIES) { result.limited = true; break; }
            try (Rows rows = source.children(current)) {
                Entry entry;
                while (!sink.cancelled() && (entry = rows.next()) != null) {
                    if (++result.scanned > MAX_ENTRIES) { result.limited = true; return result; }
                    if (entry.directory) {
                        if (queue.size() + visited.size() >= MAX_DIRECTORIES) result.limited = true;
                        else if (!visited.contains(entry.id)) queue.addLast(entry.id);
                    } else if (isAudio(entry.name, entry.mime)) {
                        if (result.audio >= MAX_AUDIO) { result.limited = true; return result; }
                        sink.audio(entry); result.audio++;
                    }
                }
            } catch (InterruptedException e) { throw e; }
            catch (Exception e) { result.failed++; }
        }
        return result;
    }
}
