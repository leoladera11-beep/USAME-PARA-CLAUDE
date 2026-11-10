package com.brisa.local;

/** Decisiones puras de Brisa 4: política de red, liberación en pausa y formato de la música. */
public final class Brisa4LogicTest {
    static int checks;

    static void check(boolean condition, String message) {
        checks++;
        if (!condition) throw new AssertionError(message);
    }

    public static void main(String[] args) {
        // Reproducción desde Drive: cuenta, conexión y Wi-Fi.
        check(DriveStream.refusal(true, true, true, false) == null, "con Wi-Fi se reproduce");
        check(DriveStream.refusal(true, true, false, true) == null, "con datos permitidos se reproduce");
        check(DriveStream.refusal(true, true, false, false).contains("Wi-Fi"), "con datos móviles se rechaza por defecto");
        check(DriveStream.refusal(true, false, false, true).contains("Sin conexión"), "sin red se avisa");
        check(DriveStream.refusal(false, true, true, true).contains("Conecta"), "sin cuenta se pide conectar");
        check(DriveStream.refusal(false, false, false, false).contains("Conecta"), "la cuenta es lo primero que se comprueba");

        // Liberación del servicio en pausa.
        check(Idle.shouldRelease(false, true, false), "en pausa y fuera de pantalla se libera");
        check(!Idle.shouldRelease(true, true, false), "si va a sonar no se libera");
        check(!Idle.shouldRelease(false, true, true), "con la app visible no se libera");
        check(!Idle.shouldRelease(false, false, false), "sin reproductor no hay nada que liberar");
        check(Idle.DELAY_MS == 600000L, "la espera es de diez minutos");

        // Formato real del archivo de música.
        byte[] m4a = {0, 0, 0, 0x1c, 'f', 't', 'y', 'p', 'M', '4', 'A', ' '};
        byte[] id3 = {'I', 'D', '3', 4, 0, 0, 0, 0, 0, 0, 0, 0};
        byte[] frame = {(byte) 0xff, (byte) 0xfb, (byte) 0xe0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        check(AudioExport.extensionFor(m4a, 12).equals("m4a"), "un contenedor MP4 se guarda como m4a");
        check(AudioExport.extensionFor(id3, 12).equals("mp3"), "un MP3 con etiqueta se guarda como mp3");
        check(AudioExport.extensionFor(frame, 12).equals("mp3"), "un MP3 sin etiqueta se guarda como mp3");
        check(AudioExport.extensionFor(m4a, 4).equals("mp3"), "una lectura corta no se confunde");
        check(AudioExport.extensionFor(m4a, -1).equals("mp3"), "un archivo vacío no rompe la elección");
        check(AudioExport.mime("Canción.m4a").equals("audio/mp4"), "m4a es audio/mp4");
        check(AudioExport.mime("Canción.MP3").equals("audio/mpeg"), "mp3 es audio/mpeg");
        check(AudioExport.mime("x.opus").equals("audio/ogg") && AudioExport.mime("x.webm").equals("audio/webm"), "otros contenedores");
        check(AudioExport.mime(null).equals("audio/mpeg") && AudioExport.mime("").equals("audio/mpeg"), "sin nombre se asume mp3");
        check(AudioExport.original(null), "sin contexto el modo por defecto es el original");
        System.out.println("Brisa4LogicTest: " + checks + " comprobaciones correctas");
    }
}
