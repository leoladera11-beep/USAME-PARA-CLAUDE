package com.brisa.local;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PlaybackService$$ExternalSyntheticLambda3 implements MediaPlayer.OnErrorListener {
    public final /* synthetic */ PlaybackService f$0;

    public /* synthetic */ PlaybackService$$ExternalSyntheticLambda3(PlaybackService playbackService) {
        this.f$0 = playbackService;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return this.f$0.m27lambda$6$combrisalocalPlaybackService(mediaPlayer, i, i2);
    }
}
