package com.brisa.local;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PlaybackService$$ExternalSyntheticLambda1 implements MediaPlayer.OnSeekCompleteListener {
    public final /* synthetic */ PlaybackService f$0;

    public /* synthetic */ PlaybackService$$ExternalSyntheticLambda1(PlaybackService playbackService) {
        this.f$0 = playbackService;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        this.f$0.m25lambda$4$combrisalocalPlaybackService(mediaPlayer);
    }
}
