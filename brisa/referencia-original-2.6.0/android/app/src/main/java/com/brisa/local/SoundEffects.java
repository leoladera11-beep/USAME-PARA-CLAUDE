package com.brisa.local;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.audiofx.Equalizer;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import java.util.*;
import org.json.JSONObject;

final class SoundEffects {
    private static final Map<MediaPlayer, SoundEffects> ACTIVE = new WeakHashMap<>();
    private final Context context;
    private final MediaPlayer player;
    private Equalizer equalizer;
    private float volume = 1;
    private SoundEffects(Context context, MediaPlayer player) { this.context = context.getApplicationContext(); this.player = player; }
    static void attach(Context context, MediaPlayer player) {
        if (player == null) return;
        SoundEffects effect = ACTIVE.get(player);
        if (effect == null) { effect = new SoundEffects(context, player); ACTIVE.put(player, effect); }
        effect.apply();
    }
    static void volume(Context context, MediaPlayer player, float volume) {
        if (player == null) return;
        SoundEffects effect = ACTIVE.get(player);
        if (effect == null) { effect = new SoundEffects(context, player); ACTIVE.put(player, effect); }
        effect.volume = volume; effect.apply();
    }
    static void suspend(MediaPlayer player) {
        SoundEffects effect = ACTIVE.get(player);
        if (effect != null && effect.equalizer != null) try { effect.equalizer.setEnabled(false); } catch (Exception ignored) { }
    }
    static void release(MediaPlayer player) {
        SoundEffects effect = ACTIVE.remove(player);
        if (effect != null && effect.equalizer != null) { try { effect.equalizer.release(); } catch (Exception ignored) { } effect.equalizer = null; }
    }
    static JSONObject settings(Context context) {
        try { return new JSONObject(context.getSharedPreferences("brisa-sound", 0).getString("settings", "{\"mode\":\"gentle\",\"bass\":2,\"mid\":0,\"treble\":1}")); }
        catch (Exception e) { return new JSONObject(); }
    }
    private void apply() {
        JSONObject s = settings(context);
        if ("original".equals(s.optString("mode"))) {
            if (equalizer != null) { equalizer.release(); equalizer = null; }
            try { player.setVolume(volume, volume); } catch (Exception ignored) { }
            return;
        }
        try {
            if (!player.isPlaying()) { if (equalizer != null) equalizer.setEnabled(false); player.setVolume(volume, volume); return; }
            if (player.getAudioSessionId() == 0) return;
            if (equalizer == null) equalizer = new Equalizer(0, player.getAudioSessionId());
            if (!equalizer.hasControl()) throw new IllegalStateException();
            int bass = band(s, "bass", 2), mid = band(s, "mid", 0), treble = band(s, "treble", 1);
            short[] range = equalizer.getBandLevelRange();
            for (short band = 0; band < equalizer.getNumberOfBands(); band++) {
                double frequency = equalizer.getCenterFreq(band) / 1000.0;
                double gain = frequency <= 125 ? bass : frequency >= 8000 ? treble : frequency <= 1000
                    ? bass + (mid - bass) * Math.log(frequency / 125) / Math.log(8)
                    : mid + (treble - mid) * Math.log(frequency / 1000) / Math.log(8);
                equalizer.setBandLevel(band, (short) Math.max(range[0], Math.min(range[1], Math.round(gain * 100))));
            }
            equalizer.setEnabled(true);
            double headroom = Math.max(0, bass) + Math.max(0, mid) + Math.max(0, treble) + 1;
            float gain = (float) (volume * Math.pow(10, -headroom / 20)); player.setVolume(gain, gain);
        } catch (Exception e) {
            if (equalizer != null) { try { equalizer.release(); } catch (Exception ignored) { } equalizer = null; }
            try { player.setVolume(volume, volume); } catch (Exception ignored) { }
            try { MainActivity.event("brisa-sound", new JSONObject().put("message", "Este dispositivo no permite aplicar el ecualizador ahora. Se conserva el sonido original.")); } catch (Exception ignored) { }
        }
    }
    private static int band(JSONObject s, String key, int fallback) { return Math.max(-6, Math.min(6, s.optInt(key, fallback))); }
    static final class Bridge {
        private final Context context;
        private final Handler main = new Handler(Looper.getMainLooper());
        Bridge(Context context) { this.context = context.getApplicationContext(); }
        @JavascriptInterface public String settings() { return SoundEffects.settings(context).toString(); }
        @JavascriptInterface public void configure(String json) {
            try {
                JSONObject input = new JSONObject(json), safe = new JSONObject().put("mode", "original".equals(input.optString("mode")) ? "original" : "gentle")
                    .put("bass", band(input, "bass", 2)).put("mid", band(input, "mid", 0)).put("treble", band(input, "treble", 1));
                context.getSharedPreferences("brisa-sound", 0).edit().putString("settings", safe.toString()).apply();
                main.post(() -> { for (SoundEffects effect : new ArrayList<>(ACTIVE.values())) effect.apply(); });
            } catch (Exception ignored) { }
        }
    }
}
