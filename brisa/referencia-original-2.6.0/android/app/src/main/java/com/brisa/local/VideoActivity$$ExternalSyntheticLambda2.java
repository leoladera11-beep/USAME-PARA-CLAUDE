package com.brisa.local;

import android.media.MediaPlayer;
import android.widget.TextView;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class VideoActivity$$ExternalSyntheticLambda2 implements MediaPlayer.OnPreparedListener {
    public final /* synthetic */ VideoActivity f$0;
    public final /* synthetic */ TextView f$1;

    public /* synthetic */ VideoActivity$$ExternalSyntheticLambda2(VideoActivity videoActivity, TextView textView) {
        this.f$0 = videoActivity;
        this.f$1 = textView;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        this.f$0.m30lambda$2$combrisalocalVideoActivity(this.f$1, mediaPlayer);
    }
}
