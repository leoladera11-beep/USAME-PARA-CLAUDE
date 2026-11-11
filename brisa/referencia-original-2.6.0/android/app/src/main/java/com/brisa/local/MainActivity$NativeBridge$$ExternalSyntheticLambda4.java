package com.brisa.local;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class MainActivity$NativeBridge$$ExternalSyntheticLambda4 implements Runnable {
    public final /* synthetic */ MainActivity.NativeBridge f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ MainActivity$NativeBridge$$ExternalSyntheticLambda4(MainActivity.NativeBridge nativeBridge, String str, String str2) {
        this.f$0 = nativeBridge;
        this.f$1 = str;
        this.f$2 = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.m13lambda$10$combrisalocalMainActivity$NativeBridge(this.f$1, this.f$2);
    }
}
