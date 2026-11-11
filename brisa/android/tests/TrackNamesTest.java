package com.brisa.local;

import org.json.JSONObject;

/** Nombre y artista de la música descargada y de la que solo está en Drive. Lógica pura, sin teléfono. */
public final class TrackNamesTest {
    static int checks;

    static void check(boolean condition, String message) {
        checks++;
        if (!condition) throw new AssertionError(message);
    }

    static void same(String[] found, String title, String artist, String message) {
        check(found[0].equals(title) && found[1].equals(artist), message + " → «" + found[0] + "» / «" + found[1] + "»");
    }

    public static void main(String[] args) throws Exception {
        // Título y artista a partir del título del vídeo y del canal.
        same(TrackNames.names("Los Faroles - Carretera al sur [HD]", "Un canal"), "Carretera al sur", "Los Faroles", "«Artista - Título» manda sobre el canal");
        same(TrackNames.names("Irene Sala – Mil veces (Vídeo Oficial)", null), "Mil veces", "Irene Sala", "raya larga y adorno en español");
        same(TrackNames.names("Madrugada (Official Audio)", "Trío Albor - Topic"), "Madrugada", "Trío Albor", "sin separador, el canal es el artista");
        same(TrackNames.names("Canción", null), "Canción", "", "sin canal el artista queda vacío");
        same(TrackNames.names("A - B - C", ""), "B - C", "A", "solo se corta por el primer separador");

        // Solo se quitan adornos seguros.
        check(TrackNames.clean("Canción (Remix) [Official Video]").equals("Canción (Remix)"), "Remix se conserva");
        check(TrackNames.clean("Canción (En vivo)").equals("Canción (En vivo)"), "En vivo se conserva");
        check(TrackNames.clean("Canción (feat. Otra) (Lyrics)").equals("Canción (feat. Otra)"), "feat. se conserva");
        check(TrackNames.clean("(Official Video)").equals("(Official Video)"), "nunca queda vacío");
        check(TrackNames.clean("Canción (sin cerrar").equals("Canción (sin cerrar"), "paréntesis sin cerrar");

        // M4A y demás formatos no muestran la extensión.
        check(TrackNames.stripExtension("Nombre.m4a").equals("Nombre"), "m4a sin extensión");
        check(TrackNames.stripExtension("Nombre.MP3").equals("Nombre"), "mp3 en mayúsculas");
        check(TrackNames.stripExtension("Dr. Nadie").equals("Dr. Nadie"), "un punto que no es extensión se conserva");

        // Canción que solo está en Drive: antes quedaba «Nombre.m4a».
        JSONObject drive = TrackNames.complete(new JSONObject().put("name", "Los Faroles - Carretera al sur.m4a"),
            new JSONObject().put("title", "Los Faroles - Carretera al sur.m4a").put("offlineReady", false));
        check(drive.getString("title").equals("Carretera al sur") && drive.getString("artist").equals("Los Faroles"), "solo en Drive, M4A");
        JSONObject plain = TrackNames.complete(new JSONObject().put("name", "Madrugada.m4a"), new JSONObject().put("title", "Madrugada.m4a").put("offlineReady", false));
        check(plain.getString("title").equals("Madrugada") && plain.optString("artist").isEmpty(), "solo en Drive sin artista");

        // Copia local sin etiquetas: el título no llega vacío. Con etiquetas, mandan las etiquetas.
        JSONObject empty = TrackNames.complete(new JSONObject().put("name", "Madrugada.m4a"), new JSONObject().put("title", "").put("artist", "").put("offlineReady", true));
        check(empty.getString("title").equals("Madrugada"), "sin etiquetas se usa el nombre");
        JSONObject tagged = TrackNames.complete(new JSONObject().put("name", "pista01.mp3"), new JSONObject().put("title", "Con etiqueta").put("artist", "Alguien").put("offlineReady", true));
        check(tagged.getString("title").equals("Con etiqueta") && tagged.getString("artist").equals("Alguien"), "las etiquetas se respetan");

        // Lo guardado al descargar manda sobre todo lo demás.
        JSONObject saved = TrackNames.complete(new JSONObject().put("name", "Madrugada (Official Audio).m4a").put("title", "Madrugada").put("artist", "Trío Albor"),
            new JSONObject().put("title", "").put("offlineReady", true));
        check(saved.getString("title").equals("Madrugada") && saved.getString("artist").equals("Trío Albor"), "título y artista guardados");

        // Al descargar: el canal recordado en la consulta se usa como artista.
        TrackNames.remember("Madrugada (Official Audio)", "Trío Albor - Topic");
        same(TrackNames.forDownload("Madrugada (Official Audio)", "Madrugada (Official Audio).m4a"), "Madrugada", "Trío Albor", "descarga con canal");
        same(TrackNames.forDownload("AC/DC - Trueno", "AC_DC - Trueno.mp3"), "Trueno", "AC/DC", "se usa el título real, no el nombre saneado del archivo");
        same(TrackNames.forDownload("Guardada antes.m4a", "Guardada antes.m4a"), "Guardada antes", "", "una tarea sobre un archivo existente usa su nombre");
        same(TrackNames.forDownload(null, "Otra - Cosa.mp3"), "Cosa", "Otra", "sin título de vídeo se usa el archivo");

        // El canal se lee del extractor por reflexión; si su forma cambia, no rompe nada.
        TrackNames.channel("Título", new Object());
        TrackNames.channel(null, null);
        same(TrackNames.forDownload("Título", "Título.m4a"), "Título", "", "sin canal conocido");
        TrackNames.channel("Con canal", new Extractor());
        same(TrackNames.forDownload("Con canal", "Con canal.m4a"), "Con canal", "El Canal", "canal leído del extractor");

        System.out.println("TrackNamesTest: " + checks + " comprobaciones correctas");
    }

    /** Misma forma que el extractor recuperado: campo «d» con d(clave) y e(clave, defecto). */
    public static final class Extractor { public final Node d = new Node(); }
    public static final class Node {
        public Node d(String key) { return this; }
        public String e(String key, String fallback) { return "author".equals(key) ? "El Canal" : fallback; }
    }
}
