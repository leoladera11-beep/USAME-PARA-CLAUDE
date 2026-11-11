package com.brisa.local;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import org.json.JSONArray;
import org.json.JSONObject;
import org.schabi.newpipe.extractor.NewPipe;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.downloader.Downloader;
import org.schabi.newpipe.extractor.downloader.Request;
import org.schabi.newpipe.extractor.downloader.Response;
import org.schabi.newpipe.extractor.stream.*;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.RequestBody;

final class DownloadEngine {
    static final Map<String, Plan> PLANS = new ConcurrentHashMap<>();
    static boolean initialized;
    static final class Choice {
        final String id = UUID.randomUUID().toString();
        String videoUrl, audioUrl, codec, label, extension = "mp4";
        int height, width, fps; long size; boolean compatible;
        JSONObject json() throws Exception {
            return new JSONObject().put("id", id).put("label", label).put("codec", codec).put("fps", fps)
                .put("size", size).put("compatible", compatible).put("recommended", compatible && height <= 1080 && codec.startsWith("H.264"));
        }
    }
    static final class Plan {
        final String id = UUID.randomUUID().toString();
        final long created = System.currentTimeMillis();
        final Map<String, Choice> choices = new LinkedHashMap<>();
        String title, url; long duration;
        boolean direct;
        JSONObject json() throws Exception {
            JSONArray formats = new JSONArray();
            for (Choice c : choices.values()) formats.put(c.json());
            return new JSONObject().put("inspectionId", id).put("title", title).put("duration", duration).put("formats", formats);
        }
    }
    static synchronized void initialize() {
        if (initialized) return;
        NewPipe.init(new Downloader() {
            @Override public Response execute(Request request) throws IOException {
                okhttp3.Request.Builder builder = new okhttp3.Request.Builder().url(request.url()).header("User-Agent", "Mozilla/5.0");
                for (Map.Entry<String, List<String>> h : request.headers().entrySet()) {
                    builder.removeHeader(h.getKey());
                    for (String value : h.getValue()) builder.addHeader(h.getKey(), value);
                }
                byte[] body = request.dataToSend();
                String method = request.httpMethod();
                builder.method(method, body != null ? RequestBody.create(body, null) : method.equals("POST") ? RequestBody.create(new byte[0], null) : null);
                try (okhttp3.Response response = SafeNetwork.CLIENT.newCall(builder.build()).execute()) {
                    if (response.body() == null) throw new IOException("Respuesta vacía de YouTube.");
                    long limit = 20L * 1024 * 1024;
                    if (response.body().contentLength() > limit) throw new IOException("La respuesta de YouTube es demasiado grande.");
                    java.io.ByteArrayOutputStream bytes = new java.io.ByteArrayOutputStream();
                    try (java.io.InputStream in = response.body().byteStream()) {
                        byte[] buffer = new byte[32768]; int n;
                        while ((n = in.read(buffer)) != -1) { if (bytes.size() + n > limit) throw new IOException("Respuesta demasiado grande."); bytes.write(buffer, 0, n); }
                    }
                    return new Response(response.code(), response.message(), response.headers().toMultimap(), bytes.toString("UTF-8"), response.request().url().toString());
                }
            }
        });
        initialized = true;
    }
    static Plan inspect(String input) throws Exception {
        String url = SafeNetwork.canonical(input);
        Plan plan = new Plan(); plan.url = url;
        if (!SafeNetwork.youtubeHost(new java.net.URI(url).getHost())) {
            plan.direct = true;
            plan.title = SafeNetwork.safeName(java.net.URLDecoder.decode(new java.net.URI(url).getPath().replaceFirst(".*/", ""), "UTF-8"));
            Choice c = new Choice(); c.videoUrl = url; c.label = "Calidad original"; c.codec = "Formato del archivo"; c.compatible = true;
            c.extension = new java.net.URI(url).getPath().replaceFirst(".*\\.", "").toLowerCase(Locale.ROOT);
            try (okhttp3.Response response = SafeNetwork.CLIENT.newCall(new okhttp3.Request.Builder().url(url).head().build()).execute()) {
                if (!response.isSuccessful()) throw new IOException("No se puede acceder al archivo (HTTP " + response.code() + ").");
                c.size = Long.parseLong(response.header("Content-Length", "0"));
            }
            plan.choices.put(c.id, c);
        } else {
            initialize();
            StreamInfo info = StreamInfo.getInfo(ServiceList.YouTube, url);
            if (info.getStreamType() != StreamType.VIDEO_STREAM) throw new IOException("Por ahora se descargan vídeos terminados; los directos aún no están disponibles.");
            plan.title = info.getName(); plan.duration = info.getDuration();
            List<AudioStream> audios = new ArrayList<>();
            for (AudioStream audio : info.getAudioStreams())
                if (audio.isUrl() && audio.getDeliveryMethod() == DeliveryMethod.PROGRESSIVE_HTTP && audio.getContent().startsWith("https://")
                   ) audios.add(audio);
            audios.sort(Comparator.comparingDouble(DownloadEngine::audioScore).reversed());
            AudioStream bestAudio = audios.isEmpty() ? null : audios.get(0);
            AudioStream compatibleAudio = null;
            for (AudioStream candidate : audios) if (audioContainerSupported(candidate.getCodec())) { compatibleAudio = candidate; break; }
            List<VideoStream> videos = new ArrayList<>(info.getVideoOnlyStreams()); videos.addAll(info.getVideoStreams());
            videos.sort(Comparator.comparingInt(VideoStream::getHeight).reversed().thenComparing(Comparator.comparingInt(VideoStream::getFps).reversed()));
            Set<String> seen = new HashSet<>();
            for (VideoStream video : videos) {
                if (!video.isUrl() || video.getDeliveryMethod() != DeliveryMethod.PROGRESSIVE_HTTP || !video.getContent().startsWith("https://") || video.isVideoOnly() && bestAudio == null) continue;
                String codec = video.getCodec() == null ? "" : video.getCodec();
                String mime = codec.startsWith("avc") ? "video/avc" : codec.startsWith("vp9") || codec.startsWith("vp09") ? "video/x-vnd.on2.vp9" : codec.startsWith("av01") ? "video/av01" : null;
                if (mime == null) continue;
                String key = video.getResolution() + ":" + mime + ":" + video.getFps(); if (!seen.add(key)) continue;
                boolean videoCompatible = decodable(mime, video.getWidth(), video.getHeight(), video.getFps());
                AudioStream selectedAudio = videoCompatible && compatibleAudio != null ? compatibleAudio : bestAudio;
                Choice c = new Choice(); c.videoUrl = video.getContent(); c.audioUrl = selectedAudio == null ? null : selectedAudio.getContent();
                c.height = video.getHeight(); c.width = video.getWidth(); c.fps = video.getFps();
                c.label = video.getResolution(); c.codec = mime.equals("video/avc") ? "H.264" : mime.contains("vp9") ? "VP9" : "AV1";
                c.compatible = videoCompatible && (selectedAudio == null || audioContainerSupported(selectedAudio.getCodec()));
                if (selectedAudio != null) c.codec += selectedAudio.getCodec() != null && selectedAudio.getCodec().startsWith("opus") ? " · Opus" : " · AAC";
                c.size = Math.max(0, (long) video.getBitrate() + (selectedAudio == null ? 0 : Math.max(0, selectedAudio.getBitrate()))) * plan.duration / 8;
                plan.choices.put(c.id, c);
            }
            if (plan.choices.isEmpty()) throw new IOException("YouTube no ofrece formatos descargables para este vídeo. Prueba otro enlace o actualiza Brisa.");
        }
        PLANS.entrySet().removeIf(e -> System.currentTimeMillis() - e.getValue().created > 600000);
        if (PLANS.size() >= 4) PLANS.clear();
        PLANS.put(plan.id, plan); return plan;
    }
    // Android's platform MP4 extractor supports Opus in MP4 from Android 10.
    static boolean audioContainerSupported(String codec) {
        return codec != null && (codec.startsWith("mp4a") || codec.startsWith("aac")
            || codec.startsWith("opus") && android.os.Build.VERSION.SDK_INT >= 29);
    }
    static double audioScore(AudioStream audio) {
        int bitrate = audio.getAverageBitrate();
        if (bitrate <= 0) bitrate = audio.getBitrate() / 1000;
        String codec = audio.getCodec();
        // Opus and AAC do not have equivalent quality at the same bitrate.
        return (audio.getAudioTrackType() == AudioTrackType.ORIGINAL ? 100000 : audio.getAudioTrackType() == null ? 50000 : 0) + bitrate * (codec != null && codec.startsWith("opus") ? 1.25 : 1.0);
    }
    static boolean decodable(String mime, int width, int height, int fps) {
        if (width <= 0 || height <= 0) return false;
        try {
            for (MediaCodecInfo codec : new MediaCodecList(MediaCodecList.ALL_CODECS).getCodecInfos()) {
                if (codec.isEncoder()) continue;
                for (String type : codec.getSupportedTypes()) if (type.equalsIgnoreCase(mime)) {
                    MediaCodecInfo.VideoCapabilities caps = codec.getCapabilitiesForType(type).getVideoCapabilities();
                    if (caps != null && caps.areSizeAndRateSupported(width, height, Math.max(1, fps))) return true;
                }
            }
        } catch (Exception ignored) { }
        return false;
    }
}
