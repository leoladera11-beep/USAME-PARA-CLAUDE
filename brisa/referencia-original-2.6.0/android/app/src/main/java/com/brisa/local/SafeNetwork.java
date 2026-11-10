package com.brisa.local;

import java.io.IOException;
import java.net.InetAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

final class SafeNetwork {
    static final OkHttpClient CLIENT = new OkHttpClient.Builder()
        .connectTimeout(20, TimeUnit.SECONDS).readTimeout(30, TimeUnit.SECONDS)
        .followSslRedirects(false)
        .dns(host -> {
            java.util.List<InetAddress> addresses = Arrays.asList(InetAddress.getAllByName(host));
            for (InetAddress address : addresses) {
                byte[] bytes = address.getAddress();
                if (address.isAnyLocalAddress() || address.isLoopbackAddress() || address.isSiteLocalAddress()
                    || address.isLinkLocalAddress() || address.isMulticastAddress()
                    || bytes.length == 16 && (bytes[0] & 0xfe) == 0xfc
                    || bytes.length == 4 && ((bytes[0] & 255) == 0 || (bytes[0] & 255) >= 224
                        || (bytes[0] & 255) == 100 && ((bytes[1] & 255) >= 64 && (bytes[1] & 255) <= 127)))
                    throw new UnknownHostException("No se admiten direcciones de red privadas.");
            }
            return addresses;
        })
        .addNetworkInterceptor(chain -> {
            okhttp3.HttpUrl url = chain.request().url();
            if (!url.isHttps() || !url.username().isEmpty() || !url.password().isEmpty() || url.port() != 443)
                throw new IOException("Solo se admiten enlaces HTTPS públicos.");
            return chain.proceed(chain.request());
        }).build();

    static boolean youtubeHost(String host) {
        return host != null && Arrays.asList("youtube.com", "www.youtube.com", "m.youtube.com", "music.youtube.com",
            "youtu.be", "www.youtu.be", "youtube-nocookie.com", "www.youtube-nocookie.com").contains(host.toLowerCase(java.util.Locale.ROOT));
    }
    static String canonical(String text) throws Exception {
        if (text == null || text.length() > 8192) throw new IOException("Enlace no válido.");
        URI url = new URI(text.trim());
        if (!"https".equals(url.getScheme()) || url.getHost() == null || url.getRawUserInfo() != null
            || url.getPort() != -1 || url.getHost().equals("appassets.androidplatform.net")) throw new IOException("Usa un enlace HTTPS público.");
        if (!youtubeHost(url.getHost())) {
            if (!url.getPath().toLowerCase(java.util.Locale.ROOT).matches(".*\\.(mp4|m4v|webm|mov|mkv|3gp)$")) throw new IOException("Pega un enlace de YouTube o un archivo directo de vídeo.");
            return url.toASCIIString();
        }
        String id = null;
        String[] path = url.getPath().split("/");
        if (url.getHost().endsWith("youtu.be") && path.length == 2) id = path[1];
        else if (url.getPath().equals("/watch") && url.getRawQuery() != null) {
            for (String pair : url.getRawQuery().split("&")) if (pair.startsWith("v=")) id = java.net.URLDecoder.decode(pair.substring(2), "UTF-8");
        } else if (path.length == 3 && Arrays.asList("shorts", "live", "embed", "v").contains(path[1])) id = path[2];
        if (id == null || !id.matches("[\\w-]{11}")) throw new IOException("El enlace no identifica un vídeo de YouTube.");
        return "https://www.youtube.com/watch?v=" + id;
    }
    static String safeName(String title) {
        String cleaned = title.replaceAll("[\\p{Cntrl}\\\\/<>:\"|?*]", "_").replaceAll("[. ]+$", "").trim();
        return cleaned.isEmpty() ? "Video" : cleaned.substring(0, Math.min(140, cleaned.length()));
    }
}
