package com.brisa.local;

import android.media.AudioManager;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PlaybackService$$ExternalSyntheticLambda5 implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ PlaybackService f$0;

    public /* synthetic */ PlaybackService$$ExternalSyntheticLambda5(PlaybackService playbackService) {
        this.f$0 = playbackService;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f$0.m23lambda$1$combrisalocalPlaybackService(i);
    }
}
