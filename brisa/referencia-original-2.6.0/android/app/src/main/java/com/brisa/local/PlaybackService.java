package com.brisa.local;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PlaybackService extends Service {
    public static volatile PlaybackService instance;
    private AudioFocusRequest focus;
    private AudioManager manager;
    private MediaPlayer player;
    private MediaSession session;
    private boolean prepared = false;
    private boolean desired = false;
    private boolean foreground = false;
    private boolean autoplay = true;
    private boolean shuffle = false;
    private boolean sleepEnd = false;
    private boolean sleepFinished = false;
    private float volume = 1.0f;
    private float rate = 1.0f;
    private String repeat = "off";
    private JSONObject current = new JSONObject();
    private JSONArray queue = new JSONArray();
    private long pendingSeek = 0;
    private boolean seeking = false;
    private long seekPosition = 0;
    private String lastError = "";
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final QueueCycle cycle = new QueueCycle();
    private final ArrayDeque<String> playHistory = new ArrayDeque<>();
    private final Runnable tick = new AnonymousClass1();
    private final Runnable sleeper = new PlaybackService$$ExternalSyntheticLambda4(this);

    /* JADX INFO: renamed from: com.brisa.local.PlaybackService$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PlaybackService.access$0(PlaybackService.this) != null && PlaybackService.access$1(PlaybackService.this) && PlaybackService.access$2(PlaybackService.this) && MainActivity.isVisible()) {
                MainActivity.send("receive", PlaybackService.this.snapshot());
                PlaybackService.access$3(PlaybackService.this).postDelayed(this, 500L);
            }
        }
    }

    static /* synthetic */ MediaPlayer access$0(PlaybackService playbackService) {
        return playbackService.player;
    }

    static /* synthetic */ boolean access$1(PlaybackService playbackService) {
        return playbackService.prepared;
    }

    static /* synthetic */ boolean access$2(PlaybackService playbackService) {
        return playbackService.desired;
    }

    static /* synthetic */ Handler access$3(PlaybackService playbackService) {
        return playbackService.handler;
    }

    /* JADX INFO: renamed from: com.brisa.local.PlaybackService$2, reason: invalid class name */
    class AnonymousClass2 extends MediaSession.Callback {
        AnonymousClass2() {
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCustomAction(String str, Bundle bundle) {
            PlaybackService playbackService;
            long jAccess$10;
            if ("back".equals(str)) {
                playbackService = PlaybackService.this;
                jAccess$10 = PlaybackService.access$10(PlaybackService.this) - 10000;
            } else {
                if (!"forward".equals(str)) {
                    if ("previous".equals(str)) {
                        PlaybackService.access$9(PlaybackService.this);
                        return;
                    } else {
                        if ("next".equals(str)) {
                            PlaybackService.access$8(PlaybackService.this, false);
                            return;
                        }
                        return;
                    }
                }
                playbackService = PlaybackService.this;
                jAccess$10 = PlaybackService.access$10(PlaybackService.this) + 10000;
            }
            PlaybackService.access$7(playbackService, jAccess$10);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            PlaybackService.access$7(PlaybackService.this, PlaybackService.access$10(PlaybackService.this) + 10000);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            PlaybackService.access$5(PlaybackService.this);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            PlaybackService.access$4(PlaybackService.this);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            PlaybackService.access$7(PlaybackService.this, PlaybackService.access$10(PlaybackService.this) - 10000);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSeekTo(long j) {
            PlaybackService.access$7(PlaybackService.this, j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            PlaybackService.access$8(PlaybackService.this, false);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            PlaybackService.access$9(PlaybackService.this);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            PlaybackService.access$6(PlaybackService.this);
        }
    }

    /* JADX INFO: renamed from: lambda$0$com-brisa-local-PlaybackService, reason: not valid java name */
    /* synthetic */ void m22lambda$0$combrisalocalPlaybackService() {
        this.sleepFinished = true;
        this.sleepEnd = false;
        pauseAudio();
        publish(false);
    }

    /* JADX INFO: renamed from: lambda$1$com-brisa-local-PlaybackService, reason: not valid java name */
    /* synthetic */ void m23lambda$1$combrisalocalPlaybackService(int i) {
        if (i == -1 || i == -2) {
            pauseAudio();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        instance = this;
        this.manager = (AudioManager) getSystemService("audio");
        NotificationChannel notificationChannel = new NotificationChannel("brisa-playback", "Reproducción de música", 2);
        notificationChannel.setShowBadge(false);
        notificationChannel.setSound(null, null);
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(notificationChannel);
        this.focus = new AudioFocusRequest.Builder(1).setAudioAttributes(attributes()).setOnAudioFocusChangeListener(new PlaybackService$$ExternalSyntheticLambda5(this)).build();
        this.session = new MediaSession(this, "Brisa");
        this.session.setFlags(3);
        this.session.setCallback(new AnonymousClass2());
        this.session.setActive(false);
    }

    public void visibilityChanged(boolean z) {
        this.handler.removeCallbacks(this.tick);
        if (z && this.desired && this.prepared) {
            this.handler.postDelayed(this.tick, 500L);
        }
    }

    private AudioAttributes attributes() {
        return new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
    }

    static /* synthetic */ boolean lambda$2(List list, String str) {
        return !list.contains(str);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0034 A[Catch: Exception -> 0x01f2, TryCatch #0 {Exception -> 0x01f2, blocks: (B:6:0x000e, B:8:0x0017, B:9:0x001a, B:11:0x0022, B:78:0x01e6, B:80:0x01ea, B:82:0x01ee, B:12:0x002c, B:14:0x0034, B:15:0x0039, B:17:0x0041, B:18:0x0046, B:20:0x004e, B:21:0x0053, B:23:0x005b, B:26:0x0060, B:28:0x0068, B:29:0x006f, B:31:0x0077, B:32:0x007c, B:34:0x0084, B:35:0x0089, B:37:0x0093, B:38:0x009d, B:40:0x00a5, B:41:0x00af, B:43:0x00b7, B:44:0x00c7, B:46:0x00cf, B:48:0x00e6, B:49:0x00f1, B:51:0x00f9, B:52:0x0111, B:54:0x0119, B:57:0x012e, B:60:0x013b, B:62:0x0141, B:64:0x014d, B:65:0x0152, B:66:0x0155, B:67:0x0175, B:69:0x017d, B:70:0x019c, B:71:0x01ac, B:73:0x01b4, B:75:0x01c9, B:77:0x01d1), top: B:87:0x000e }] */
    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 2;
        }
        String action = intent.getAction();
        String stringExtra = intent.getStringExtra("value");
        try {
            if (intent.getBooleanExtra("notification", false)) {
                enterForeground();
            }
            if ("load".equals(action)) {
                load(new JSONObject(stringExtra), false);
            } else if ("play".equals(action)) {
                playAudio();
            } else if ("pause".equals(action)) {
                pauseAudio();
            } else if ("stop".equals(action)) {
                stopAudio();
            } else if ("toggle".equals(action)) {
                if (this.desired) {
                    pauseAudio();
                } else {
                    playAudio();
                }
            } else if ("resetCycle".equals(action)) {
                this.cycle.reset();
            } else if ("next".equals(action)) {
                advance(false);
            } else if ("previous".equals(action)) {
                previous();
            } else if ("back".equals(action)) {
                seek(position() - 10000);
            } else if ("forward".equals(action)) {
                seek(position() + 10000);
            } else if ("seek".equals(action)) {
                seek((long) (Double.parseDouble(stringExtra) * 1000.0d));
            } else if ("volume".equals(action)) {
                this.volume = (float) Math.max(0.0d, Math.min(1.0d, Double.parseDouble(stringExtra)));
                if (this.player != null) {
                    SoundEffects.volume(this, this.player, this.volume);
                }
            } else if ("rate".equals(action)) {
                this.rate = (float) Math.max(0.5d, Math.min(2.0d, Double.parseDouble(stringExtra)));
                applyRate();
            } else if ("queue".equals(action)) {
                JSONObject jSONObject = new JSONObject(stringExtra);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("tracks");
                this.queue = new JSONArray();
                if (jSONArrayOptJSONArray != null) {
                    for (int i3 = 0; i3 < Math.min(jSONArrayOptJSONArray.length(), 5000); i3++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                        if (jSONObjectOptJSONObject != null && Library.resolve(this, jSONObjectOptJSONObject.optString("nativeId")) != null) {
                            this.queue.put(jSONObjectOptJSONObject);
                        }
                    }
                }
                this.autoplay = jSONObject.optBoolean("autoplay", true);
                this.shuffle = jSONObject.optBoolean("shuffle", false);
                this.repeat = jSONObject.optString("repeat", "off");
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < this.queue.length(); i4++) {
                    arrayList.add(keyOf(this.queue.optJSONObject(i4)));
                }
                this.cycle.configure(arrayList, this.shuffle, currentKey());
                this.cycle.visit(currentKey());
                this.playHistory.removeIf(new PlaybackService$$ExternalSyntheticLambda6(arrayList));
            } else if ("sleep".equals(action)) {
                this.handler.removeCallbacks(this.sleeper);
                this.sleepEnd = "end".equals(stringExtra);
                this.sleepFinished = false;
                if (!this.sleepEnd && !"0".equals(stringExtra)) {
                    this.handler.postDelayed(this.sleeper, Math.max(1L, Long.parseLong(stringExtra)) * 60000);
                }
            }
            if (!this.desired && this.foreground) {
                leaveForeground();
            }
        } catch (Exception e) {
            failure("No se pudo reproducir el archivo. Vuelve a seleccionarlo desde Android.");
        }
        return 2;
    }

    private void enterForeground() {
        this.session.setActive(true);
        startForeground(7, notification());
        this.foreground = true;
    }

    private void leaveForeground() {
        if (this.foreground) {
            stopForeground(2);
            this.foreground = false;
        }
    }

    private void load(JSONObject jSONObject, boolean z) {
        load(jSONObject, z, true);
    }

    private void load(JSONObject jSONObject, boolean z, boolean z2) {
        Uri uriResolve = Library.resolve(this, jSONObject.optString("nativeId"));
        if (uriResolve == null) {
            failure("El permiso del archivo ya no está disponible. Añádelo de nuevo.");
            return;
        }
        String strCurrentKey = currentKey();
        String strKeyOf = keyOf(jSONObject);
        if (z2 && !strCurrentKey.isEmpty() && !strCurrentKey.equals(strKeyOf)) {
            this.playHistory.addLast(strCurrentKey);
            if (this.playHistory.size() > 200) {
                this.playHistory.removeFirst();
            }
        }
        this.cycle.visit(strKeyOf);
        this.desired = z;
        this.prepared = false;
        this.pendingSeek = 0L;
        this.seeking = false;
        this.lastError = "";
        if (this.player != null) {
            try {
                SoundEffects.release(this.player);
                this.player.release();
            } catch (Exception e) {
            }
        }
        this.current = jSONObject;
        getSharedPreferences("brisa-player", 0).edit().putString("last", jSONObject.toString()).apply();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.player = mediaPlayer;
        mediaPlayer.setAudioAttributes(attributes());
        mediaPlayer.setWakeMode(this, 1);
        SoundEffects.volume(this, mediaPlayer, this.volume);
        mediaPlayer.setOnPreparedListener(new PlaybackService$$ExternalSyntheticLambda0(this));
        mediaPlayer.setOnSeekCompleteListener(new PlaybackService$$ExternalSyntheticLambda1(this));
        mediaPlayer.setOnCompletionListener(new PlaybackService$$ExternalSyntheticLambda2(this));
        mediaPlayer.setOnErrorListener(new PlaybackService$$ExternalSyntheticLambda3(this));
        try {
            mediaPlayer.setDataSource(this, uriResolve);
            mediaPlayer.prepareAsync();
            if (z) {
                enterForeground();
            }
            publish(false);
        } catch (Exception e2) {
            failure("No se puede leer el archivo. Puede haberse movido o eliminado.");
        }
    }

    /* JADX INFO: renamed from: lambda$3$com-brisa-local-PlaybackService, reason: not valid java name */
    /* synthetic */ void m24lambda$3$combrisalocalPlaybackService(MediaPlayer mediaPlayer) {
        if (mediaPlayer != this.player) {
            return;
        }
        this.prepared = true;
        SoundEffects.attach(this, mediaPlayer);
        if (this.pendingSeek > 0) {
            seek(this.pendingSeek);
        }
        applyRate();
        if (this.desired) {
            startPrepared();
        }
        publish(false);
    }

    /* JADX INFO: renamed from: lambda$4$com-brisa-local-PlaybackService, reason: not valid java name */
    /* synthetic */ void m25lambda$4$combrisalocalPlaybackService(MediaPlayer mediaPlayer) {
        if (mediaPlayer == this.player) {
            this.seeking = false;
            publish(false);
        }
    }

    /* JADX INFO: renamed from: lambda$5$com-brisa-local-PlaybackService, reason: not valid java name */
    /* synthetic */ void m26lambda$5$combrisalocalPlaybackService(MediaPlayer mediaPlayer) {
        if (mediaPlayer != this.player) {
            return;
        }
        if (this.sleepEnd) {
            this.sleepFinished = true;
            this.sleepEnd = false;
        } else {
            if (this.autoplay) {
                advance(true);
                return;
            }
            this.desired = false;
        }
        pauseAudio();
        publish(false);
    }

    /* JADX INFO: renamed from: lambda$6$com-brisa-local-PlaybackService, reason: not valid java name */
    /* synthetic */ boolean m27lambda$6$combrisalocalPlaybackService(MediaPlayer mediaPlayer, int i, int i2) {
        if (mediaPlayer != this.player) {
            return true;
        }
        failure("Android no puede reproducir esta versión del audio. Prueba otro formato.");
        return true;
    }

    static /* synthetic */ void access$4(PlaybackService playbackService) {
        playbackService.playAudio();
    }

    private void playAudio() {
        this.desired = true;
        enterForeground();
        if (this.player != null) {
            if (this.prepared) {
                startPrepared();
            }
            publish(false);
            return;
        }
        try {
            String string = getSharedPreferences("brisa-player", 0).getString("last", null);
            if (string == null) {
                failure("Elige una canción para empezar.");
            } else {
                load(new JSONObject(string), true);
            }
        } catch (Exception e) {
            failure("Elige una canción para empezar.");
        }
    }

    private void startPrepared() {
        if (this.manager.requestAudioFocus(this.focus) != 1) {
            failure("Otra aplicación tiene prioridad sobre el audio.");
            return;
        }
        try {
            enterForeground();
            this.player.start();
            SoundEffects.attach(this, this.player);
            applyRate();
            this.desired = true;
            this.handler.removeCallbacks(this.tick);
            if (MainActivity.isVisible()) {
                this.handler.postDelayed(this.tick, 500L);
            }
            publish(false);
        } catch (Exception e) {
            failure("No se pudo iniciar el audio.");
        }
    }

    private void applyRate() {
        if (this.player == null || !this.prepared) {
            return;
        }
        try {
            if (this.player.isPlaying()) {
                this.player.setPlaybackParams(new PlaybackParams().setSpeed(this.rate).setPitch(1.0f));
            }
        } catch (Exception e) {
        }
    }

    static /* synthetic */ void access$5(PlaybackService playbackService) {
        playbackService.pauseAudio();
    }

    private void pauseAudio() {
        this.desired = false;
        this.handler.removeCallbacks(this.tick);
        if (this.player != null && this.prepared) {
            try {
                this.player.pause();
                SoundEffects.suspend(this.player);
            } catch (Exception e) {
            }
        }
        this.manager.abandonAudioFocusRequest(this.focus);
        leaveForeground();
        publish(false);
    }

    static /* synthetic */ void access$6(PlaybackService playbackService) {
        playbackService.stopAudio();
    }

    private void stopAudio() {
        pauseAudio();
        this.handler.removeCallbacks(this.sleeper);
        if (this.player != null) {
            SoundEffects.release(this.player);
                this.player.release();
            this.player = null;
        }
        this.prepared = false;
        this.session.setActive(false);
        ((NotificationManager) getSystemService("notification")).cancel(7);
        stopSelf();
    }

    static /* synthetic */ void access$7(PlaybackService playbackService, long j) {
        playbackService.seek(j);
    }

    private void seek(long j) {
        long jMax = Math.max(0L, j);
        if (!this.prepared || this.player == null) {
            this.pendingSeek = jMax;
        } else {
            try {
                this.seekPosition = Math.min(jMax, this.player.getDuration());
                this.seeking = true;
                this.player.seekTo(this.seekPosition, 3);
                this.pendingSeek = 0L;
            } catch (Exception e) {
            }
        }
        publish(false);
    }

    static /* synthetic */ long access$10(PlaybackService playbackService) {
        return playbackService.position();
    }

    private long position() {
        if (this.seeking) {
            return this.seekPosition;
        }
        if (this.player == null || !this.prepared) {
            return 0L;
        }
        try {
            return this.player.getCurrentPosition();
        } catch (Exception e) {
            return 0L;
        }
    }

    private String keyOf(JSONObject jSONObject) {
        return jSONObject == null ? "" : jSONObject.optString("key", jSONObject.optString("id"));
    }

    private String currentKey() {
        String strOptString = this.current.optString("id");
        for (int i = 0; i < this.queue.length(); i++) {
            JSONObject jSONObjectOptJSONObject = this.queue.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && strOptString.equals(jSONObjectOptJSONObject.optString("id"))) {
                return keyOf(jSONObjectOptJSONObject);
            }
        }
        return keyOf(this.current);
    }

    private JSONObject findKey(String str) {
        for (int i = 0; i < this.queue.length(); i++) {
            JSONObject jSONObjectOptJSONObject = this.queue.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && keyOf(jSONObjectOptJSONObject).equals(str)) {
                return jSONObjectOptJSONObject;
            }
        }
        return null;
    }

    static /* synthetic */ void access$8(PlaybackService playbackService, boolean z) {
        playbackService.advance(z);
    }

    private void advance(boolean z) {
        String next = this.cycle.next(currentKey(), z, this.repeat);
        if (next == null) {
            pauseAudio();
            return;
        }
        if (z && "one".equals(this.repeat)) {
            seek(0L);
            playAudio();
            return;
        }
        JSONObject jSONObjectFindKey = findKey(next);
        if (jSONObjectFindKey != null) {
            load(jSONObjectFindKey, true);
        } else {
            pauseAudio();
        }
    }

    static /* synthetic */ void access$9(PlaybackService playbackService) {
        playbackService.previous();
    }

    private void previous() {
        if (position() > 3000) {
            seek(0L);
            return;
        }
        while (!this.playHistory.isEmpty()) {
            JSONObject jSONObjectFindKey = findKey(this.playHistory.removeLast());
            if (jSONObjectFindKey != null) {
                load(jSONObjectFindKey, true, false);
                return;
            }
        }
        int i = 0;
        while (true) {
            if (i >= this.queue.length()) {
                i = -1;
                break;
            } else if (keyOf(this.queue.optJSONObject(i)).equals(currentKey())) {
                break;
            } else {
                i++;
            }
        }
        if (i > 0) {
            load(this.queue.optJSONObject(i - 1), true, false);
        } else {
            seek(0L);
        }
    }

    private void failure(String str) {
        this.lastError = str;
        this.seeking = false;
        this.desired = false;
        this.handler.removeCallbacks(this.tick);
        if (this.player != null) {
            try {
                SoundEffects.release(this.player);
                this.player.release();
            } catch (Exception e) {
            }
        }
        this.player = null;
        this.prepared = false;
        leaveForeground();
        JSONObject jSONObjectSnapshot = snapshot();
        try {
            jSONObjectSnapshot.put("error", str);
        } catch (Exception e2) {
        }
        MainActivity.send("receive", jSONObjectSnapshot);
    }

    public synchronized JSONObject snapshot() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.current.optString("id"));
            jSONObject.put("position", position() / 1000.0d);
            jSONObject.put("duration", (this.player == null || !this.prepared) ? this.current.optDouble("duration", 0.0d) : ((double) this.player.getDuration()) / 1000.0d);
            jSONObject.put("playing", this.desired && this.prepared && this.player != null && this.player.isPlaying());
            jSONObject.put("prepared", this.prepared);
            jSONObject.put("rate", this.rate);
            jSONObject.put("volume", this.volume);
            jSONObject.put("sleepFinished", this.sleepFinished);
            if (!this.lastError.isEmpty()) {
                jSONObject.put("error", this.lastError);
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public void publish(boolean z) {
        JSONObject jSONObjectSnapshot = snapshot();
        long jOptDouble = (long) (jSONObjectSnapshot.optDouble("duration") * 1000.0d);
        long jOptDouble2 = (long) (jSONObjectSnapshot.optDouble("position") * 1000.0d);
        boolean zOptBoolean = jSONObjectSnapshot.optBoolean("playing");
        this.session.setMetadata(new MediaMetadata.Builder().putString("android.media.metadata.TITLE", this.current.optString("title", "Brisa")).putString("android.media.metadata.ARTIST", this.current.optString("artist", "")).putLong("android.media.metadata.DURATION", jOptDouble).build());
        PlaybackState.Builder state = new PlaybackState.Builder().setActions(Build.VERSION.SDK_INT < 33 ? 895L : 847L).setState(zOptBoolean ? 3 : 2, jOptDouble2, this.rate, SystemClock.elapsedRealtime());
        if (Build.VERSION.SDK_INT >= 33) {
            for (PlaybackButtons.Button button : PlaybackButtons.layout(zOptBoolean)) {
                if (!button.action.equals("play") && !button.action.equals("pause")) {
                    state.addCustomAction(new PlaybackState.CustomAction.Builder(button.action, button.label, buttonIcon(button.icon)).build());
                }
            }
        }
        this.session.setPlaybackState(state.build());
        if (PlaybackButtons.publish(this.foreground, this.prepared)) {
            ((NotificationManager) getSystemService("notification")).notify(7, notification());
        }
        MainActivity.send("receive", jSONObjectSnapshot);
    }

    private PendingIntent action(String str) {
        return PendingIntent.getForegroundService(this, str.hashCode(), new Intent(this, (Class<?>) PlaybackService.class).setAction(str).putExtra("notification", true), 201326592);
    }

    private int buttonIcon(String str) {
        if ("back10".equals(str)) {
            return R.drawable.ic_back10;
        }
        if ("forward10".equals(str)) {
            return R.drawable.ic_forward10;
        }
        if ("play".equals(str)) {
            return R.drawable.ic_play;
        }
        if ("pause".equals(str)) {
            return R.drawable.ic_pause;
        }
        return "previous".equals(str) ? android.R.drawable.ic_media_previous : android.R.drawable.ic_media_next;
    }

    private Notification notification() {
        boolean zOptBoolean = snapshot().optBoolean("playing");
        Notification.Builder category = new Notification.Builder(this, "brisa-playback").setSmallIcon(R.drawable.ic_music).setContentTitle(this.current.optString("title", "Brisa")).setContentText(this.current.optString("artist", "Tu música, a tu ritmo")).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class), 201326592)).setColor(-4593244).setVisibility(1).setOnlyAlertOnce(true).setOngoing(zOptBoolean).setCategory("transport");
        for (PlaybackButtons.Button button : PlaybackButtons.layout(zOptBoolean)) {
            category.addAction(new Notification.Action.Builder(buttonIcon(button.icon), button.label, action(button.action)).build());
        }
        return category.setStyle(new Notification.MediaStyle().setMediaSession(this.session.getSessionToken()).setShowActionsInCompactView(0, 1, 2)).build();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        stopAudio();
        super.onTaskRemoved(intent);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.handler.removeCallbacksAndMessages(null);
        if (this.player != null) {
            SoundEffects.release(this.player);
                this.player.release();
            this.player = null;
        }
        this.prepared = false;
        this.desired = false;
        this.manager.abandonAudioFocusRequest(this.focus);
        this.session.release();
        instance = null;
        super.onDestroy();
    }
}
