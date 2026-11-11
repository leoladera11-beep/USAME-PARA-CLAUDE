package com.brisa.local;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.nio.file.Files;

/**
 * Sirve un archivo local a través del puente real de streaming de Android para que un navegador
 * lo reproduzca (tools/probar-streaming.cjs). El origen imita a Drive: entrega rangos y el total.
 *   java com.brisa.local.StreamRelayDemo <archivo> <tipo MIME>     imprime «URL http://127.0.0.1:puerto/…»
 */
public final class StreamRelayDemo {
    public static void main(String[] args) throws Exception {
        final byte[] data = Files.readAllBytes(new File(args[0]).toPath());
        final String type = args[1];
        StreamRelay relay = new StreamRelay((id, range) -> {
            if (!id.equals("MEDIA1")) throw new StreamRelay.Refused(404, "No existe");
            if (range == null) return new StreamRelay.Reply(200, type, data.length, null, new ByteArrayInputStream(data));
            String[] parts = range.substring(6).split("-", -1);
            int from = parts[0].isEmpty() ? data.length - Integer.parseInt(parts[1]) : Integer.parseInt(parts[0]);
            int to = parts[0].isEmpty() || parts[1].isEmpty() ? data.length - 1 : Math.min(data.length - 1, Integer.parseInt(parts[1]));
            if (from < 0 || from >= data.length) throw new StreamRelay.Refused(416, "Posición fuera del archivo.");
            return new StreamRelay.Reply(206, type, to - from + 1, "bytes " + from + "-" + to + "/" + data.length, new ByteArrayInputStream(data, from, to - from + 1));
        }, "secretoDePrueba0123456789");
        System.out.println("URL " + relay.url("MEDIA1"));
        System.out.flush();
        Thread.sleep(Long.MAX_VALUE);
    }
}
