package com.brisa.local;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class QueueCycle {
    private boolean enabled;
    private List<String> order;
    private final Random random;
    private List<String> remaining;
    private Set<String> seen;

    QueueCycle() {
        this(new Random());
    }

    QueueCycle(Random random) {
        this.order = new ArrayList();
        this.remaining = new ArrayList();
        this.seen = new HashSet();
        this.random = random;
    }

    void configure(List<String> list, boolean z, String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet(list);
        this.order = new ArrayList(linkedHashSet);
        if (z && !this.enabled) {
            this.seen.clear();
            if (str != null) {
                this.seen.add(str);
            }
            this.remaining.clear();
        }
        this.enabled = z;
        this.seen.retainAll(linkedHashSet);
        this.remaining.removeIf(new QueueCycle$$ExternalSyntheticLambda0(this, linkedHashSet));
        HashSet hashSet = new HashSet(this.remaining);
        ArrayList arrayList = new ArrayList();
        for (String str2 : this.order) {
            if (!this.seen.contains(str2) && !hashSet.contains(str2)) {
                arrayList.add(str2);
            }
        }
        Collections.shuffle(arrayList, this.random);
        this.remaining.addAll(arrayList);
    }

    /* JADX INFO: renamed from: lambda$0$com-brisa-local-QueueCycle, reason: not valid java name */
    /* synthetic */ boolean m28lambda$0$combrisalocalQueueCycle(Set set, String str) {
        return !set.contains(str) || this.seen.contains(str);
    }

    void reset() {
        this.seen.clear();
        this.remaining = new ArrayList(this.order);
        Collections.shuffle(this.remaining, this.random);
    }

    void visit(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        this.seen.add(str);
        this.remaining.remove(str);
    }

    String next(String str, boolean z, String str2) {
        String str3;
        if (this.order.isEmpty()) {
            return null;
        }
        if (z && "one".equals(str2) && this.order.contains(str)) {
            return str;
        }
        if (!this.enabled) {
            int iIndexOf = this.order.indexOf(str);
            if (iIndexOf < 0) {
                str3 = this.order.get(0);
            } else {
                int i = iIndexOf + 1;
                if (i >= this.order.size()) {
                    if (!z || "all".equals(str2)) {
                        return this.order.get(0);
                    }
                    return null;
                }
                str3 = this.order.get(i);
            }
            return str3;
        }
        visit(str);
        if (this.remaining.isEmpty()) {
            if (z && !"all".equals(str2)) {
                return null;
            }
            this.seen.clear();
            if (this.order.contains(str)) {
                this.seen.add(str);
            }
            this.remaining = new ArrayList();
            for (String str4 : this.order) {
                if (!str4.equals(str)) {
                    this.remaining.add(str4);
                }
            }
            Collections.shuffle(this.remaining, this.random);
            if (this.remaining.isEmpty()) {
                return this.order.get(0);
            }
        }
        String str5 = this.remaining.get(0);
        visit(str5);
        return str5;
    }
}
