package com.brisa.local;

import androidx.media3.common.*;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.DataReader;
import androidx.media3.extractor.*;
import androidx.media3.muxer.BufferInfo;
import androidx.media3.muxer.Mp4Muxer;
import java.io.*;
import java.nio.ByteBuffer;
import java.util.*;
import java.util.function.BooleanSupplier;

/** Copies compressed samples. No decoder, encoder or full-file byte array is used. */
final class LocalMuxer {
    private static final int MAX_SAMPLE = 16 * 1024 * 1024;
    static final class Sample {
        final int track, flags; final long time; final byte[] data;
        Sample(int track, int flags, long time, byte[] data) { this.track=track; this.flags=flags; this.time=time; this.data=data; }
    }
    static final class Input implements Closeable, ExtractorOutput {
        final RandomAccessFile file;
        final Extractor extractor;
        final Mp4Muxer muxer;
        final int wanted;
        final ArrayDeque<Sample> samples = new ArrayDeque<>();
        DefaultExtractorInput input;
        final PositionHolder seek = new PositionHolder();
        boolean ended;
        Input(File path, Mp4Muxer muxer, int wanted) throws Exception {
            this.file = new RandomAccessFile(path, "r"); this.muxer = muxer; this.wanted = wanted;
            reset(0);
            Extractor chosen = null;
            for (Extractor candidate : new DefaultExtractorsFactory().createExtractors()) {
                reset(0);
                try { if (candidate.sniff(input)) { chosen = candidate; break; } } catch (EOFException ignored) { }
                candidate.release();
            }
            if (chosen == null) { file.close(); throw new IOException("No se reconoce el contenedor del vídeo o del audio."); }
            this.extractor = chosen; reset(0); extractor.init(this);
        }
        void reset(long position) throws IOException {
            file.seek(position);
            input = new DefaultExtractorInput((buffer, offset, length) -> file.read(buffer, offset, length), position, file.length());
        }
        Sample peek(BooleanSupplier cancelled) throws Exception {
            while (samples.isEmpty() && !ended) {
                if (cancelled.getAsBoolean()) throw new InterruptedIOException("Descarga cancelada.");
                int result = extractor.read(input, seek);
                if (result == Extractor.RESULT_SEEK) reset(seek.position);
                if (result == Extractor.RESULT_END_OF_INPUT) ended = true;
            }
            return samples.peek();
        }
        @Override public TrackOutput track(int id, int type) {
            if (type != C.TRACK_TYPE_AUDIO && type != C.TRACK_TYPE_VIDEO || wanted != C.TRACK_TYPE_UNKNOWN && wanted != type) return new DiscardingTrackOutput();
            return new TrackOutput() {
                final ByteArrayOutputStream pending = new ByteArrayOutputStream();
                final java.util.List<int[]> supplemental = new java.util.ArrayList<>();
                int track = -1;
                @Override public void format(Format format) {
                    if (track >= 0) return;
                    try { track = muxer.addTrack(format); } catch (Exception e) { throw new IllegalStateException("No se puede unir este formato sin recodificar.", e); }
                }
                private void capacity(int extra) throws IOException { if (extra < 0 || pending.size() + extra > MAX_SAMPLE) throw new IOException("Una muestra del vídeo supera el límite de memoria seguro."); }
                private void append(byte[] bytes, int offset, int length, int part) throws IOException {
                    capacity(length); int start = pending.size(); pending.write(bytes, offset, length);
                    if (part != TrackOutput.SAMPLE_DATA_PART_MAIN) supplemental.add(new int[]{start, start + length});
                }
                @Override public int sampleData(DataReader reader, int length, boolean allowEnd, int part) throws IOException {
                    byte[] buffer = new byte[Math.min(32768, length)]; int read = reader.read(buffer, 0, buffer.length);
                    if (read == -1) { if (allowEnd) return -1; throw new EOFException(); }
                    append(buffer, 0, read, part); return read;
                }
                @Override public void sampleData(ParsableByteArray data, int length, int part) {
                    try { byte[] buffer = new byte[length]; data.readBytes(buffer, 0, length); append(buffer, 0, length, part); }
                    catch (IOException e) { throw new IllegalStateException(e); }
                }
                @Override public void sampleMetadata(long time, int flags, int size, int offset, CryptoData crypto) {
                    if (crypto != null || (flags & C.BUFFER_FLAG_ENCRYPTED) != 0) throw new IllegalStateException("Este vídeo está protegido y no se puede descargar aquí.");
                    byte[] bytes = pending.toByteArray();
                    int start = bytes.length - offset - size;
                    if (start < 0 || track < 0 || samples.size() >= 64) throw new IllegalStateException("El archivo contiene muestras no válidas.");
                    ByteArrayOutputStream payload = new ByteArrayOutputStream(size);
                    int cursor = start, end = start + size;
                    for (int[] part : supplemental) {
                        int from = Math.max(start, part[0]), to = Math.min(end, part[1]);
                        if (from >= to) continue;
                        if (from > cursor) payload.write(bytes, cursor, from - cursor);
                        cursor = Math.max(cursor, to);
                    }
                    if (cursor < end) payload.write(bytes, cursor, end - cursor);
                    samples.add(new Sample(track, flags & ~C.BUFFER_FLAG_HAS_SUPPLEMENTAL_DATA, time, payload.toByteArray()));
                    int consumed = bytes.length - offset;
                    pending.reset(); if (offset > 0) pending.write(bytes, consumed, offset);
                    java.util.List<int[]> tailParts = new java.util.ArrayList<>();
                    for (int[] part : supplemental) if (part[1] > consumed) tailParts.add(new int[]{Math.max(0, part[0] - consumed), part[1] - consumed});
                    supplemental.clear(); supplemental.addAll(tailParts);
                }
            };
        }
        @Override public void endTracks() { }
        @Override public void seekMap(SeekMap map) { }
        @Override public void close() throws IOException { extractor.release(); file.close(); }
    }
    static void merge(File video, File audio, File target, BooleanSupplier cancelled) throws Exception {
        try (FileOutputStream out = new FileOutputStream(target)) {
            Mp4Muxer muxer = new Mp4Muxer.Builder(out).setSampleCopyingEnabled(false).setSampleBatchingEnabled(false).build();
            try (Input v = new Input(video, muxer, audio == null ? C.TRACK_TYPE_UNKNOWN : C.TRACK_TYPE_VIDEO);
                 Input a = audio == null ? null : new Input(audio, muxer, C.TRACK_TYPE_AUDIO)) {
                long count = 0;
                while (true) {
                    Sample vs = v.peek(cancelled), as = a == null ? null : a.peek(cancelled);
                    if (vs == null && as == null) break;
                    Input source = as == null || vs != null && vs.time <= as.time ? v : a;
                    Sample s = source.samples.remove();
                    muxer.writeSampleData(s.track, ByteBuffer.wrap(s.data), new BufferInfo(s.time, s.data.length, s.flags));
                    count++;
                }
                if (count == 0) throw new IOException("No se encontraron pistas de audio o vídeo.");
            } finally { muxer.close(); }
        }
    }
}
