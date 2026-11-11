package com.brisa.local;

import android.app.Service;
import android.content.Context;
import android.os.Handler;
import org.json.JSONObject;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Nombre y artista de la música descargada y de la que solo está en Drive.
 *
 * La misma regla existe en Windows (track_names.rs): si cambias una, cambia la otra. Aquí no se
 * modifica ningún archivo: título y artista se guardan en el registro de Brisa.
 */
public final class TrackNames {
    private TrackNames() { }

    /** Adornos que YouTube añade al título. Solo se quitan si el paréntesis contiene exactamente uno de ellos. */
    private static final List<String> ADORNOS = Arrays.asList("official video", "official music video", "official audio",
        "official lyric video", "official lyrics video", "official visualizer", "official mv", "official hd video",
        "official 4k video", "video oficial", "vídeo oficial", "videoclip oficial", "audio oficial", "video lyric oficial",
        "lyric video", "lyrics video", "video lyric", "lyrics", "letra", "con letra", "video con letra", "visualizer",
        "audio", "video", "vídeo", "mv", "m/v", "hd", "hq", "4k", "1080p", "720p");
    private static final java.util.regex.Pattern AUDIO = java.util.regex.Pattern.compile("(?i)\\.(mp3|m4a|aac|wav|wave|ogg|oga|opus|flac|webm|mp4|amr|aiff?)$");
    private static final java.util.regex.Pattern MEDIA = java.util.regex.Pattern.compile("(?i)\\.(mp3|m4a|aac|wav|wave|ogg|oga|opus|flac|webm|mp4|amr|aiff?|mkv|mov|3gp)$");

    /** Canal de cada vídeo consultado, por título. Pequeño y acotado: solo vive mientras dura la app. */
    private static final Map<String, String> CHANNELS = Collections.synchronizedMap(new LinkedHashMap<String, String>() {
        @Override protected boolean removeEldestEntry(Map.Entry<String, String> eldest) { return size() > 16; }
    });

    public static String clean(String title) {
        if (title == null) return "";
        StringBuilder out = new StringBuilder();
        String rest = title;
        while (true) {
            int round = rest.indexOf('('), square = rest.indexOf('[');
            int start = round < 0 ? square : square < 0 ? round : Math.min(round, square);
            if (start < 0) break;
            int end = rest.indexOf(rest.charAt(start) == '(' ? ')' : ']', start);
            if (end < 0) break;
            out.append(rest, 0, start);
            if (!ADORNOS.contains(rest.substring(start + 1, end).trim().toLowerCase(Locale.ROOT))) out.append(rest, start, end + 1);
            rest = rest.substring(end + 1);
        }
        String text = out.append(rest).toString().trim().replaceAll("\\s+", " ").replaceAll("^[\\s|-]+|[\\s|-]+$", "");
        return text.isEmpty() ? title.trim() : text;
    }

    /** Quita la extensión de un archivo de música: «Nombre.m4a» se muestra como «Nombre». */
    public static String stripExtension(String name) {
        return name == null ? "" : AUDIO.matcher(name).replaceFirst("").trim();
    }

    /** Devuelve {título, artista}: «Artista - Título» si el título del vídeo lo trae; si no, el canal como artista. */
    public static String[] names(String videoTitle, String channel) {
        String title = clean(videoTitle);
        for (String separator : new String[]{" - ", " – ", " — "}) {
            int at = title.indexOf(separator);
            if (at > 0) {
                String artist = title.substring(0, at).trim(), song = title.substring(at + separator.length()).trim();
                if (!artist.isEmpty() && !song.isEmpty()) return new String[]{song, artist};
            }
        }
        String artist = channel == null ? "" : channel.trim();
        if (artist.endsWith(" - Topic")) artist = artist.substring(0, artist.length() - 8).trim();
        return new String[]{title, artist};
    }

