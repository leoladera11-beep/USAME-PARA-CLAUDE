package com.brisa.local;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class VideoActivity$$ExternalSyntheticLambda3 implements MediaPlayer.OnErrorListener {
    public final /* synthetic */ VideoActivity f$0;

    public /* synthetic */ VideoActivity$$ExternalSyntheticLambda3(VideoActivity videoActivity) {
        this.f$0 = videoActivity;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return this.f$0.m31lambda$3$combrisalocalVideoActivity(mediaPlayer, i, i2);
    }
}
