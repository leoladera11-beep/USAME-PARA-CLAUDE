package com.brisa.local;

import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class QueueCycle$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ QueueCycle f$0;
    public final /* synthetic */ Set f$1;

    public /* synthetic */ QueueCycle$$ExternalSyntheticLambda0(QueueCycle queueCycle, Set set) {
        this.f$0 = queueCycle;
        this.f$1 = set;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f$0.m28lambda$0$combrisalocalQueueCycle(this.f$1, (String) obj);
    }
}
