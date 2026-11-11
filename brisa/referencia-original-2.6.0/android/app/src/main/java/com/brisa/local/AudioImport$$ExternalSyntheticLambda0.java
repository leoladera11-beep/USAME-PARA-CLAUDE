package com.brisa.local;

import android.net.Uri;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class AudioImport$$ExternalSyntheticLambda0 implements MusicTree.Source {
    public final /* synthetic */ AudioImport f$0;
    public final /* synthetic */ Uri f$1;

    public /* synthetic */ AudioImport$$ExternalSyntheticLambda0(AudioImport audioImport, Uri uri) {
        this.f$0 = audioImport;
        this.f$1 = uri;
    }

    @Override // com.brisa.local.MusicTree.Source
    public final MusicTree.Rows children(String str) throws Exception {
        return this.f$0.m1lambda$1$combrisalocalAudioImport(this.f$1, str);
    }
}