    /**
     * Enganche en m.b(): recuerda el canal del vídeo recién consultado. El extractor ya tiene el dato
     * («videoDetails.author») pero no lo conserva; se lee por reflexión y, si algo cambia, simplemente
     * no hay canal y el artista queda vacío.
     */
    public static void channel(String title, Object extractor) {
        try {
            Object details = extractor.getClass().getField("d").get(extractor);
            Object video = details.getClass().getMethod("d", String.class).invoke(details, "videoDetails");
            Object author = video.getClass().getMethod("e", String.class, String.class).invoke(video, "author", null);
            if (title != null && author instanceof String && !((String) author).trim().isEmpty()) CHANNELS.put(title, (String) author);
        } catch (Throwable ignored) { }
    }

    static void remember(String title, String channel) { CHANNELS.put(title, channel); }

    /** Título y artista de una descarga a partir del título del vídeo y del nombre del archivo guardado. */
    public static String[] forDownload(String videoTitle, String fileName) {
        String fromFile = stripExtension(fileName);
        // En las tareas que no son una descarga nueva el servicio lleva el nombre del archivo, no el del vídeo.
        boolean video = videoTitle != null && !videoTitle.trim().isEmpty() && !MEDIA.matcher(videoTitle).find();
        return video ? names(videoTitle, CHANNELS.get(videoTitle)) : names(fromFile, null);
    }

    /** Enganche en DownloadService.g(): guarda título y artista junto a la música recién descargada. */
    public static void save(Context context, JSONObject record) throws Exception {
        try {
            if ("audio".equals(record.optString("kind")) && !record.has("title")) {
                String videoTitle = null;
                try { videoTitle = (String) context.getClass().getField("d").get(context); } catch (Exception ignored) { }
                String[] found = forDownload(videoTitle, record.optString("name"));
                if (!found[0].isEmpty()) record.put("title", found[0]).put("artist", found[1]);
            }
        } catch (Exception ignored) { }
        MobileVideoFiles.call("a", "z", new Class<?>[]{Context.class, JSONObject.class}, context, record);
    }

    /** Completa la entrada que recibe la interfaz. Función pura para probarla sin teléfono. */
    public static JSONObject complete(JSONObject record, JSONObject entry) throws Exception {
        String saved = record.optString("title");
        if (!saved.isEmpty()) return entry.put("title", saved).put("artist", record.optString("artist"));
        String current = entry.optString("title");
        // Sin etiquetas en el archivo, o con el nombre del archivo como título, se deduce del nombre sin extensión.
        if (current.isEmpty() || AUDIO.matcher(current).find() || !entry.optBoolean("offlineReady", true)) {
            String[] found = names(stripExtension(record.optString("name", entry.optString("name"))), null);
            entry.put("title", found[0]);
            if (entry.optString("artist").isEmpty()) entry.put("artist", found[1]);
        }
        return entry;
    }

    /** Enganche en r.assets(): sustituye a a.c() y corrige el título de lo que solo está en Drive (M4A incluido). */
    public static JSONObject entry(Context context, JSONObject record) throws Exception {
        JSONObject entry = (JSONObject) MobileVideoFiles.call("a", "c", new Class<?>[]{Context.class, JSONObject.class}, context, record);
        try { return complete(record, entry); } catch (Exception failure) { return entry; }
    }

    /**
     * El usuario cambió el nombre de la canción que suena: se actualiza el registro del servicio y se
     * vuelve a publicar el estado, que renueva la sesión multimedia y la notificación. La música no se
     * recarga ni se interrumpe. Sin servicio vivo no hay nada que actualizar.
     */
    public static void rename(String json) {
        try {
            final JSONObject change = new JSONObject(json);
            Class<?> type = Class.forName("com.brisa.local.PlaybackService");
            final Object service = type.getField("z").get(null);
            if (!(service instanceof Service)) return;
            ((Handler) type.getField("u").get(service)).post(new Runnable() {
                @Override public void run() {
                    try {
                        JSONObject current = (JSONObject) service.getClass().getField("o").get(service);
                        if (current == null || !current.optString("id").equals(change.optString("id"))) return;
                        current.put("title", change.optString("title")).put("artist", change.optString("artist"));
                        ((Service) service).getSharedPreferences("brisa-player", 0).edit().putString("last", current.toString()).apply();
                        service.getClass().getMethod("o").invoke(service);
                    } catch (Exception ignored) { }
                }
            });
        } catch (Exception ignored) { }
    }
}
