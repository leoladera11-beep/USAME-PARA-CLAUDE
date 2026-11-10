.class public final LM0/W1;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements LM0/q;


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:LB/A;

.field public final c:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public d:Lu1/B0;

.field public e:Lu1/H0;

.field public f:I

.field public g:Lu1/H;

.field public h:Lu1/H;

.field public i:I

.field public j:LG/q0;

.field public k:LM0/V1;

.field public l:LM0/U1;


# direct methods
.method public constructor <init>(LM0/X0;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media3.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, LB/A;

    invoke-direct {v0, p1}, LB/A;-><init>(LM0/X0;)V

    iput-object v0, p0, LM0/W1;->b:LB/A;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, LM0/W1;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object p1, Lu1/B0;->m:Lu1/B0;

    iput-object p1, p0, LM0/W1;->d:Lu1/B0;

    sget-object v0, Lu1/H0;->k:Lu1/H0;

    iput-object v0, p0, LM0/W1;->e:Lu1/H0;

    iput-object p1, p0, LM0/W1;->g:Lu1/H;

    iput-object p1, p0, LM0/W1;->h:Lu1/H;

    const/4 p1, 0x0

    iput p1, p0, LM0/W1;->i:I

    return-void
.end method

.method public static I0(LM0/X0;LM0/N0;ILM0/T1;LJ/k;)Lz1/B;
    .locals 6

    invoke-virtual {p0}, LM0/X0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lz1/x;->f:Lz1/x;

    return-object p0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, LM0/T1;->i(LM0/X0;LM0/N0;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lz1/B;

    new-instance v2, Lz1/H;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v0, LM0/B0;

    const/16 v5, 0x8

    move-object v1, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p0, Lz1/s;->e:Lz1/s;

    invoke-interface {v4, v0, p0}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public static Q0(LM0/X0;LM0/N0;ILM0/m2;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, LM0/N0;->e:LM0/M0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p2, p3}, LM0/M0;->i(ILM0/m2;)V

    iget-object p0, p0, LM0/X0;->c:LM0/U0;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p2}, LM0/U0;->a(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to send result to controller "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionStub"

    invoke-static {p2, p1, p0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static R0(LJ/k;)LI0/E;
    .locals 2

    new-instance v0, LI0/E;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LI0/E;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final A(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final B(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final C(LG/f0;)LG/f0;
    .locals 12

    new-instance v0, LG/f0;

    iget-object v1, p1, LG/f0;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    move-object v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, LM0/W1;->g:Lu1/H;

    invoke-virtual {v3, v1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    move-object v3, v2

    :goto_1
    iget v2, p1, LG/f0;->b:I

    move-object v4, v3

    iget-object v3, p1, LG/f0;->c:LG/P;

    iget-object v5, p1, LG/f0;->d:Ljava/lang/Object;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, LM0/W1;->h:Lu1/H;

    invoke-virtual {v4, v5}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v4, v5

    :cond_3
    :goto_2
    iget v5, p1, LG/f0;->e:I

    iget-wide v6, p1, LG/f0;->f:J

    iget-wide v8, p1, LG/f0;->g:J

    iget v10, p1, LG/f0;->h:I

    iget v11, p1, LG/f0;->i:I

    invoke-direct/range {v0 .. v11}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    return-object v0
.end method

.method public final C0(LM0/o;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LG/l0;

    const/4 v1, 0x7

    invoke-direct {v0, p3, v1}, LG/l0;-><init>(II)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x19

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D0(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final E(LM0/o;ILandroid/os/Bundle;J)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/J;

    invoke-direct {v0, p4, p5, p3}, LM0/J;-><init>(JLjava/lang/Object;)V

    new-instance p3, LM0/E1;

    const/16 p4, 0x17

    invoke-direct {p3, p4}, LM0/E1;-><init>(I)V

    new-instance p4, LM0/K;

    const/16 p5, 0xd

    invoke-direct {p4, v0, p3, p5}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, LM0/K1;

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p4, 0x1f

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final E0(LM0/o;ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p3}, LG/w0;->b(Landroid/os/Bundle;)LG/w0;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, LM0/K;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p3, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x1d

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for TrackSelectionParameters"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final F(LM0/o;IIILandroid/os/IBinder;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/B1;

    const/4 v1, 0x0

    invoke-direct {v0, p5, v1}, LM0/B1;-><init>(Landroid/os/IBinder;I)V

    new-instance p5, LM0/z1;

    invoke-direct {p5, p0, p3, p4}, LM0/z1;-><init>(LM0/W1;II)V

    new-instance p3, LM0/K;

    const/16 p4, 0xe

    invoke-direct {p3, v0, p5, p4}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, LM0/K1;

    const/4 p5, 0x1

    invoke-direct {p4, p3, p5}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final G(LM0/o;IIII)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-lt p4, p3, :cond_1

    if-gez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/G1;

    invoke-direct {v0, p3, p4, p5}, LM0/G1;-><init>(III)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final G0(LM0/o;ILM0/S1;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/X0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LM0/X0;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, LM0/F0;

    invoke-direct {v2, p0, p1, p3, p2}, LM0/F0;-><init>(LM0/W1;Landroid/os/IBinder;LM0/S1;I)V

    invoke-virtual {p0, v2}, LM0/W1;->L0(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final H0(LM0/o;ILM0/i2;ILM0/T1;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v0, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LM0/X0;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LM0/X0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, LM0/J1;

    move-object v1, p0

    move v5, p2

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, LM0/J1;-><init>(LM0/W1;Landroid/os/IBinder;LM0/i2;LM0/X0;IILM0/T1;)V

    invoke-virtual {p0, v0}, LM0/W1;->L0(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final J(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V
    .locals 7

    invoke-static {p4}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-static {p3}, LM0/i2;->a(Landroid/os/Bundle;)LM0/i2;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p3, v3, LM0/i2;->b:Ljava/lang/String;

    invoke-static {p3}, LM0/c;->n(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_1
    iget-object p5, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v4, p5

    check-cast v4, LM0/X0;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LM0/X0;->l()Z

    move-result p5

    if-eqz p5, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, LM0/L1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    move-object v6, p1

    move v5, p2

    :try_start_2
    invoke-direct/range {v0 .. v6}, LM0/L1;-><init>(LM0/W1;Landroid/os/IBinder;LM0/i2;LM0/X0;ILM0/o;)V

    invoke-virtual {p0, v0}, LM0/W1;->L0(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move v3, p2

    new-instance p1, LM0/E1;

    invoke-direct {p1, p5, v4, p4}, LM0/E1;-><init>(ZLM0/i2;Landroid/os/Bundle;)V

    new-instance v6, LM0/K1;

    const/4 p2, 0x1

    invoke-direct {v6, p1, p2}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final J0(LM0/N0;LM0/d2;I)I
    .locals 2

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, LM0/d2;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LM0/W1;->b:LB/A;

    invoke-virtual {v1, p1, v0}, LB/A;->L(LM0/N0;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {v1, p1, v0}, LB/A;->L(LM0/N0;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, LM0/d2;->V()I

    move-result p1

    add-int/2addr p1, p3

    return p1

    :cond_0
    return p3
.end method

.method public final K(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final K0(LM0/N0;I)V
    .locals 2

    new-instance v0, LM0/K;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p1, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    return-void
.end method

.method public final L(LM0/o;ILandroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/F1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, LM0/F1;-><init>(Ljava/lang/Object;ZI)V

    new-instance p3, LM0/E1;

    const/16 p4, 0x17

    invoke-direct {p3, p4}, LM0/E1;-><init>(I)V

    new-instance p4, LM0/K;

    const/16 v1, 0xd

    invoke-direct {p4, v0, p3, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {p3, p4, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p4, 0x1f

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final L0(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-eqz v0, :cond_0

    iget-object v0, v0, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v0, p1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final M(LM0/o;IILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/w0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p4}, LM0/w0;-><init>(ILandroid/os/Bundle;)V

    new-instance p4, LM0/C1;

    invoke-direct {p4, p0, p3, v1}, LM0/C1;-><init>(LM0/W1;II)V

    new-instance p3, LM0/K;

    const/16 v1, 0xe

    invoke-direct {p3, v0, p4, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {p4, p3, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final M0(LM0/N0;IILM0/T1;)V
    .locals 3

    iget-object v0, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/X0;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, v1, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->o(Z)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, LM0/W1;->b:LB/A;

    invoke-virtual {v1, p1}, LB/A;->K(LM0/N0;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1, p3}, LB/A;->L(LM0/N0;I)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance p3, LM0/m2;

    const/4 p4, -0x4

    invoke-direct {p3, p4}, LM0/m2;-><init>(I)V

    invoke-static {v0, p1, p2, p3}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    return-void

    :cond_4
    iget-object v2, v0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v0, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1b

    if-ne p3, v2, :cond_5

    invoke-interface {p4, v0, p1, p2}, LM0/T1;->i(LM0/X0;LM0/N0;I)Ljava/lang/Object;

    new-instance p2, LM0/M1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p1, p3, p2}, LB/A;->p(LM0/N0;ILM0/f;)V

    return-void

    :cond_5
    new-instance v2, LM0/N1;

    invoke-direct {v2, p4, v0, p1, p2}, LM0/N1;-><init>(LM0/T1;LM0/X0;LM0/N0;I)V

    invoke-virtual {v1, p1, p3, v2}, LB/A;->p(LM0/N0;ILM0/f;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final N(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final N0()V
    .locals 3

    iget-object v0, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, LM0/W1;->b:LB/A;

    iget-object v1, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {v0}, LB/A;->z()Lu1/P;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/N0;

    invoke-virtual {v0, v2}, LB/A;->Q(LM0/N0;)V

    iget-object v2, v2, LM0/N0;->e:LM0/M0;

    if-eqz v2, :cond_0

    invoke-interface {v2}, LM0/M0;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LM0/W1;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/N0;

    iget-object v2, v2, LM0/N0;->e:LM0/M0;

    if-eqz v2, :cond_2

    invoke-interface {v2}, LM0/M0;->b()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public final O(LM0/o;ILandroid/os/IBinder;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/B1;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1}, LM0/B1;-><init>(Landroid/os/IBinder;I)V

    new-instance p3, LM0/E1;

    const/4 v1, 0x7

    invoke-direct {p3, v1}, LM0/E1;-><init>(I)V

    new-instance v1, LM0/K;

    const/16 v2, 0xe

    invoke-direct {v1, v0, p3, v2}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {p3, v1, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 v0, 0x14

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final O0(LG/f0;Ljava/util/HashMap;)V
    .locals 1

    iget-object p1, p1, LG/f0;->d:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM0/W1;->h:Lu1/H;

    invoke-virtual {v0, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final P(LM0/o;III)V
    .locals 2

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/H;

    const/4 v1, 0x4

    invoke-direct {v0, p3, p4, v1}, LM0/H;-><init>(III)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final P0(LG/f0;Ljava/util/HashMap;)V
    .locals 1

    iget-object p1, p1, LG/f0;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM0/W1;->g:Lu1/H;

    invoke-virtual {v0, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final R(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LM0/W1;->J(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final S0(LM0/b2;)LM0/b2;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, LM0/b2;->j:LG/q0;

    iget-object v3, v1, LM0/b2;->d:LG/f0;

    iget-object v4, v1, LM0/b2;->e:LG/f0;

    iget-object v5, v1, LM0/b2;->c:LM0/l2;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v1

    :cond_0
    iget-object v6, v0, LM0/W1;->j:LG/q0;

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    iget-object v6, v0, LM0/W1;->k:LM0/V1;

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, LG/p0;

    invoke-direct {v10}, LG/p0;-><init>()V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v2}, LG/q0;->o()I

    move-result v12

    const/16 v13, 0x24

    if-ge v11, v12, :cond_4

    invoke-virtual {v2, v11, v10}, LG/q0;->n(ILG/p0;)V

    iget-object v12, v10, LG/p0;->a:Ljava/lang/Object;

    if-eqz v12, :cond_3

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v0, LM0/W1;->g:Lu1/H;

    iget-object v14, v10, LG/p0;->a:Ljava/lang/Object;

    invoke-virtual {v12, v14}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v14, v10, LG/p0;->a:Ljava/lang/Object;

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    iget v12, v0, LM0/W1;->i:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, LM0/W1;->i:I

    sget-object v15, LJ/W;->a:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v6, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    new-instance v10, LG/n0;

    invoke-direct {v10}, LG/n0;-><init>()V

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v2}, LG/q0;->h()I

    move-result v12

    if-ge v11, v12, :cond_9

    invoke-virtual {v2, v11, v10, v8}, LG/q0;->f(ILG/n0;Z)LG/n0;

    iget-object v12, v10, LG/n0;->b:Ljava/lang/Object;

    if-eqz v12, :cond_6

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v0, LM0/W1;->h:Lu1/H;

    iget-object v14, v10, LG/n0;->b:Ljava/lang/Object;

    invoke-virtual {v12, v14}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v14, v10, LG/n0;->b:Ljava/lang/Object;

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    iget v12, v0, LM0/W1;->i:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, LM0/W1;->i:I

    sget-object v15, LJ/W;->a:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v9, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v12, v10, LG/n0;->a:Ljava/lang/Object;

    if-eqz v12, :cond_8

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, v0, LM0/W1;->h:Lu1/H;

    iget-object v14, v10, LG/n0;->a:Ljava/lang/Object;

    invoke-virtual {v12, v14}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v14, v10, LG/n0;->a:Ljava/lang/Object;

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    iget v12, v0, LM0/W1;->i:I

    add-int/lit8 v15, v12, 0x1

    iput v15, v0, LM0/W1;->i:I

    sget-object v15, LJ/W;->a:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-virtual {v9, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_9
    iget-object v10, v5, LM0/l2;->a:LG/f0;

    invoke-virtual {v0, v10, v6}, LM0/W1;->P0(LG/f0;Ljava/util/HashMap;)V

    invoke-virtual {v0, v3, v6}, LM0/W1;->P0(LG/f0;Ljava/util/HashMap;)V

    invoke-virtual {v0, v4, v6}, LM0/W1;->P0(LG/f0;Ljava/util/HashMap;)V

    iget-object v10, v5, LM0/l2;->a:LG/f0;

    invoke-virtual {v0, v10, v9}, LM0/W1;->O0(LG/f0;Ljava/util/HashMap;)V

    invoke-virtual {v0, v3, v9}, LM0/W1;->O0(LG/f0;Ljava/util/HashMap;)V

    invoke-virtual {v0, v4, v9}, LM0/W1;->O0(LG/f0;Ljava/util/HashMap;)V

    invoke-static {v6}, Lu1/H;->f(Ljava/util/HashMap;)Lu1/H;

    move-result-object v6

    iput-object v6, v0, LM0/W1;->g:Lu1/H;

    invoke-static {v9}, Lu1/H;->f(Ljava/util/HashMap;)Lu1/H;

    move-result-object v6

    iput-object v6, v0, LM0/W1;->h:Lu1/H;

    iput-object v2, v0, LM0/W1;->j:LG/q0;

    new-instance v6, LM0/V1;

    iget-object v9, v0, LM0/W1;->g:Lu1/H;

    iget-object v10, v0, LM0/W1;->h:Lu1/H;

    invoke-direct {v6, v2, v9, v10}, LM0/V1;-><init>(LG/q0;Lu1/H;Lu1/H;)V

    iput-object v6, v0, LM0/W1;->k:LM0/V1;

    :goto_5
    new-instance v14, LM0/l2;

    iget-object v2, v5, LM0/l2;->a:LG/f0;

    invoke-virtual {v0, v2}, LM0/W1;->C(LG/f0;)LG/f0;

    move-result-object v10

    iget-boolean v11, v5, LM0/l2;->b:Z

    iget-wide v12, v5, LM0/l2;->c:J

    move-object v9, v14

    iget-wide v14, v5, LM0/l2;->d:J

    iget-wide v7, v5, LM0/l2;->e:J

    iget v2, v5, LM0/l2;->f:I

    move-wide/from16 v16, v7

    iget-wide v7, v5, LM0/l2;->g:J

    move-wide/from16 v19, v7

    iget-wide v7, v5, LM0/l2;->h:J

    move-wide/from16 v21, v7

    iget-wide v7, v5, LM0/l2;->i:J

    move-wide/from16 v23, v7

    iget-wide v7, v5, LM0/l2;->j:J

    move/from16 v18, v2

    move-wide/from16 v25, v7

    invoke-direct/range {v9 .. v26}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    invoke-virtual {v0, v3}, LM0/W1;->C(LG/f0;)LG/f0;

    move-result-object v15

    invoke-virtual {v0, v4}, LM0/W1;->C(LG/f0;)LG/f0;

    move-result-object v16

    iget-object v12, v1, LM0/b2;->a:LG/Z;

    iget v13, v1, LM0/b2;->b:I

    iget v2, v1, LM0/b2;->f:I

    iget-object v3, v1, LM0/b2;->g:LG/a0;

    iget v4, v1, LM0/b2;->h:I

    iget-boolean v5, v1, LM0/b2;->i:Z

    iget v7, v1, LM0/b2;->k:I

    iget-object v8, v1, LM0/b2;->l:LG/C0;

    iget-object v10, v1, LM0/b2;->m:LG/T;

    iget v11, v1, LM0/b2;->n:F

    iget v14, v1, LM0/b2;->o:F

    iget v0, v1, LM0/b2;->p:I

    move/from16 v17, v0

    iget-object v0, v1, LM0/b2;->q:LG/e;

    move-object/from16 v18, v0

    iget-object v0, v1, LM0/b2;->r:LI/c;

    move-object/from16 v29, v0

    iget-object v0, v1, LM0/b2;->s:LG/p;

    move-object/from16 v30, v0

    iget v0, v1, LM0/b2;->t:I

    move/from16 v31, v0

    iget-boolean v0, v1, LM0/b2;->u:Z

    move/from16 v32, v0

    iget-boolean v0, v1, LM0/b2;->v:Z

    move/from16 v33, v0

    iget v0, v1, LM0/b2;->w:I

    move/from16 v34, v0

    iget-boolean v0, v1, LM0/b2;->x:Z

    move/from16 v37, v0

    iget-boolean v0, v1, LM0/b2;->y:Z

    move/from16 v38, v0

    iget v0, v1, LM0/b2;->z:I

    move/from16 v35, v0

    iget v0, v1, LM0/b2;->A:I

    move/from16 v36, v0

    iget-object v0, v1, LM0/b2;->B:LG/T;

    move/from16 v19, v2

    move-object/from16 v20, v3

    iget-wide v2, v1, LM0/b2;->C:J

    move-wide/from16 v40, v2

    iget-wide v2, v1, LM0/b2;->D:J

    move-wide/from16 v42, v2

    iget-wide v2, v1, LM0/b2;->E:J

    move-object/from16 v39, v0

    iget-object v0, v1, LM0/b2;->F:LG/y0;

    iget-object v1, v1, LM0/b2;->G:LG/w0;

    invoke-virtual {v6}, LG/q0;->p()Z

    move-result v21

    move-object/from16 v46, v0

    if-nez v21, :cond_b

    iget-object v0, v9, LM0/l2;->a:LG/f0;

    iget v0, v0, LG/f0;->b:I

    move-object/from16 v47, v1

    iget-object v1, v6, LM0/V1;->e:LG/q0;

    invoke-virtual {v1}, LG/q0;->o()I

    move-result v1

    if-ge v0, v1, :cond_a

    goto :goto_6

    :cond_a
    const/16 v27, 0x0

    goto :goto_7

    :cond_b
    move-object/from16 v47, v1

    :goto_6
    const/16 v27, 0x1

    :goto_7
    invoke-static/range {v27 .. v27}, LF1/i;->o(Z)V

    move/from16 v25, v11

    new-instance v11, LM0/b2;

    move-wide/from16 v44, v2

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v21, v8

    move-object/from16 v24, v10

    move/from16 v26, v14

    move/from16 v28, v17

    move-object/from16 v27, v18

    move/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v4

    move/from16 v20, v5

    move-object v14, v9

    invoke-direct/range {v11 .. v47}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v11
.end method

.method public final T(LM0/o;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/X0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LM0/X0;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, LM0/A1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, LM0/A1;-><init>(LM0/W1;Landroid/os/IBinder;I)V

    invoke-virtual {p0, v2}, LM0/W1;->L0(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final T0(LM0/b2;)LM0/b2;
    .locals 9

    iget-object v0, p1, LM0/b2;->F:LG/y0;

    iget-object v0, v0, LG/y0;->a:Lu1/P;

    new-instance v1, Lu1/G;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LC1/e;-><init>(I)V

    new-instance v3, LC1/e;

    invoke-direct {v3, v2}, LC1/e;-><init>(I)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/x0;

    iget-object v5, v5, LG/x0;->b:LG/r0;

    iget-object v6, p0, LM0/W1;->d:Lu1/B0;

    invoke-virtual {v6, v5}, Lu1/B0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, LM0/W1;->f:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, LM0/W1;->f:I

    sget-object v8, LJ/W;->a:Ljava/lang/String;

    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, LG/r0;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v1, v5, v6}, Lu1/G;->v(LG/r0;Ljava/lang/String;)V

    iget-object v5, v5, LG/r0;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lu1/G;->u()Lu1/B0;

    move-result-object v1

    iput-object v1, p0, LM0/W1;->d:Lu1/B0;

    invoke-virtual {v3, v2}, LC1/e;->b(Z)Lu1/H0;

    move-result-object v1

    iput-object v1, p0, LM0/W1;->e:Lu1/H0;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/x0;

    iget-object v4, v3, LG/x0;->b:LG/r0;

    invoke-virtual {p0, v4}, LM0/W1;->U0(LG/r0;)LG/r0;

    move-result-object v4

    new-instance v5, LG/x0;

    iget-boolean v6, v3, LG/x0;->c:Z

    iget-object v7, v3, LG/x0;->d:[I

    iget-object v3, v3, LG/x0;->e:[Z

    invoke-direct {v5, v4, v6, v7, v3}, LG/x0;-><init>(LG/r0;Z[I[Z)V

    invoke-virtual {v1, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, LG/y0;

    invoke-virtual {v1}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    invoke-direct {v0, v1}, LG/y0;-><init>(Lu1/C0;)V

    invoke-virtual {p1, v0}, LM0/b2;->b(LG/y0;)LM0/b2;

    move-result-object p1

    iget-object v0, p1, LM0/b2;->G:LG/w0;

    iget-object v1, v0, LG/w0;->H:Lu1/T;

    invoke-virtual {v1}, Lu1/T;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {v0}, LG/w0;->a()LG/v0;

    move-result-object v1

    invoke-virtual {v1}, LG/v0;->c()LG/v0;

    move-result-object v1

    iget-object v0, v0, LG/w0;->H:Lu1/T;

    invoke-virtual {v0}, Lu1/T;->e()Lu1/K;

    move-result-object v0

    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG/s0;

    iget-object v3, v2, LG/s0;->a:LG/r0;

    invoke-virtual {p0, v3}, LM0/W1;->U0(LG/r0;)LG/r0;

    move-result-object v3

    new-instance v4, LG/s0;

    iget-object v2, v2, LG/s0;->b:Lu1/P;

    invoke-direct {v4, v3, v2}, LG/s0;-><init>(LG/r0;Ljava/util/List;)V

    invoke-virtual {v1, v4}, LG/v0;->a(LG/s0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, LG/v0;->b()LG/w0;

    move-result-object v0

    invoke-virtual {p1, v0}, LM0/b2;->o(LG/w0;)LM0/b2;

    move-result-object p1

    return-object p1
.end method

.method public final U(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final U0(LG/r0;)LG/r0;
    .locals 7

    iget-object v0, p0, LM0/W1;->d:Lu1/B0;

    invoke-virtual {v0, p1}, Lu1/B0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, LG/r0;->b:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p1, LG/r0;->a:I

    iget-object v4, p1, LG/r0;->d:[LG/x;

    if-ge v2, v3, :cond_5

    aget-object v5, v4, v2

    iget-object v5, v5, LG/x;->n:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-array v2, v3, [LG/x;

    :goto_1
    iget v3, p1, LG/r0;->a:I

    if-ge v1, v3, :cond_3

    aget-object v3, v4, v1

    iget-object v5, v3, LG/x;->n:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p0, LM0/W1;->e:Lu1/H0;

    invoke-virtual {v6, v5}, Lu1/H0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v3}, LG/x;->a()LG/w;

    move-result-object v3

    iput-object v5, v3, LG/w;->m:Ljava/lang/String;

    new-instance v5, LG/x;

    invoke-direct {v5, v3}, LG/x;-><init>(LG/w;)V

    aput-object v5, v2, v1

    goto :goto_3

    :cond_2
    aput-object v3, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, LG/r0;

    invoke-direct {p1, v0, v2}, LG/r0;-><init>(Ljava/lang/String;[LG/x;)V

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, LG/r0;

    invoke-direct {p1, v0, v4}, LG/r0;-><init>(Ljava/lang/String;[LG/x;)V

    return-object p1
.end method

.method public final V(LM0/o;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/Z;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p3}, LM0/Z;-><init>(IZ)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x1a

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final W(LM0/o;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p3}, LM0/m2;->a(Landroid/os/Bundle;)LM0/m2;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/X0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LM0/X0;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, LM0/F0;

    invoke-direct {v2, p0, p1, p2, p3}, LM0/F0;-><init>(LM0/W1;Landroid/os/IBinder;ILM0/m2;)V

    invoke-virtual {p0, v2}, LM0/W1;->L0(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for SessionResult"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final X(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final Y(LM0/o;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, LM0/C1;-><init>(LM0/W1;II)V

    new-instance p3, LI0/E;

    const/16 v1, 0x8

    invoke-direct {p3, v0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0xa

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(LM0/o;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/Z;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p3}, LM0/Z;-><init>(IZ)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0xe

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final a0(LM0/o;IIJ)V
    .locals 1

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/b0;

    invoke-direct {v0, p3, p4, p5, p0}, LM0/b0;-><init>(IJLjava/lang/Object;)V

    new-instance p3, LI0/E;

    const/16 p4, 0x8

    invoke-direct {p3, v0, p4}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 p4, 0xa

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final b0(LM0/o;II)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, LG/l0;

    const/4 v1, 0x6

    invoke-direct {v0, p3, v1}, LG/l0;-><init>(II)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0xf

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final c0(LM0/o;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p2, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM0/X0;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, LM0/X0;->l()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, LM0/A1;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, LM0/A1;-><init>(LM0/W1;Landroid/os/IBinder;I)V

    invoke-virtual {p0, p2}, LM0/W1;->L0(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final d0(LM0/o;IILM0/T1;)V
    .locals 2

    new-instance v0, LM0/E;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p3, p4, v1}, LM0/E;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final e0(LM0/o;IJ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/I1;

    invoke-direct {v0, p3, p4}, LM0/I1;-><init>(J)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/4 p4, 0x5

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final g0(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final h(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final h0(LM0/o;ILandroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p3}, LG/e;->a(Landroid/os/Bundle;)LG/e;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, LM0/F1;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p4, v1}, LM0/F1;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x23

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for AudioAttributes"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(LM0/o;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, LG/a0;->e:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sget-object v2, LG/a0;->f:Ljava/lang/String;

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p3

    new-instance v1, LG/a0;

    invoke-direct {v1, v0, p3}, LG/a0;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p3, LM0/Q;

    const/4 v0, 0x2

    invoke-direct {p3, v1, v0}, LM0/Q;-><init>(LG/a0;I)V

    invoke-static {p3}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0xd

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for PlaybackParameters"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i0(LM0/o;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/C1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p3, v1}, LM0/C1;-><init>(LM0/W1;II)V

    new-instance p3, LI0/E;

    const/16 v1, 0x8

    invoke-direct {p3, v0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x14

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(LM0/o;IILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/w0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4}, LM0/w0;-><init>(ILandroid/os/Bundle;)V

    new-instance p4, LM0/C1;

    invoke-direct {p4, p0, p3, v1}, LM0/C1;-><init>(LM0/W1;II)V

    new-instance p3, LM0/K;

    const/16 v1, 0xe

    invoke-direct {p3, v0, p4, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {p4, p3, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(LM0/o;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/Z;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, LM0/Z;-><init>(IZ)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final l0(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final m0(LM0/o;ILandroid/os/IBinder;IJ)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/b0;

    invoke-direct {v0, p4, p5, p6, p3}, LM0/b0;-><init>(IJLjava/lang/Object;)V

    new-instance p3, LM0/E1;

    const/16 p4, 0x17

    invoke-direct {p3, p4}, LM0/E1;-><init>(I)V

    new-instance p4, LM0/K;

    const/16 p5, 0xd

    invoke-direct {p4, v0, p3, p5}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, LM0/K1;

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(LM0/o;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LG/l0;

    const/4 v1, 0x5

    invoke-direct {v0, p3, v1}, LG/l0;-><init>(II)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x22

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final o(LM0/o;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, LM0/W1;->L(LM0/o;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public final o0(LM0/o;III)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/z1;

    invoke-direct {v0, p0, p3, p4}, LM0/z1;-><init>(LM0/W1;II)V

    new-instance p3, LI0/E;

    const/16 p4, 0x8

    invoke-direct {p3, v0, p4}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const-string v2, "androidx.media3.session.IMediaSession"

    const/4 v8, 0x1

    if-lt p1, v8, :cond_0

    const v3, 0xffffff

    if-gt p1, v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :cond_1
    const-string v2, "Ignoring malformed Bundle for Rating"

    const/4 v4, 0x0

    const-string v5, "MediaSessionStub"

    packed-switch p1, :pswitch_data_0

    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    packed-switch p1, :pswitch_data_1

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unsubscribe(): Ignoring empty parentId"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_3
    new-instance v0, LG/v;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, LG/v;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc352

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    return v8

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v0, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "subscribe(): Ignoring empty parentId"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-static {v1}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, LM0/E1;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc351

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_0
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v9}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v0, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v0, "getSearchResult(): Ignoring empty query"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    if-gez v6, :cond_9

    const-string v0, "getSearchResult(): Ignoring negative page"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    if-ge v7, v8, :cond_a

    const-string v0, "getSearchResult(): Ignoring pageSize less than 1"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    :try_start_1
    invoke-static {v1}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v1, LM0/E1;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc356

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v0, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v0, "search(): Ignoring empty query"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    :try_start_2
    invoke-static {v1}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    new-instance v1, LM0/E1;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc355

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_2
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v9}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v0, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v0, "getChildren(): Ignoring empty parentId"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    if-gez v6, :cond_11

    const-string v0, "getChildren(): Ignoring negative page"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    if-ge v7, v8, :cond_12

    const-string v0, "getChildren(): Ignoring pageSize less than 1"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    if-nez v1, :cond_13

    goto :goto_3

    :cond_13
    :try_start_3
    invoke-static {v1}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    new-instance v1, LG/v;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, LG/v;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc353

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_3
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_14

    goto/16 :goto_7

    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "getItem(): Ignoring empty mediaId"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_15
    new-instance v0, LM0/E1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc354

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    return v8

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v0, :cond_16

    goto/16 :goto_7

    :cond_16
    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    :try_start_4
    invoke-static {v1}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    new-instance v1, LM0/E1;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    new-instance v6, LM0/K1;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0xc350

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_4
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->r0(LM0/o;III)V

    return v8

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->p(LM0/o;ILandroid/view/Surface;II)V

    return v8

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {p2, v0}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    move v6, v8

    :goto_5
    move-object v1, p0

    move-object v4, v5

    move-object v5, v0

    goto :goto_6

    :cond_18
    move v6, v4

    goto :goto_5

    :goto_6
    invoke-virtual/range {v1 .. v6}, LM0/W1;->J(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return v8

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->l0(LM0/o;I)V

    return v8

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->t(LM0/o;I)V

    return v8

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    move v4, v8

    :cond_19
    invoke-virtual {p0, v0, v2, v5, v4}, LM0/W1;->h0(LM0/o;ILandroid/os/Bundle;Z)V

    return v8

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->F(LM0/o;IIILandroid/os/IBinder;)V

    return v8

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->j(LM0/o;IILandroid/os/Bundle;)V

    return v8

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    move v4, v8

    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->v0(LM0/o;IZI)V

    return v8

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->u(LM0/o;II)V

    return v8

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->n(LM0/o;II)V

    return v8

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->t0(LM0/o;III)V

    return v8

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    if-nez v1, :cond_1b

    goto/16 :goto_7

    :cond_1b
    :try_start_5
    invoke-static {v1}, LG/h0;->a(Landroid/os/Bundle;)LG/h0;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    new-instance v2, LM0/E1;

    const/16 v4, 0x18

    invoke-direct {v2, v1, v4}, LM0/E1;-><init>(Ljava/lang/Object;I)V

    new-instance v6, LM0/K1;

    const/4 v1, 0x1

    invoke-direct {v6, v2, v1}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0x9c4a

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_5
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    if-eqz v4, :cond_1f

    if-nez v1, :cond_1c

    goto/16 :goto_7

    :cond_1c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v0, "setRatingWithMediaId(): Ignoring empty mediaId"

    invoke-static {v5, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1d
    :try_start_6
    invoke-static {v1}, LG/h0;->a(Landroid/os/Bundle;)LG/h0;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    new-instance v2, LM0/E1;

    invoke-direct {v2, v4, v1}, LM0/E1;-><init>(Ljava/lang/String;LG/h0;)V

    new-instance v6, LM0/K1;

    const/4 v1, 0x1

    invoke-direct {v6, v2, v1}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v4, 0x0

    const v5, 0x9c4a

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    goto/16 :goto_7

    :catch_6
    move-exception v0

    invoke-static {v5, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->E0(LM0/o;ILandroid/os/Bundle;)V

    return v8

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->B(LM0/o;I)V

    return v8

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->K(LM0/o;I)V

    return v8

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LM0/W1;->T(LM0/o;)V

    return v8

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->y0(LM0/o;ILandroid/view/Surface;)V

    return v8

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->N(LM0/o;I)V

    return v8

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->D0(LM0/o;I)V

    return v8

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->x(LM0/o;I)V

    return v8

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->A(LM0/o;I)V

    return v8

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->a0(LM0/o;IIJ)V

    return v8

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, LM0/W1;->e0(LM0/o;IJ)V

    return v8

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->Y(LM0/o;II)V

    return v8

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->g0(LM0/o;I)V

    return v8

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->c0(LM0/o;I)V

    return v8

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->U(LM0/o;I)V

    return v8

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->p0(LM0/o;ILandroid/os/Bundle;)V

    return v8

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->v(LM0/o;IILandroid/os/IBinder;)V

    return v8

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->O(LM0/o;ILandroid/os/IBinder;)V

    return v8

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->M(LM0/o;IILandroid/os/Bundle;)V

    return v8

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    if-nez v1, :cond_1e

    goto :goto_7

    :cond_1e
    new-instance v4, LM0/w0;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v1}, LM0/w0;-><init>(ILandroid/os/Bundle;)V

    new-instance v1, LM0/E1;

    const/16 v5, 0x8

    invoke-direct {v1, v5}, LM0/E1;-><init>(I)V

    new-instance v5, LM0/K;

    const/16 v6, 0xe

    invoke-direct {v5, v4, v1, v6}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, LM0/K1;

    const/4 v4, 0x1

    invoke-direct {v1, v5, v4}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 v4, 0x14

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1f
    :goto_7
    return v8

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->s0(LM0/o;IF)V

    return v8

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->i(LM0/o;ILandroid/os/Bundle;)V

    return v8

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->w0(LM0/o;I)V

    return v8

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->s(LM0/o;I)V

    return v8

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->z0(LM0/o;I)V

    return v8

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->G(LM0/o;IIII)V

    return v8

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->P(LM0/o;III)V

    return v8

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->X(LM0/o;I)V

    return v8

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v4, v1}, LM0/W1;->o0(LM0/o;III)V

    return v8

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->i0(LM0/o;II)V

    return v8

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    move v4, v8

    :cond_20
    invoke-virtual {p0, v0, v2, v4}, LM0/W1;->a(LM0/o;IZ)V

    return v8

    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->b0(LM0/o;II)V

    return v8

    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {p2, v0}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->J(LM0/o;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return v8

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->q(LM0/o;ILandroid/os/Bundle;)V

    return v8

    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->W(LM0/o;ILandroid/os/Bundle;)V

    return v8

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    move v4, v8

    :cond_21
    invoke-virtual {p0, v0, v2, v4}, LM0/W1;->l(LM0/o;IZ)V

    return v8

    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LM0/W1;->m0(LM0/o;ILandroid/os/IBinder;IJ)V

    return v8

    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    move v4, v8

    :cond_22
    invoke-virtual {p0, v0, v2, v5, v4}, LM0/W1;->q0(LM0/o;ILandroid/os/IBinder;Z)V

    return v8

    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v8}, LM0/W1;->q0(LM0/o;ILandroid/os/IBinder;Z)V

    return v8

    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move v4, v8

    :cond_23
    invoke-virtual {p0, v0, v2, v5, v4}, LM0/W1;->L(LM0/o;ILandroid/os/Bundle;Z)V

    return v8

    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LM0/W1;->E(LM0/o;ILandroid/os/Bundle;J)V

    return v8

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, LM0/Y1;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v2, v1, v8}, LM0/W1;->L(LM0/o;ILandroid/os/Bundle;Z)V

    return v8

    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    move v4, v8

    :cond_24
    invoke-virtual {p0, v0, v2, v4}, LM0/W1;->V(LM0/o;IZ)V

    return v8

    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->h(LM0/o;I)V

    return v8

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LM0/W1;->y(LM0/o;I)V

    return v8

    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->C0(LM0/o;II)V

    return v8

    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, LM0/y0;->w(Landroid/os/IBinder;)LM0/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, LM0/W1;->x0(LM0/o;IF)V

    return v8

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(LM0/o;ILandroid/view/Surface;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/S;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, LM0/S;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x1b

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final p0(LM0/o;ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/w0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p3}, LM0/w0;-><init>(ILandroid/os/Bundle;)V

    new-instance p3, LM0/K1;

    const/4 v1, 0x1

    invoke-direct {p3, v0, v1}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 v0, 0x13

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final q(LM0/o;ILandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "MediaSessionStub"

    iget-object v3, v1, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/X0;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v3, v3, LM0/X0;->f:Landroid/content/Context;

    invoke-static/range {p3 .. p3}, LM0/h;->a(Landroid/os/Bundle;)LM0/h;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    iget-object v7, v4, LM0/h;->c:Ljava/lang/String;

    invoke-static {v5, v3, v7}, LM0/Y1;->g(ILandroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring connection from invalid package name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LM0/Y1;->i(LM0/o;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget v6, v4, LM0/h;->d:I

    :goto_0
    :try_start_1
    new-instance v11, LN0/P;

    invoke-direct {v11, v7, v6, v5}, LN0/P;-><init>(Ljava/lang/String;II)V

    invoke-static {v3}, LN0/i;->a(Landroid/content/Context;)LN0/i;

    move-result-object v2

    invoke-virtual {v2, v11}, LN0/i;->b(LN0/P;)Z

    move-result v14

    new-instance v10, LM0/N0;

    iget v12, v4, LM0/h;->a:I

    iget v13, v4, LM0/h;->b:I

    new-instance v15, LM0/P1;

    invoke-direct {v15, v0, v13}, LM0/P1;-><init>(LM0/o;I)V

    iget-object v2, v4, LM0/h;->e:Landroid/os/Bundle;

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, LM0/N0;-><init>(LN0/P;IIZLM0/M0;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0, v10}, LM0/W1;->w(LM0/o;LM0/N0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    const-string v3, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {v2, v3, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_1
    invoke-static {v0}, LM0/Y1;->i(LM0/o;)V

    return-void
.end method

.method public final q0(LM0/o;ILandroid/os/IBinder;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/F1;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p4, v1}, LM0/F1;-><init>(Ljava/lang/Object;ZI)V

    new-instance p3, LM0/E1;

    const/16 p4, 0x17

    invoke-direct {p3, p4}, LM0/E1;-><init>(I)V

    new-instance p4, LM0/K;

    const/16 v1, 0xd

    invoke-direct {p4, v0, p3, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {p3, p4, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r0(LM0/o;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/z1;

    invoke-direct {v0, p0, p3, p4}, LM0/z1;-><init>(LM0/W1;II)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x1b

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final s(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final s0(LM0/o;IF)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/c0;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1}, LM0/c0;-><init>(FI)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0xd

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LG/v;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, LG/v;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final t0(LM0/o;III)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/H;

    const/4 v1, 0x3

    invoke-direct {v0, p3, p4, v1}, LM0/H;-><init>(III)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x21

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final u(LM0/o;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LG/l0;

    const/4 v1, 0x4

    invoke-direct {v0, p3, v1}, LG/l0;-><init>(II)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x22

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final v(LM0/o;IILandroid/os/IBinder;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/B1;

    const/4 v1, 0x1

    invoke-direct {v0, p4, v1}, LM0/B1;-><init>(Landroid/os/IBinder;I)V

    new-instance p4, LM0/C1;

    const/4 v1, 0x3

    invoke-direct {p4, p0, p3, v1}, LM0/C1;-><init>(LM0/W1;II)V

    new-instance p3, LM0/K;

    const/16 v1, 0xe

    invoke-direct {p3, v0, p4, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {p4, p3, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final v0(LM0/o;IZI)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/H1;

    invoke-direct {v0, p4, p3}, LM0/H1;-><init>(IZ)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 p4, 0x22

    invoke-virtual {p0, p1, p2, p4, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final w(LM0/o;LM0/N0;)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object v0, p0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LM0/X0;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LM0/X0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v5, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LM0/W1;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, LM0/X0;->l:Landroid/os/Handler;

    new-instance v1, LM0/B0;

    const/4 v6, 0x7

    move-object v2, p0

    move-object v5, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :goto_0
    invoke-static {v5}, LM0/Y1;->i(LM0/o;)V

    return-void

    :cond_2
    move-object v5, p1

    invoke-static {v5}, LM0/Y1;->i(LM0/o;)V

    return-void
.end method

.method public final w0(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final x(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method

.method public final x0(LM0/o;IF)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/c0;

    const/4 v1, 0x3

    invoke-direct {v0, p3, v1}, LM0/c0;-><init>(FI)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x18

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/E1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p0, p1, p2, v1, v0}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final y0(LM0/o;ILandroid/view/Surface;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/K;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p3, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object p3

    const/16 v0, 0x1b

    invoke-virtual {p0, p1, p2, v0, p3}, LM0/W1;->d0(LM0/o;IILM0/T1;)V

    return-void
.end method

.method public final z0(LM0/o;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/D1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LM0/D1;-><init>(LM0/W1;I)V

    invoke-virtual {p0, p1, p2, v0}, LM0/W1;->G0(LM0/o;ILM0/S1;)V

    return-void
.end method
