package com.brisa.local;

import java.util.List;
import java.util.function.Predicate;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PlaybackService$$ExternalSyntheticLambda6 implements Predicate {
    public final /* synthetic */ List f$0;

    public /* synthetic */ PlaybackService$$ExternalSyntheticLambda6(List list) {
        this.f$0 = list;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return PlaybackService.lambda$2(this.f$0, (String) obj);
    }
}
