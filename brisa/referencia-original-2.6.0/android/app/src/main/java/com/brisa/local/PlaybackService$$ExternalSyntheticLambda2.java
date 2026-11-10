package com.brisa.local;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PlaybackService$$ExternalSyntheticLambda2 implements MediaPlayer.OnCompletionListener {
    public final /* synthetic */ PlaybackService f$0;

    public /* synthetic */ PlaybackService$$ExternalSyntheticLambda2(PlaybackService playbackService) {
        this.f$0 = playbackService;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        this.f$0.m26lambda$5$combrisalocalPlaybackService(mediaPlayer);
    }
}
