package com.brisa.local;

import android.net.Uri;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class AudioImport$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ AudioImport f$0;
    public final /* synthetic */ List f$1;
    public final /* synthetic */ Uri f$2;

    public /* synthetic */ AudioImport$$ExternalSyntheticLambda1(AudioImport audioImport, List list, Uri uri) {
        this.f$0 = audioImport;
        this.f$1 = list;
        this.f$2 = uri;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.m0lambda$0$combrisalocalAudioImport(this.f$1, this.f$2);
    }
}
