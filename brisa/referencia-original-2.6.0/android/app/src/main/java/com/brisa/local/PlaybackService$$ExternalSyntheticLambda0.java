package com.brisa.local;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PlaybackService$$ExternalSyntheticLambda0 implements MediaPlayer.OnPreparedListener {
    public final /* synthetic */ PlaybackService f$0;

    public /* synthetic */ PlaybackService$$ExternalSyntheticLambda0(PlaybackService playbackService) {
        this.f$0 = playbackService;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        this.f$0.m24lambda$3$combrisalocalPlaybackService(mediaPlayer);
    }
}
