package com.brisa.local;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/** Pruebas JVM del puente local de streaming: rangos, secreto, métodos y errores del origen. */
public final class StreamRelayTest {
    static int checks;

    static void check(boolean condition, String message) {
        checks++;
        if (!condition) throw new AssertionError(message);
    }

    static byte[] read(InputStream in) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        for (int n; (n = in.read(buffer)) >= 0; ) out.write(buffer, 0, n);
        return out.toByteArray();
    }

    static String raw(int port, String request) throws IOException {
        try (Socket socket = new Socket("127.0.0.1", port)) {
            socket.setSoTimeout(5000);
            socket.getOutputStream().write(request.getBytes(StandardCharsets.ISO_8859_1));
            socket.getOutputStream().flush();
            return new String(read(socket.getInputStream()), StandardCharsets.ISO_8859_1);
        }
    }

    public static void main(String[] args) throws Exception {
        final byte[] data = new byte[300000];
        for (int i = 0; i < data.length; i++) data[i] = (byte) (i * 31 + 7);
        final List<String> asked = new ArrayList<>();
        final boolean[] closed = {false};
        StreamRelay.Source source = (id, range) -> {
            asked.add(id + "|" + range);
            if (id.equals("wifi")) throw new StreamRelay.Refused(403, "Solo con Wi-Fi");
            if (id.equals("roto")) throw new IOException("sin red");
            if (!id.equals("cancion")) throw new StreamRelay.Refused(404, "No existe");
            int from = 0, to = data.length - 1;
            if (range != null) {
                String[] parts = range.substring(6).split("-", -1);
                if (parts[0].isEmpty()) from = data.length - Integer.parseInt(parts[1]);
                else {
                    from = Integer.parseInt(parts[0]);
                    if (!parts[1].isEmpty()) to = Math.min(to, Integer.parseInt(parts[1]));
                }
            }
            InputStream body = new ByteArrayInputStream(data, from, to - from + 1) {
                @Override public void close() { closed[0] = true; }
            };
            return new StreamRelay.Reply(range == null ? 200 : 206, "audio/mpeg", to - from + 1, range == null ? null : "bytes " + from + "-" + to + "/" + data.length, body);
        };
        String secret = "abcdefghijklmnop0123456789";
        try (StreamRelay relay = new StreamRelay(source, secret)) {
            String url = relay.url("cancion");
            check(url.startsWith("http://127.0.0.1:") && url.endsWith("/" + secret + "/cancion"), "URL local con secreto");
            check(relay.url("cancion").equals(url), "el puerto se reutiliza");

            HttpURLConnection full = (HttpURLConnection) new URL(url).openConnection();
            check(full.getResponseCode() == 200, "archivo completo: 200");
            check(full.getContentLengthLong() == data.length, "longitud completa");
            check("bytes".equals(full.getHeaderField("Accept-Ranges")), "anuncia rangos");
            check(Arrays.equals(read(full.getInputStream()), data), "mismos bytes completos");
            check(closed[0], "el origen se cierra al terminar");

            HttpURLConnection part = (HttpURLConnection) new URL(url).openConnection();
            part.setRequestProperty("Range", "bytes=1000-1999");
            check(part.getResponseCode() == 206, "rango: 206");
            check(("bytes 1000-1999/" + data.length).equals(part.getHeaderField("Content-Range")), "Content-Range del origen");
            check(Arrays.equals(read(part.getInputStream()), Arrays.copyOfRange(data, 1000, 2000)), "mismos bytes del rango");

            HttpURLConnection tail = (HttpURLConnection) new URL(url).openConnection();
            tail.setRequestProperty("Range", "bytes=299000-");
            check(tail.getResponseCode() == 206 && read(tail.getInputStream()).length == 1000, "rango abierto hasta el final");

            String head = raw(relay.port(), "HEAD /" + secret + "/cancion HTTP/1.1\r\nHost: x\r\n\r\n");
            check(head.startsWith("HTTP/1.1 200 ") && head.contains("Content-Length: " + data.length) && head.endsWith("\r\n\r\n"), "HEAD sin cuerpo");

            check(raw(relay.port(), "GET /otro-secreto-0123456789/cancion HTTP/1.1\r\n\r\n").startsWith("HTTP/1.1 404 "), "secreto incorrecto: 404");
            check(raw(relay.port(), "GET /" + secret + "/../cancion HTTP/1.1\r\n\r\n").startsWith("HTTP/1.1 404 "), "ruta con saltos: 404");
            check(raw(relay.port(), "GET /" + secret + "/can%20cion HTTP/1.1\r\n\r\n").startsWith("HTTP/1.1 404 "), "identificador no válido: 404");
            check(raw(relay.port(), "POST /" + secret + "/cancion HTTP/1.1\r\n\r\n").startsWith("HTTP/1.1 405 "), "solo lectura: 405");
            check(raw(relay.port(), "basura\r\n\r\n").startsWith("HTTP/1.1 400 "), "petición malformada: 400");
            int before = asked.size();
            raw(relay.port(), "GET /malo/cancion HTTP/1.1\r\n\r\n");
            check(asked.size() == before, "sin secreto no se consulta el origen");

            String wifi = raw(relay.port(), "GET /" + secret + "/wifi HTTP/1.1\r\n\r\n");
            check(wifi.startsWith("HTTP/1.1 403 ") && wifi.endsWith("Solo con Wi-Fi"), "rechazo del origen con su motivo");
            check(raw(relay.port(), "GET /" + secret + "/roto HTTP/1.1\r\n\r\n").startsWith("HTTP/1.1 502 "), "fallo de red: 502");
            check(raw(relay.port(), "GET /" + secret + "/nada HTTP/1.1\r\n\r\n").startsWith("HTTP/1.1 404 "), "archivo desconocido: 404");

            raw(relay.port(), "GET /" + secret + "/cancion HTTP/1.1\r\nRange: bytes=abc\r\n\r\n");
            check(asked.get(asked.size() - 1).equals("cancion|null"), "un rango malformado se ignora");
            raw(relay.port(), "GET /" + secret + "/cancion HTTP/1.1\r\nrAnGe:   bytes=5-9  \r\n\r\n");
            check(asked.get(asked.size() - 1).equals("cancion|bytes=5-9"), "cabecera Range sin distinguir mayúsculas");

            // Un cliente que corta a mitad no deja el servidor inservible.
            try (Socket socket = new Socket("127.0.0.1", relay.port())) {
                socket.getOutputStream().write(("GET /" + secret + "/cancion HTTP/1.1\r\n\r\n").getBytes(StandardCharsets.ISO_8859_1));
                socket.getInputStream().read(new byte[100]);
            }
            HttpURLConnection again = (HttpURLConnection) new URL(url).openConnection();
            check(again.getResponseCode() == 200 && read(again.getInputStream()).length == data.length, "sigue sirviendo tras un corte");
            int port = relay.port();
            relay.close();
            check(relay.port() == 0, "cerrado libera el puerto");
            boolean refused = false;
            try { new Socket("127.0.0.1", port).close(); } catch (IOException expected) { refused = true; }
            check(refused, "tras cerrar no acepta conexiones");
        }
        boolean rejected = false;
        try { new StreamRelay(source, "corto"); } catch (IllegalArgumentException expected) { rejected = true; }
        check(rejected, "rechaza secretos débiles");
        System.out.println("StreamRelayTest: " + checks + " comprobaciones correctas");
    }
}
