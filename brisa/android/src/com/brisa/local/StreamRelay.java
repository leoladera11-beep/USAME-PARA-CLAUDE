package com.brisa.local;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * Puente local para reproducir un archivo remoto sin copiarlo al almacenamiento.
 *
 * Escucha solo en 127.0.0.1, en un puerto libre, y exige un secreto aleatorio en la ruta, de modo
 * que otra app del teléfono no pueda pedir archivos. Reenvía la cabecera Range tal cual, que es lo
 * que permite al reproductor saltar a cualquier minuto sin descargar el archivo entero.
 *
 * No usa clases de Android: se prueba en una JVM normal. No tiene temporizadores ni bucles de
 * sondeo; el hilo que acepta conexiones duerme dentro de accept() y no consume CPU en reposo.
 */
public final class StreamRelay implements Closeable {
    /** Respuesta del origen remoto. */
    public static final class Reply {
        public final int status;
        public final String type;
        public final long length;
        public final String range;
        public final InputStream body;

        public Reply(int status, String type, long length, String range, InputStream body) {
            this.status = status;
            this.type = type;
            this.length = length;
            this.range = range;
            this.body = body;
        }
    }

    /** El origen rechaza la petición con un código HTTP y un motivo legible. */
    public static final class Refused extends IOException {
        public final int status;

        public Refused(int status, String message) {
            super(message);
            this.status = status;
        }
    }

    public interface Source {
        Reply open(String id, String range) throws IOException;
    }

    private static final int HEAD_LIMIT = 8192;
    private final Source source;
    private final String secret;
    private final ThreadPoolExecutor workers;
    private volatile ServerSocket server;

    public StreamRelay(Source source, String secret) {
        if (secret == null || !secret.matches("[A-Za-z0-9]{16,128}")) throw new IllegalArgumentException("Secreto no válido");
        this.source = source;
        this.secret = secret;
        // Sin cola: cada conexión tiene su hilo y los hilos sobrantes terminan tras 20 s sin uso.
        workers = new ThreadPoolExecutor(0, 8, 20, TimeUnit.SECONDS, new SynchronousQueue<Runnable>(), runnable -> {
            Thread thread = new Thread(runnable, "brisa-stream");
            thread.setDaemon(true);
            return thread;
        });
    }

    /** Abre el puerto local. Devuelve el puerto asignado. */
    public synchronized int start() throws IOException {
        if (server != null && !server.isClosed()) return server.getLocalPort();
        final ServerSocket socket = new ServerSocket(0, 16, InetAddress.getByAddress(new byte[]{127, 0, 0, 1}));
        server = socket;
        Thread acceptor = new Thread(() -> {
            while (!socket.isClosed()) {
                final Socket client;
                try {
                    client = socket.accept();
                } catch (IOException closed) {
                    break;
                }
                try {
                    workers.execute(() -> serve(client));
                } catch (RejectedExecutionException busy) {
                    quietClose(client);
                }
            }
        }, "brisa-stream-accept");
        acceptor.setDaemon(true);
        acceptor.start();
        return socket.getLocalPort();
    }

    public int port() {
        ServerSocket socket = server;
        return socket == null || socket.isClosed() ? 0 : socket.getLocalPort();
    }

    public String url(String id) throws IOException {
        return "http://127.0.0.1:" + start() + "/" + secret + "/" + id;
    }

    @Override
    public synchronized void close() {
        ServerSocket socket = server;
        server = null;
        if (socket != null) try { socket.close(); } catch (IOException ignored) { }
        workers.shutdownNow();
    }

    private static void quietClose(Closeable target) {
        if (target != null) try { target.close(); } catch (IOException ignored) { }
    }

    private static boolean same(String a, String b) {
        return MessageDigest.isEqual(a.getBytes(StandardCharsets.UTF_8), b.getBytes(StandardCharsets.UTF_8));
    }

    private static String reason(int status) {
        switch (status) {
            case 200: return "OK";
            case 206: return "Partial Content";
            case 400: return "Bad Request";
            case 401: return "Unauthorized";
            case 403: return "Forbidden";
            case 404: return "Not Found";
            case 405: return "Method Not Allowed";
            case 416: return "Range Not Satisfiable";
            case 503: return "Service Unavailable";
            default: return status >= 500 ? "Bad Gateway" : "Error";
        }
    }

