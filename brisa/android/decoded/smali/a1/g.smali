.class public final La1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/m;
.implements LR0/b0;
.implements LV/a;
.implements Lc1/h;
.implements Lq2/t;
.implements Ls1/c;
.implements Ls1/b;
.implements Lu1/o0;
.implements Ld/b;


# static fields
.field public static f:La1/g;


# instance fields
.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p1, LB1/u;->a:[B

    sget-object p1, LB1/p;->b:LB1/p;

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 4
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 5
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 7
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 9
    :sswitch_3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    const-string v0, "timeUnit"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p1, La2/l;

    .line 12
    sget-object v0, LZ1/d;->i:LZ1/d;

    .line 13
    invoke-direct {p1, v0}, La2/l;-><init>(LZ1/d;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 16
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 18
    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p1

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 20
    :sswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 22
    :sswitch_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 23
    new-array p1, p1, [LE0/e;

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    .line 24
    :sswitch_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x6 -> :sswitch_6
        0xc -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, La1/g;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs G(Landroid/content/pm/PackageInfo;[La1/k;)La1/k;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, La1/l;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, La1/l;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, La1/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final H(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_4

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_1

    move p1, v0

    :cond_3
    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz p0, :cond_6

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    sget-object p0, La1/m;->a:[La1/k;

    invoke-static {v2, p0}, La1/g;->G(Landroid/content/pm/PackageInfo;[La1/k;)La1/k;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object p0, La1/m;->a:[La1/k;

    aget-object p0, p0, v1

    filled-new-array {p0}, [La1/k;

    move-result-object p0

    invoke-static {v2, p0}, La1/g;->G(Landroid/content/pm/PackageInfo;[La1/k;)La1/k;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public static x(Landroid/content/Context;)La1/g;
    .locals 4

    invoke-static {p0}, Ld1/s;->d(Ljava/lang/Object;)V

    const-class v0, La1/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, La1/g;->f:La1/g;

    if-nez v1, :cond_1

    sget-object v1, La1/n;->a:La1/j;

    const-class v1, La1/n;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, La1/n;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, La1/n;->c:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_3
    const-string v2, "GoogleCertificates"

    const-string v3, "GoogleCertificates has been initialized already"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    :goto_0
    new-instance v1, La1/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, La1/g;->e:Ljava/lang/Object;

    sput-object v1, La1/g;->f:La1/g;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_1
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object p0, La1/g;->f:La1/g;

    return-object p0

    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public static y(Landroid/content/Intent;)Landroid/view/KeyEvent;
    .locals 3

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/KeyEvent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DefaultActionFactory"

    const-string v2, "Failed to get parcelable key event"

    invoke-static {v0, v2, p0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public A()Lb0/i;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb0/i;

    iget-object v6, v5, Lb0/i;->b:[I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lb0/i;->c:[J

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lb0/i;->d:[J

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Lb0/i;->e:[J

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Lb0/i;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [[I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    array-length v5, v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v5, :cond_1

    aget-object v10, v0, v9

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    long-to-int v5, v6

    int-to-long v9, v5

    cmp-long v9, v6, v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    const-string v10, "the total number of elements (%s) in the arrays must fit in an int"

    invoke-static {v10, v6, v7, v9}, LF1/i;->e(Ljava/lang/String;JZ)V

    new-array v5, v5, [I

    array-length v6, v0

    move v7, v8

    move v9, v7

    :goto_3
    if-ge v7, v6, :cond_3

    aget-object v10, v0, v7

    array-length v11, v10

    invoke-static {v10, v8, v5, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v10

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[J

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    invoke-static {v0}, Le/a;->c([[J)[J

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[J

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    invoke-static {v1}, Le/a;->c([[J)[J

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[J

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    invoke-static {v2}, Le/a;->c([[J)[J

    move-result-object v2

    invoke-direct {v4, v5, v0, v1, v2}, Lb0/i;-><init>([I[J[J[J)V

    return-object v4
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    invoke-virtual {v0}, Lz/A;->M()V

    return-void
.end method

.method public C(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, LP/S;

    iget-object v0, v0, LP/S;->O0:LP/t;

    iget-object v1, v0, LP/t;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LP/r;

    const/4 v3, 0x7

    invoke-direct {v2, v0, p1, v3}, LP/r;-><init>(LP/t;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public D(LE0/e;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v1, [LE0/e;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(JJI)V
    .locals 10

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lt0/g;

    iget-object v1, v0, Lt0/g;->q0:Lb0/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eq p5, v1, :cond_e

    const/16 v1, 0xa0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq p5, v1, :cond_d

    const/16 v1, 0xae

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq p5, v1, :cond_c

    const/16 v1, 0xbb

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p5, v1, :cond_a

    const/16 v1, 0x4dbb

    const-wide/16 v8, -0x1

    if-eq p5, v1, :cond_9

    const/16 v1, 0x5035

    if-eq p5, v1, :cond_8

    const v1, 0x18538067

    if-eq p5, v1, :cond_5

    const p1, 0x1c53bb6b

    if-eq p5, p1, :cond_4

    const p1, 0x1f43b675

    if-eq p5, p1, :cond_2

    const/16 p1, 0xb6

    if-eq p5, p1, :cond_1

    const/16 p1, 0xb7

    if-eq p5, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, v0, Lt0/g;->C:Z

    if-nez p1, :cond_b

    invoke-virtual {v0, p5}, Lt0/g;->g(I)V

    iput v6, v0, Lt0/g;->I:I

    iput-wide v8, v0, Lt0/g;->J:J

    iput-wide v8, v0, Lt0/g;->K:J

    return-void

    :cond_1
    new-instance p1, Lt0/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-wide v3, p1, Lt0/c;->b:J

    iput-wide v3, p1, Lt0/c;->c:J

    iput-object p1, v0, Lt0/g;->A:Lt0/c;

    return-void

    :cond_2
    iget-wide p1, v0, Lt0/g;->P:J

    cmp-long p1, p1, v8

    if-eqz p1, :cond_3

    iget-boolean p1, v0, Lt0/g;->S:Z

    if-nez p1, :cond_3

    iput-boolean v7, v0, Lt0/g;->Q:Z

    return-void

    :cond_3
    invoke-virtual {v0}, Lt0/g;->m()V

    return-void

    :cond_4
    iget-boolean p1, v0, Lt0/g;->C:Z

    if-nez p1, :cond_b

    iput-boolean v7, v0, Lt0/g;->G:Z

    return-void

    :cond_5
    iget-wide v3, v0, Lt0/g;->u:J

    cmp-long p5, v3, v8

    if-eqz p5, :cond_7

    cmp-long p5, v3, p1

    if-nez p5, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "Multiple Segment elements not supported"

    invoke-static {v2, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :cond_7
    :goto_0
    iput-wide p1, v0, Lt0/g;->u:J

    iput-wide p3, v0, Lt0/g;->t:J

    return-void

    :cond_8
    invoke-virtual {v0, p5}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-boolean v7, p1, Lt0/f;->j:Z

    return-void

    :cond_9
    iput v6, v0, Lt0/g;->D:I

    iput-wide v8, v0, Lt0/g;->E:J

    return-void

    :cond_a
    iget-boolean p1, v0, Lt0/g;->C:Z

    if-nez p1, :cond_b

    invoke-virtual {v0, p5}, Lt0/g;->g(I)V

    iput-wide v3, v0, Lt0/g;->H:J

    :cond_b
    :goto_1
    return-void

    :cond_c
    new-instance p1, Lt0/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v6, p1, Lt0/f;->o:I

    iput v6, p1, Lt0/f;->p:I

    iput v6, p1, Lt0/f;->q:I

    iput v6, p1, Lt0/f;->r:I

    iput v6, p1, Lt0/f;->s:I

    iput v5, p1, Lt0/f;->t:I

    iput v6, p1, Lt0/f;->u:I

    const/4 p2, 0x0

    iput p2, p1, Lt0/f;->v:F

    iput p2, p1, Lt0/f;->w:F

    iput p2, p1, Lt0/f;->x:F

    iput-object v2, p1, Lt0/f;->y:[B

    iput v6, p1, Lt0/f;->z:I

    iput v6, p1, Lt0/f;->A:I

    iput v6, p1, Lt0/f;->B:I

    iput v6, p1, Lt0/f;->C:I

    const/16 p2, 0x3e8

    iput p2, p1, Lt0/f;->D:I

    const/16 p2, 0xc8

    iput p2, p1, Lt0/f;->E:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Lt0/f;->F:F

    iput p2, p1, Lt0/f;->G:F

    iput p2, p1, Lt0/f;->H:F

    iput p2, p1, Lt0/f;->I:F

    iput p2, p1, Lt0/f;->J:F

    iput p2, p1, Lt0/f;->K:F

    iput p2, p1, Lt0/f;->L:F

    iput p2, p1, Lt0/f;->M:F

    iput p2, p1, Lt0/f;->N:F

    iput p2, p1, Lt0/f;->O:F

    iput v7, p1, Lt0/f;->Q:I

    iput v6, p1, Lt0/f;->R:I

    iput v6, p1, Lt0/f;->S:I

    const/16 p2, 0x1f40

    iput p2, p1, Lt0/f;->T:I

    iput-wide v3, p1, Lt0/f;->U:J

    iput-wide v3, p1, Lt0/f;->V:J

    iput-boolean v5, p1, Lt0/f;->X:Z

    iput-boolean v7, p1, Lt0/f;->b0:Z

    const-string p2, "eng"

    iput-object p2, p1, Lt0/f;->c0:Ljava/lang/String;

    iput-object p1, v0, Lt0/g;->B:Lt0/f;

    iget-boolean p2, v0, Lt0/g;->y:Z

    iput-boolean p2, p1, Lt0/f;->a:Z

    return-void

    :cond_d
    iput-boolean v5, v0, Lt0/g;->f0:Z

    iput-wide v3, v0, Lt0/g;->g0:J

    return-void

    :cond_e
    invoke-virtual {v0, p5}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-object v2, p1, Lt0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, p5}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-object v2, p1, Lt0/c;->i:Ljava/lang/String;

    return-void
.end method

.method public F(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lt0/g;

    const/16 v1, 0x85

    if-eq p1, v1, :cond_7

    const/16 v1, 0x86

    if-eq p1, v1, :cond_6

    const/16 v1, 0x4282

    if-eq p1, v1, :cond_3

    const/16 v1, 0x437c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x536e

    if-eq p1, v1, :cond_1

    const v1, 0x22b59c

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-object p2, p1, Lt0/f;->c0:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-object p2, p1, Lt0/f;->b:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-object p2, p1, Lt0/c;->i:Ljava/lang/String;

    return-void

    :cond_3
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "matroska"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DocType "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :cond_5
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lt0/g;->y:Z

    return-void

    :cond_6
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-object p2, p1, Lt0/f;->c:Ljava/lang/String;

    return-void

    :cond_7
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-object p2, p1, Lt0/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(J)Lu1/P;
    .locals 5

    invoke-virtual {p0, p1, p2}, La1/g;->w(J)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    return-object p1

    :cond_0
    iget-object v1, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/a;

    iget-wide v1, v0, Ly0/a;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    cmp-long p1, p1, v1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    return-object p1

    :cond_2
    :goto_0
    iget-object p1, v0, Ly0/a;->a:Lu1/P;

    return-object p1
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lf1/c;

    check-cast p2, Ls1/d;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lf1/a;

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ld1/i;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p1, Lm1/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v2, Ln1/a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v1, v3}, Ld1/i;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    :try_start_0
    iget-object p1, p1, Lm1/a;->b:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p2, v0}, Ls1/d;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ld/a;

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v1, v0, Lz/A;->C:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/x;

    const-string v2, "FragmentManager"

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No Activities were started for result for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, v1, Lz/x;->e:Ljava/lang/String;

    iget v1, v1, Lz/x;->f:I

    iget-object v0, v0, Lz/A;->c:LB0/b;

    invoke-virtual {v0, v3}, LB0/b;->e(Ljava/lang/String;)Lz/m;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Activity result delivered for unknown Fragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p1, Ld/a;->e:I

    iget-object p1, p1, Ld/a;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1}, Lz/m;->s(IILandroid/content/Intent;)V

    return-void
.end method

.method public c(J)J
    .locals 12

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly0/a;

    iget-wide v4, v4, Ly0/a;->b:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly0/a;

    iget-wide p1, p1, Ly0/a;->b:J

    return-wide p1

    :cond_1
    const/4 v1, 0x1

    move v4, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly0/a;

    iget-wide v8, v5, Ly0/a;->b:J

    iget-wide v10, v5, Ly0/a;->b:J

    cmp-long v5, p1, v8

    if-gez v5, :cond_3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/a;

    iget-wide v0, v0, Ly0/a;->d:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    cmp-long p1, v0, v10

    if-gez p1, :cond_2

    return-wide v0

    :cond_2
    return-wide v10

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lu1/s;->k(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/a;

    iget-wide v0, v0, Ly0/a;->d:J

    cmp-long v4, v0, v6

    if-eqz v4, :cond_5

    cmp-long p1, p1, v0

    if-gez p1, :cond_5

    return-wide v0

    :cond_5
    return-wide v2
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, La1/g;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v1, v0, LR0/F;->n:I

    invoke-virtual {v0}, LR0/F;->y()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public h(Lo2/p;I)V
    .locals 4

    iget-object p2, p0, La1/g;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/StringBuilder;

    instance-of v0, p1, Lo2/j;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lo2/j;

    invoke-virtual {p1}, Lo2/p;->q()Lo2/p;

    move-result-object p1

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lp2/E;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget v1, v1, Lp2/E;->h:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lo2/j;->i:Lo2/i;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Lo2/p;->g(I)Lo2/p;

    move-result-object v2

    instance-of v3, v2, Lo2/j;

    if-eqz v3, :cond_0

    check-cast v2, Lo2/j;

    invoke-virtual {v2}, Lo2/j;->P()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    instance-of v0, p1, Lo2/x;

    if-nez v0, :cond_3

    instance-of v0, p1, Lo2/j;

    if-eqz v0, :cond_4

    check-cast p1, Lo2/j;

    iget-object p1, p1, Lo2/j;->h:Lp2/E;

    iget p1, p1, Lp2/E;->h:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {p2}, Lo2/x;->I(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public j(Lo2/p;I)V
    .locals 9

    iget-object p2, p0, La1/g;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/StringBuilder;

    instance-of v0, p1, Lo2/x;

    if-eqz v0, :cond_0

    check-cast p1, Lo2/x;

    invoke-static {p2, p1}, Lo2/j;->H(Ljava/lang/StringBuilder;Lo2/x;)V

    return-void

    :cond_0
    instance-of v0, p1, Lo2/j;

    if-eqz v0, :cond_f

    check-cast p1, Lo2/j;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p1}, Lo2/j;->P()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "br"

    invoke-virtual {p1, v0}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lo2/j;->h:Lp2/E;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lp2/E;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_f

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v2, p1

    move v3, v1

    :goto_0
    if-eqz v2, :cond_d

    instance-of v4, v2, Lo2/x;

    const/4 v5, 0x1

    const/4 v6, 0x5

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lo2/x;

    invoke-virtual {v4}, Lo2/o;->F()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-ne v4, v6, :cond_2

    goto :goto_5

    :cond_2
    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lo2/p;->h()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v2, v1}, Lo2/p;->g(I)Lo2/p;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lo2/p;->q()Lo2/p;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-nez v6, :cond_8

    if-gtz v3, :cond_4

    goto :goto_3

    :cond_4
    if-eq v4, v5, :cond_5

    if-ne v4, v8, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    iget-object v6, v2, Lo2/p;->e:Lo2/j;

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v7, :cond_7

    invoke-virtual {v2}, Lo2/p;->z()V

    :cond_7
    move v4, v5

    move-object v2, v6

    goto :goto_2

    :cond_8
    :goto_3
    if-eq v4, v5, :cond_a

    if-ne v4, v8, :cond_9

    goto :goto_4

    :cond_9
    move v5, v4

    :cond_a
    :goto_4
    if-ne v2, p1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lo2/p;->q()Lo2/p;

    move-result-object v4

    if-ne v5, v7, :cond_c

    invoke-virtual {v2}, Lo2/p;->z()V

    :cond_c
    move-object v2, v4

    goto :goto_0

    :cond_d
    :goto_5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    invoke-static {p2}, Lo2/x;->I(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_f

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method public k(Ly0/a;J)Z
    .locals 10

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-wide v1, p1, Ly0/a;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, LF1/i;->g(Z)V

    cmp-long v5, v1, p2

    if-gtz v5, :cond_2

    iget-wide v8, p1, Ly0/a;->d:J

    cmp-long v3, v8, v3

    if-eqz v3, :cond_1

    cmp-long v3, p2, v8

    if-gez v3, :cond_2

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    :goto_2
    if-ltz v4, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly0/a;

    iget-wide v8, v5, Ly0/a;->b:J

    cmp-long v5, v1, v8

    if-ltz v5, :cond_3

    add-int/2addr v4, v7

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v3

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly0/a;

    iget-wide v8, v5, Ly0/a;->b:J

    cmp-long v5, v8, p2

    if-gtz v5, :cond_4

    move v3, v6

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v3
.end method

.method public l([BIILy0/l;LJ/k;)V
    .locals 16

    move/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v2, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v2, LJ/D;

    add-int v3, v0, p3

    move-object/from16 v4, p1

    invoke-virtual {v2, v4, v3}, LJ/D;->L([BI)V

    invoke-virtual {v2, v0}, LJ/D;->N(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-lt v0, v5, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    const-string v6, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-static {v6, v0}, LF1/i;->f(Ljava/lang/String;Z)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v0

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v6

    const v7, 0x76747463

    if-ne v6, v7, :cond_7

    add-int/lit8 v0, v0, -0x8

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :cond_1
    :goto_2
    if-lez v0, :cond_4

    if-lt v0, v5, :cond_2

    move v10, v4

    goto :goto_3

    :cond_2
    move v10, v3

    :goto_3
    const-string v11, "Incomplete vtt cue box header found."

    invoke-static {v11, v10}, LF1/i;->f(Ljava/lang/String;Z)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v10

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v11

    add-int/lit8 v0, v0, -0x8

    sub-int/2addr v10, v5

    iget-object v12, v2, LJ/D;->a:[B

    iget v13, v2, LJ/D;->b:I

    sget-object v14, LJ/W;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v12, v13, v10, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v10}, LJ/D;->O(I)V

    sub-int/2addr v0, v10

    const v10, 0x73747467

    if-ne v11, v10, :cond_3

    new-instance v8, LH0/h;

    invoke-direct {v8}, LH0/h;-><init>()V

    invoke-static {v14, v8}, LH0/i;->e(Ljava/lang/String;LH0/h;)V

    invoke-virtual {v8}, LH0/h;->a()LI/a;

    move-result-object v8

    goto :goto_2

    :cond_3
    const v10, 0x7061796c

    if-ne v11, v10, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v6, v7, v10}, LH0/i;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v7

    goto :goto_2

    :cond_4
    if-nez v7, :cond_5

    const-string v7, ""

    :cond_5
    if-eqz v8, :cond_6

    iput-object v7, v8, LI/a;->a:Ljava/lang/CharSequence;

    iput-object v6, v8, LI/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, LI/a;->a()LI/b;

    move-result-object v0

    goto :goto_4

    :cond_6
    sget-object v0, LH0/i;->a:Ljava/util/regex/Pattern;

    new-instance v0, LH0/h;

    invoke-direct {v0}, LH0/h;-><init>()V

    iput-object v7, v0, LH0/h;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0}, LH0/h;->a()LI/a;

    move-result-object v0

    invoke-virtual {v0}, LI/a;->a()LI/b;

    move-result-object v0

    :goto_4
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v2, v0}, LJ/D;->O(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ly0/a;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v4 .. v9}, Ly0/a;-><init>(JJLjava/util/List;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, LJ/k;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public m(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0, p1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public n(J)J
    .locals 8

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/a;

    iget-wide v4, v1, Ly0/a;->b:J

    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    move v4, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly0/a;

    iget-wide v5, v5, Ly0/a;->b:J

    cmp-long v7, p1, v5

    if-nez v7, :cond_1

    return-wide v5

    :cond_1
    if-gez v7, :cond_3

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/a;

    iget-wide v4, v0, Ly0/a;->d:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    cmp-long p1, v4, p1

    if-gtz p1, :cond_2

    return-wide v4

    :cond_2
    iget-wide p1, v0, Ly0/a;->b:J

    return-wide p1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lu1/s;->k(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/a;

    iget-wide v4, v0, Ly0/a;->d:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    cmp-long p1, p1, v4

    if-gez p1, :cond_5

    goto :goto_1

    :cond_5
    return-wide v4

    :cond_6
    :goto_1
    iget-wide p1, v0, Ly0/a;->b:J

    return-wide p1

    :cond_7
    :goto_2
    return-wide v2
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0}, LR0/F;->B()I

    move-result v0

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, La1/g;->e:Ljava/lang/Object;

    check-cast p1, Lt1/j;

    invoke-interface {p1, p2}, Lt1/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(J)V
    .locals 6

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, La1/g;->w(J)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/a;

    iget-wide v2, v2, Ly0/a;->d:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long p1, v2, p1

    if-ltz p1, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public t(Lb0/i;)V
    .locals 5

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lb0/i;->e:[J

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lb0/i;->e:[J

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, LM0/i2;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, LM0/i2;-><init>(I)V

    iget-object v2, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(IILb0/o;)V
    .locals 23

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget-object v4, v2, La1/g;->e:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lt0/g;

    iget-object v4, v5, Lt0/g;->b:Lt0/h;

    iget-object v6, v5, Lt0/g;->c:Landroid/util/SparseArray;

    iget-object v7, v5, Lt0/g;->m:LJ/D;

    iget-object v8, v5, Lt0/g;->k:LJ/D;

    const/16 v9, 0xa1

    const/16 v10, 0xa3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v0, v9, :cond_e

    if-eq v0, v10, :cond_e

    const/16 v4, 0xa5

    if-eq v0, v4, :cond_8

    const/16 v4, 0x41ed

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4255

    if-eq v0, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v0, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v0, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v0, v4, :cond_0

    invoke-virtual {v5, v0}, Lt0/g;->h(I)V

    iget-object v0, v5, Lt0/g;->B:Lt0/f;

    new-array v4, v1, [B

    iput-object v4, v0, Lt0/f;->y:[B

    invoke-interface {v3, v4, v14, v1}, Lb0/o;->readFully([BII)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v5, v0}, Lt0/g;->h(I)V

    iget-object v0, v5, Lt0/g;->B:Lt0/f;

    new-array v4, v1, [B

    iput-object v4, v0, Lt0/f;->m:[B

    invoke-interface {v3, v4, v14, v1}, Lb0/o;->readFully([BII)V

    return-void

    :cond_2
    iget-object v0, v7, LJ/D;->a:[B

    invoke-static {v0, v14}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v7, LJ/D;->a:[B

    rsub-int/lit8 v4, v1, 0x4

    invoke-interface {v3, v0, v4, v1}, Lb0/o;->readFully([BII)V

    invoke-virtual {v7, v14}, LJ/D;->N(I)V

    invoke-virtual {v7}, LJ/D;->C()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v5, Lt0/g;->D:I

    return-void

    :cond_3
    new-array v4, v1, [B

    invoke-interface {v3, v4, v14, v1}, Lb0/o;->readFully([BII)V

    invoke-virtual {v5, v0}, Lt0/g;->h(I)V

    iget-object v0, v5, Lt0/g;->B:Lt0/f;

    new-instance v1, Lb0/F;

    invoke-direct {v1, v15, v14, v14, v4}, Lb0/F;-><init>(III[B)V

    iput-object v1, v0, Lt0/f;->l:Lb0/F;

    return-void

    :cond_4
    invoke-virtual {v5, v0}, Lt0/g;->h(I)V

    iget-object v0, v5, Lt0/g;->B:Lt0/f;

    new-array v4, v1, [B

    iput-object v4, v0, Lt0/f;->k:[B

    invoke-interface {v3, v4, v14, v1}, Lb0/o;->readFully([BII)V

    return-void

    :cond_5
    invoke-virtual {v5, v0}, Lt0/g;->h(I)V

    iget-object v0, v5, Lt0/g;->B:Lt0/f;

    iget v4, v0, Lt0/f;->i:I

    const v5, 0x64767643

    if-eq v4, v5, :cond_7

    const v5, 0x64766343

    if-ne v4, v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v3, v1}, Lb0/o;->p(I)V

    return-void

    :cond_7
    :goto_0
    new-array v4, v1, [B

    iput-object v4, v0, Lt0/f;->P:[B

    invoke-interface {v3, v4, v14, v1}, Lb0/o;->readFully([BII)V

    return-void

    :cond_8
    iget v0, v5, Lt0/g;->V:I

    if-eq v0, v12, :cond_9

    goto/16 :goto_12

    :cond_9
    iget v0, v5, Lt0/g;->b0:I

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt0/f;

    iget v4, v5, Lt0/g;->e0:I

    iget-object v6, v5, Lt0/g;->r:LJ/D;

    if-ne v4, v13, :cond_d

    const-string v4, "V_VP9"

    iget-object v0, v0, Lt0/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6, v1}, LJ/D;->K(I)V

    iget-object v0, v6, LJ/D;->a:[B

    invoke-interface {v3, v0, v14, v1}, Lb0/o;->readFully([BII)V

    iget-boolean v0, v5, Lt0/g;->f:Z

    if-nez v0, :cond_28

    iget-object v0, v6, LJ/D;->a:[B

    sget-object v3, LJ/h;->d:[B

    array-length v4, v3

    if-ge v1, v4, :cond_a

    goto/16 :goto_12

    :cond_a
    move v1, v14

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_c

    aget-byte v4, v0, v1

    aget-byte v5, v3, v1

    if-eq v4, v5, :cond_b

    goto/16 :goto_12

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    invoke-virtual {v6, v14}, LJ/D;->K(I)V

    return-void

    :cond_d
    invoke-interface {v3, v1}, Lb0/o;->p(I)V

    return-void

    :cond_e
    iget v7, v5, Lt0/g;->V:I

    const/16 v9, 0x8

    if-nez v7, :cond_f

    invoke-virtual {v4, v3, v14, v15, v9}, Lt0/h;->b(Lb0/o;ZZI)J

    move-result-wide v10

    long-to-int v10, v10

    iput v10, v5, Lt0/g;->b0:I

    iget v4, v4, Lt0/h;->c:I

    iput v4, v5, Lt0/g;->c0:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v5, Lt0/g;->X:J

    iput v15, v5, Lt0/g;->V:I

    invoke-virtual {v8, v14}, LJ/D;->K(I)V

    :cond_f
    iget v4, v5, Lt0/g;->b0:I

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lt0/f;

    if-nez v6, :cond_10

    iget v0, v5, Lt0/g;->c0:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, Lb0/o;->p(I)V

    iput v14, v5, Lt0/g;->V:I

    return-void

    :cond_10
    iget-object v4, v6, Lt0/f;->d0:Lb0/G;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v5, Lt0/g;->V:I

    if-ne v4, v15, :cond_24

    const/4 v4, 0x3

    invoke-virtual {v5, v3, v4}, Lt0/g;->p(Lb0/o;I)V

    iget-object v10, v8, LJ/D;->a:[B

    aget-byte v10, v10, v12

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v15

    const/16 v11, 0xff

    if-nez v10, :cond_13

    iput v15, v5, Lt0/g;->Z:I

    iget-object v10, v5, Lt0/g;->a0:[I

    if-nez v10, :cond_11

    new-array v10, v15, [I

    goto :goto_2

    :cond_11
    array-length v13, v10

    if-lt v13, v15, :cond_12

    goto :goto_2

    :cond_12
    array-length v10, v10

    mul-int/2addr v10, v12

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    :goto_2
    iput-object v10, v5, Lt0/g;->a0:[I

    iget v13, v5, Lt0/g;->c0:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v4

    aput v1, v10, v14

    :goto_3
    move/from16 v19, v12

    move/from16 v17, v14

    move/from16 v20, v15

    goto/16 :goto_c

    :cond_13
    invoke-virtual {v5, v3, v13}, Lt0/g;->p(Lb0/o;I)V

    iget-object v7, v8, LJ/D;->a:[B

    aget-byte v7, v7, v4

    and-int/2addr v7, v11

    add-int/2addr v7, v15

    iput v7, v5, Lt0/g;->Z:I

    move/from16 v17, v13

    iget-object v13, v5, Lt0/g;->a0:[I

    if-nez v13, :cond_14

    new-array v13, v7, [I

    goto :goto_4

    :cond_14
    array-length v9, v13

    if-lt v9, v7, :cond_15

    goto :goto_4

    :cond_15
    array-length v9, v13

    mul-int/2addr v9, v12

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v13, v7, [I

    :goto_4
    iput-object v13, v5, Lt0/g;->a0:[I

    if-ne v10, v12, :cond_16

    iget v4, v5, Lt0/g;->c0:I

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x4

    iget v4, v5, Lt0/g;->Z:I

    div-int/2addr v1, v4

    invoke-static {v13, v14, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_3

    :cond_16
    if-ne v10, v15, :cond_19

    move v4, v14

    move v7, v4

    move/from16 v13, v17

    :goto_5
    iget v9, v5, Lt0/g;->Z:I

    sub-int/2addr v9, v15

    if-ge v4, v9, :cond_18

    iget-object v9, v5, Lt0/g;->a0:[I

    aput v14, v9, v4

    :goto_6
    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v5, v3, v9}, Lt0/g;->p(Lb0/o;I)V

    iget-object v10, v8, LJ/D;->a:[B

    aget-byte v10, v10, v13

    and-int/2addr v10, v11

    iget-object v13, v5, Lt0/g;->a0:[I

    aget v16, v13, v4

    add-int v16, v16, v10

    aput v16, v13, v4

    if-eq v10, v11, :cond_17

    add-int v7, v7, v16

    add-int/lit8 v4, v4, 0x1

    move v13, v9

    goto :goto_5

    :cond_17
    move v13, v9

    goto :goto_6

    :cond_18
    iget-object v4, v5, Lt0/g;->a0:[I

    iget v10, v5, Lt0/g;->c0:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v13

    sub-int/2addr v1, v7

    aput v1, v4, v9

    goto :goto_3

    :cond_19
    if-ne v10, v4, :cond_25

    move v4, v14

    move v7, v4

    move/from16 v13, v17

    :goto_7
    iget v9, v5, Lt0/g;->Z:I

    sub-int/2addr v9, v15

    if-ge v4, v9, :cond_21

    iget-object v9, v5, Lt0/g;->a0:[I

    aput v14, v9, v4

    add-int/lit8 v9, v13, 0x1

    invoke-virtual {v5, v3, v9}, Lt0/g;->p(Lb0/o;I)V

    iget-object v10, v8, LJ/D;->a:[B

    aget-byte v10, v10, v13

    if-eqz v10, :cond_20

    move v10, v14

    move/from16 v17, v10

    :goto_8
    const/16 v14, 0x8

    if-ge v10, v14, :cond_1c

    rsub-int/lit8 v14, v10, 0x7

    shl-int v14, v15, v14

    move/from16 v19, v12

    iget-object v12, v8, LJ/D;->a:[B

    aget-byte v12, v12, v13

    and-int/2addr v12, v14

    if-eqz v12, :cond_1b

    add-int v12, v9, v10

    invoke-virtual {v5, v3, v12}, Lt0/g;->p(Lb0/o;I)V

    move/from16 v20, v15

    iget-object v15, v8, LJ/D;->a:[B

    aget-byte v13, v15, v13

    and-int/2addr v13, v11

    not-int v14, v14

    and-int/2addr v13, v14

    int-to-long v13, v13

    :goto_9
    if-ge v9, v12, :cond_1a

    const/16 v18, 0x8

    shl-long v13, v13, v18

    iget-object v15, v8, LJ/D;->a:[B

    add-int/lit8 v21, v9, 0x1

    aget-byte v9, v15, v9

    and-int/2addr v9, v11

    move/from16 v22, v12

    int-to-long v11, v9

    or-long/2addr v13, v11

    move/from16 v9, v21

    move/from16 v12, v22

    const/16 v11, 0xff

    goto :goto_9

    :cond_1a
    move/from16 v22, v12

    if-lez v4, :cond_1d

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    const-wide/16 v11, 0x1

    shl-long v9, v11, v10

    sub-long/2addr v9, v11

    sub-long/2addr v13, v9

    goto :goto_a

    :cond_1b
    move/from16 v20, v15

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v19

    const/16 v11, 0xff

    goto :goto_8

    :cond_1c
    move/from16 v19, v12

    move/from16 v20, v15

    const-wide/16 v13, 0x0

    move/from16 v22, v9

    :cond_1d
    :goto_a
    const-wide/32 v9, -0x80000000

    cmp-long v9, v13, v9

    if-ltz v9, :cond_1f

    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v13, v9

    if-gtz v9, :cond_1f

    long-to-int v9, v13

    iget-object v10, v5, Lt0/g;->a0:[I

    if-nez v4, :cond_1e

    goto :goto_b

    :cond_1e
    add-int/lit8 v11, v4, -0x1

    aget v11, v10, v11

    add-int/2addr v9, v11

    :goto_b
    aput v9, v10, v4

    add-int/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v17

    move/from16 v12, v19

    move/from16 v15, v20

    move/from16 v13, v22

    const/16 v11, 0xff

    goto/16 :goto_7

    :cond_1f
    const-string v0, "EBML lacing sample size out of range."

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_20
    const/4 v1, 0x0

    const-string v0, "No valid varint length mask found"

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_21
    move/from16 v19, v12

    move/from16 v17, v14

    move/from16 v20, v15

    iget-object v4, v5, Lt0/g;->a0:[I

    iget v10, v5, Lt0/g;->c0:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v13

    sub-int/2addr v1, v7

    aput v1, v4, v9

    :goto_c
    iget-object v1, v8, LJ/D;->a:[B

    aget-byte v4, v1, v17

    const/16 v18, 0x8

    shl-int/lit8 v4, v4, 0x8

    aget-byte v1, v1, v20

    const/16 v15, 0xff

    and-int/2addr v1, v15

    or-int/2addr v1, v4

    iget-wide v9, v5, Lt0/g;->T:J

    int-to-long v11, v1

    invoke-virtual {v5, v11, v12}, Lt0/g;->r(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    iput-wide v11, v5, Lt0/g;->W:J

    iget v1, v6, Lt0/f;->f:I

    move/from16 v4, v20

    if-eq v1, v4, :cond_23

    const/16 v7, 0xa3

    if-ne v0, v7, :cond_22

    iget-object v1, v8, LJ/D;->a:[B

    aget-byte v1, v1, v19

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_22

    goto :goto_d

    :cond_22
    move/from16 v1, v17

    goto :goto_e

    :cond_23
    :goto_d
    const/4 v1, 0x1

    :goto_e
    iput v1, v5, Lt0/g;->d0:I

    move/from16 v1, v19

    iput v1, v5, Lt0/g;->V:I

    move/from16 v1, v17

    iput v1, v5, Lt0/g;->Y:I

    :cond_24
    const/16 v7, 0xa3

    goto :goto_f

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :goto_f
    if-ne v0, v7, :cond_27

    :goto_10
    iget v0, v5, Lt0/g;->Y:I

    iget v1, v5, Lt0/g;->Z:I

    if-ge v0, v1, :cond_26

    iget-object v1, v5, Lt0/g;->a0:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v5, v3, v6, v0, v1}, Lt0/g;->t(Lb0/o;Lt0/f;IZ)I

    move-result v10

    iget-wide v0, v5, Lt0/g;->W:J

    iget v4, v5, Lt0/g;->Y:I

    iget v7, v6, Lt0/f;->g:I

    mul-int/2addr v4, v7

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    add-long/2addr v7, v0

    iget v9, v5, Lt0/g;->d0:I

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lt0/g;->i(Lt0/f;JIII)V

    iget v0, v5, Lt0/g;->Y:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v5, Lt0/g;->Y:I

    goto :goto_10

    :cond_26
    const/4 v1, 0x0

    iput v1, v5, Lt0/g;->V:I

    return-void

    :cond_27
    const/4 v4, 0x1

    :goto_11
    iget v0, v5, Lt0/g;->Y:I

    iget v1, v5, Lt0/g;->Z:I

    if-ge v0, v1, :cond_28

    iget-object v1, v5, Lt0/g;->a0:[I

    aget v7, v1, v0

    invoke-virtual {v5, v3, v6, v7, v4}, Lt0/g;->t(Lb0/o;Lt0/f;IZ)I

    move-result v7

    aput v7, v1, v0

    iget v0, v5, Lt0/g;->Y:I

    add-int/2addr v0, v4

    iput v0, v5, Lt0/g;->Y:I

    goto :goto_11

    :cond_28
    :goto_12
    return-void
.end method

.method public w(J)I
    .locals 4

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/a;

    iget-wide v2, v2, Ly0/a;->b:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public z(IJ)V
    .locals 10

    iget-object v0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lt0/g;

    const/16 v1, 0x88

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-eq p1, v1, :cond_21

    const/16 v1, 0x89

    if-eq p1, v1, :cond_20

    const/16 v1, 0x91

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x92

    if-eq p1, v1, :cond_1e

    const/16 v1, 0xf0

    const-wide/16 v6, -0x1

    if-eq p1, v1, :cond_1c

    const/16 v1, 0xf1

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x5031

    const/4 v6, 0x0

    const-string v7, " not supported"

    if-eq p1, v1, :cond_19

    const/16 v1, 0x5032

    if-eq p1, v1, :cond_17

    const/16 v1, 0x73c4

    if-eq p1, v1, :cond_16

    const/16 v1, 0x73c5

    if-eq p1, v1, :cond_15

    const/4 v1, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->E:I

    return-void

    :pswitch_1
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->D:I

    return-void

    :pswitch_2
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    long-to-int p1, p2

    invoke-static {p1}, LG/n;->g(I)I

    move-result p1

    if-eq p1, v1, :cond_1d

    iget-object p2, v0, Lt0/g;->B:Lt0/f;

    iput p1, p2, Lt0/f;->A:I

    return-void

    :pswitch_3
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    long-to-int p1, p2

    invoke-static {p1}, LG/n;->h(I)I

    move-result p1

    if-eq p1, v1, :cond_1d

    iget-object p2, v0, Lt0/g;->B:Lt0/f;

    iput p1, p2, Lt0/f;->B:I

    return-void

    :pswitch_4
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    long-to-int p1, p2

    if-eq p1, v5, :cond_1

    if-eq p1, v9, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v5, p1, Lt0/f;->C:I

    return-void

    :cond_1
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v9, p1, Lt0/f;->C:I

    return-void

    :sswitch_0
    iput-wide p2, v0, Lt0/g;->v:J

    return-void

    :sswitch_1
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->g:I

    return-void

    :sswitch_2
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v9, :cond_3

    if-eq p1, v8, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v8, p1, Lt0/f;->u:I

    return-void

    :cond_3
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v9, p1, Lt0/f;->u:I

    return-void

    :cond_4
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v5, p1, Lt0/f;->u:I

    return-void

    :cond_5
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v2, p1, Lt0/f;->u:I

    return-void

    :sswitch_3
    iput-wide p2, v0, Lt0/g;->g0:J

    return-void

    :sswitch_4
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->R:I

    return-void

    :sswitch_5
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-wide p2, p1, Lt0/f;->V:J

    return-void

    :sswitch_6
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-wide p2, p1, Lt0/f;->U:J

    return-void

    :sswitch_7
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->h:I

    return-void

    :sswitch_8
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->q:I

    return-void

    :sswitch_9
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v2, v5

    :cond_6
    iput-boolean v2, p1, Lt0/f;->a0:Z

    return-void

    :sswitch_a
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->s:I

    return-void

    :sswitch_b
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->t:I

    return-void

    :sswitch_c
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->r:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    if-eqz p2, :cond_a

    if-eq p2, v5, :cond_9

    if-eq p2, v8, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v8, p1, Lt0/f;->z:I

    return-void

    :cond_8
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v5, p1, Lt0/f;->z:I

    return-void

    :cond_9
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v9, p1, Lt0/f;->z:I

    return-void

    :cond_a
    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v2, p1, Lt0/f;->z:I

    return-void

    :sswitch_e
    iget-wide v1, v0, Lt0/g;->u:J

    add-long/2addr p2, v1

    iput-wide p2, v0, Lt0/g;->E:J

    return-void

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AESSettingsCipherMode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EBMLReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DocTypeReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v0, 0x3

    cmp-long p1, p2, v0

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentCompAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :sswitch_14
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->i:I

    return-void

    :sswitch_15
    iput-boolean v5, v0, Lt0/g;->f0:Z

    return-void

    :sswitch_16
    iget-boolean v1, v0, Lt0/g;->C:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Lt0/g;->g(I)V

    long-to-int p1, p2

    iput p1, v0, Lt0/g;->I:I

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, v0, Lt0/g;->e0:I

    return-void

    :sswitch_18
    invoke-virtual {v0, p2, p3}, Lt0/g;->r(J)J

    move-result-wide p1

    iput-wide p1, v0, Lt0/g;->T:J

    return-void

    :sswitch_19
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->d:I

    return-void

    :sswitch_1a
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->p:I

    return-void

    :sswitch_1b
    iget-boolean v1, v0, Lt0/g;->C:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Lt0/g;->g(I)V

    invoke-virtual {v0, p2, p3}, Lt0/g;->r(J)J

    move-result-wide p1

    iput-wide p1, v0, Lt0/g;->H:J

    return-void

    :sswitch_1c
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->o:I

    return-void

    :sswitch_1d
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    long-to-int p2, p2

    iput p2, p1, Lt0/f;->Q:I

    return-void

    :sswitch_1e
    invoke-virtual {v0, p2, p3}, Lt0/g;->r(J)J

    move-result-wide p1

    iput-wide p1, v0, Lt0/g;->X:J

    return-void

    :sswitch_1f
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v2, v5

    :cond_10
    iput-boolean v2, p1, Lt0/c;->d:Z

    return-void

    :sswitch_20
    long-to-int p2, p2

    if-eq p2, v5, :cond_14

    if-eq p2, v9, :cond_13

    const/16 p3, 0x11

    if-eq p2, p3, :cond_12

    const/16 p3, 0x21

    if-eq p2, p3, :cond_11

    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v1, p1, Lt0/f;->f:I

    return-void

    :cond_11
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    const/4 p2, 0x5

    iput p2, p1, Lt0/f;->f:I

    return-void

    :cond_12
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v8, p1, Lt0/f;->f:I

    return-void

    :cond_13
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v5, p1, Lt0/f;->f:I

    return-void

    :cond_14
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput v9, p1, Lt0/f;->f:I

    return-void

    :cond_15
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    iput-wide p2, p1, Lt0/f;->e:J

    return-void

    :cond_16
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-wide p2, p1, Lt0/c;->a:J

    return-void

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingScope "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :cond_19
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingOrder "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p1

    throw p1

    :cond_1b
    iget-boolean v1, v0, Lt0/g;->C:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Lt0/g;->g(I)V

    iget-wide v1, v0, Lt0/g;->J:J

    cmp-long p1, v1, v6

    if-nez p1, :cond_1d

    iput-wide p2, v0, Lt0/g;->J:J

    return-void

    :cond_1c
    iget-boolean v1, v0, Lt0/g;->C:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Lt0/g;->g(I)V

    iget-wide v1, v0, Lt0/g;->K:J

    cmp-long p1, v1, v6

    if-nez p1, :cond_1d

    iput-wide p2, v0, Lt0/g;->K:J

    :cond_1d
    :goto_0
    return-void

    :cond_1e
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-wide p2, p1, Lt0/c;->c:J

    return-void

    :cond_1f
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-wide p2, p1, Lt0/c;->b:J

    return-void

    :cond_20
    invoke-virtual {v0, p1}, Lt0/g;->k(I)Lt0/c;

    move-result-object p1

    iput-wide p2, p1, Lt0/c;->e:J

    return-void

    :cond_21
    invoke-virtual {v0, p1}, Lt0/g;->h(I)V

    iget-object p1, v0, Lt0/g;->B:Lt0/f;

    cmp-long p2, p2, v3

    if-nez p2, :cond_22

    move v2, v5

    :cond_22
    iput-boolean v2, p1, Lt0/f;->b0:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x98 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
