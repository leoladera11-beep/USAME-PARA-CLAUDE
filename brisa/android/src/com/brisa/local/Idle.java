package com.brisa.local;

import android.app.Activity;
import android.app.Service;
import android.os.Handler;
import java.lang.ref.WeakReference;

/**
 * Ahorro en segundo plano para la música en pausa.
 *
 * Antes, al pausar y salir de la app, el servicio de reproducción quedaba iniciado para siempre con
 * el descodificador y la sesión multimedia reservados. Un servicio iniciado impide que Android
 * congele el proceso, así que Brisa seguía contando como app activa aunque no sonara nada.
 *
 * Ahora, tras diez minutos seguidos en pausa y con la app fuera de pantalla, el servicio libera el
 * reproductor y se detiene. La interfaz recuerda la canción y el segundo exacto, y al pulsar
 * reproducir la vuelve a cargar en ese punto. No hay sondeo: es una única tarea aplazada.
 */
public final class Idle {
    public static final long DELAY_MS = 10 * 60 * 1000L;
    private static Runnable pending;
    private static WeakReference<Service> owner = new WeakReference<>(null);

    private Idle() { }

    /** Decisión pura, probada en JVM. */
    public static boolean shouldRelease(boolean wantsToPlay, boolean hasPlayer, boolean appVisible) {
        return !wantsToPlay && hasPlayer && !appVisible;
    }

    private static Object read(Object target, String field) throws Exception {
        return target.getClass().getField(field).get(target);
    }

    private static boolean visible() {
        try {
            Class<?> main = Class.forName("com.brisa.local.MainActivity");
            Object activity = ((WeakReference<?>) main.getField("j").get(null)).get();
            return activity instanceof Activity && main.getField("g").getBoolean(activity);
        } catch (Exception unknown) {
            return true;
        }
    }

    /** Se llama desde PlaybackService.k(), el único punto por el que pasa toda pausa. */
    public static void paused(final Service service) {
        try {
            final Handler handler = (Handler) read(service, "u");
            Service previous = owner.get();
            if (pending != null && previous != null) try { ((Handler) read(previous, "u")).removeCallbacks(pending); } catch (Exception ignored) { }
            owner = new WeakReference<>(service);
            pending = new Runnable() {
                @Override public void run() {
                    try {
                        boolean wantsToPlay = (Boolean) read(service, "f");
                        boolean hasPlayer = read(service, "c") != null;
                        boolean appVisible = visible();
                        if (shouldRelease(wantsToPlay, hasPlayer, appVisible)) {
                            pending = null;
                            service.getClass().getMethod("s").invoke(service);
                        } else if (!wantsToPlay && hasPlayer) {
                            handler.postDelayed(this, DELAY_MS);
                        }
                    } catch (Exception ignored) { }
                }
            };
            handler.postDelayed(pending, DELAY_MS);
        } catch (Exception ignored) { }
    }
}