    private static void fail(OutputStream out, int status, String message) throws IOException {
        byte[] body = (message == null ? reason(status) : message).getBytes(StandardCharsets.UTF_8);
        out.write(("HTTP/1.1 " + status + " " + reason(status) + "\r\nContent-Type: text/plain; charset=utf-8\r\nContent-Length: " + body.length
            + "\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n").getBytes(StandardCharsets.US_ASCII));
        out.write(body);
        out.flush();
    }

    /** Lee la cabecera de la petición con un límite fijo de memoria. */
    private static String head(InputStream in) throws IOException {
        byte[] buffer = new byte[HEAD_LIMIT];
        int size = 0;
        while (size < buffer.length) {
            int value = in.read();
            if (value < 0) break;
            buffer[size++] = (byte) value;
            if (size >= 4 && buffer[size - 4] == '\r' && buffer[size - 3] == '\n' && buffer[size - 2] == '\r' && buffer[size - 1] == '\n')
                return new String(buffer, 0, size, StandardCharsets.ISO_8859_1);
        }
        return null;
    }

    void serve(Socket client) {
        InputStream upstream = null;
        try {
            client.setSoTimeout(15000);
            client.setTcpNoDelay(true);
            OutputStream out = client.getOutputStream();
            String head = head(client.getInputStream());
            if (head == null) { fail(out, 400, null); return; }
            String[] lines = head.split("\r\n");
            String[] request = lines[0].split(" ");
            if (request.length != 3 || !request[2].startsWith("HTTP/1.")) { fail(out, 400, null); return; }
            boolean headOnly = request[0].equals("HEAD");
            if (!headOnly && !request[0].equals("GET")) { fail(out, 405, null); return; }
            String[] path = request[1].split("/", -1);
            if (path.length != 3 || !path[0].isEmpty() || !same(path[1], secret) || !path[2].matches("[A-Za-z0-9_-]{1,100}")) { fail(out, 404, null); return; }
            String range = null;
            for (int i = 1; i < lines.length; i++) {
                int colon = lines[i].indexOf(':');
                if (colon > 0 && lines[i].substring(0, colon).trim().toLowerCase(Locale.ROOT).equals("range")) {
                    String value = lines[i].substring(colon + 1).trim();
                    if (value.matches("bytes=\\d*-\\d*") && !value.equals("bytes=-")) range = value;
                }
            }
            Reply reply;
            try {
                reply = source.open(path[2], range);
            } catch (Refused refused) {
                fail(out, refused.status, refused.getMessage());
                return;
            } catch (IOException failure) {
                fail(out, 502, "No se pudo leer el archivo remoto.");
                return;
            }
            upstream = reply.body;
            StringBuilder response = new StringBuilder("HTTP/1.1 ").append(reply.status).append(' ').append(reason(reply.status)).append("\r\n");
            response.append("Content-Type: ").append(reply.type == null || reply.type.isEmpty() ? "application/octet-stream" : reply.type.replaceAll("[\\r\\n]", "")).append("\r\n");
            if (reply.length >= 0) response.append("Content-Length: ").append(reply.length).append("\r\n");
            if (reply.range != null && reply.range.matches("bytes [0-9*/-]{1,80}")) response.append("Content-Range: ").append(reply.range).append("\r\n");
            response.append("Accept-Ranges: bytes\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n");
            out.write(response.toString().getBytes(StandardCharsets.US_ASCII));
            if (!headOnly && upstream != null) {
                // El reproductor puede tardar en leer mientras está en pausa: sin límite de espera al escribir.
                byte[] buffer = new byte[65536];
                for (int count; (count = upstream.read(buffer)) >= 0; ) if (count > 0) out.write(buffer, 0, count);
            }
            out.flush();
        } catch (IOException ignored) {
            // El reproductor cerró la conexión (salto, pausa larga o fin): no es un error.
        } catch (RuntimeException ignored) {
            // Una petición malformada nunca debe tumbar el hilo.
        } finally {
            quietClose(upstream);
            quietClose(client);
        }
    }
}
