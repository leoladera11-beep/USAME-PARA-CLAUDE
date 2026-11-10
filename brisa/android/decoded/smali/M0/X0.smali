.class public LM0/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final D:LM0/m2;

.field public static final E:Lt1/t;


# instance fields
.field public final A:Lu1/P;

.field public final B:Lu1/P;

.field public final C:Landroid/os/Bundle;

.field public final a:Ljava/lang/Object;

.field public final b:Landroid/net/Uri;

.field public final c:LM0/U0;

.field public final d:LM0/T0;

.field public final e:Lcom/brisa/local/j;

.field public final f:Landroid/content/Context;

.field public final g:LM0/W1;

.field public final h:LM0/t1;

.field public final i:Ljava/lang/String;

.field public final j:LM0/o2;

.field public final k:LM0/P0;

.field public final l:Landroid/os/Handler;

.field public final m:LJ/d;

.field public final n:LM0/R0;

.field public final o:Landroid/os/Handler;

.field public final p:Z

.field public final q:Z

.field public final r:Lu1/P;

.field public s:LM0/b2;

.field public t:LM0/d2;

.field public u:LM0/V0;

.field public v:LM0/w1;

.field public w:LM0/y1;

.field public x:Z

.field public final y:J

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LM0/m2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LM0/m2;-><init>(I)V

    sput-object v0, LM0/X0;->D:LM0/m2;

    new-instance v0, LL/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LL/i;-><init>(I)V

    invoke-static {v0}, LS1/e;->o(Lt1/t;)Lt1/t;

    move-result-object v0

    sput-object v0, LM0/X0;->E:Lt1/t;

    return-void
.end method

.method public constructor <init>(LM0/P0;Landroid/content/Context;Ljava/lang/String;LG/g0;Lu1/P;Lu1/P;Lu1/P;Lcom/brisa/local/j;Landroid/os/Bundle;Landroid/os/Bundle;LJ/d;ZZ)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM0/X0;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [AndroidXMedia3/1.11.1] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaSessionImpl"

    invoke-static {v2, v0}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, LM0/X0;->k:LM0/P0;

    iput-object p2, p0, LM0/X0;->f:Landroid/content/Context;

    move-object v0, p3

    iput-object v0, p0, LM0/X0;->i:Ljava/lang/String;

    move-object/from16 v6, p5

    iput-object v6, p0, LM0/X0;->A:Lu1/P;

    move-object/from16 v7, p6

    iput-object v7, p0, LM0/X0;->B:Lu1/P;

    move-object/from16 v2, p7

    iput-object v2, p0, LM0/X0;->r:Lu1/P;

    move-object/from16 v2, p8

    iput-object v2, p0, LM0/X0;->e:Lcom/brisa/local/j;

    move-object/from16 v10, p10

    iput-object v10, p0, LM0/X0;->C:Landroid/os/Bundle;

    move-object/from16 v2, p11

    iput-object v2, p0, LM0/X0;->m:LJ/d;

    move/from16 v5, p12

    iput-boolean v5, p0, LM0/X0;->p:Z

    move/from16 v2, p13

    iput-boolean v2, p0, LM0/X0;->q:Z

    new-instance v11, LM0/W1;

    invoke-direct {v11, p0}, LM0/W1;-><init>(LM0/X0;)V

    iput-object v11, p0, LM0/X0;->g:LM0/W1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, LM0/X0;->o:Landroid/os/Handler;

    invoke-interface/range {p4 .. p4}, LG/g0;->U0()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, LM0/X0;->l:Landroid/os/Handler;

    sget-object v4, LM0/b2;->H:LM0/b2;

    iput-object v4, p0, LM0/X0;->s:LM0/b2;

    new-instance v4, LM0/U0;

    invoke-direct {v4, p0, v2}, LM0/U0;-><init>(LM0/X0;Landroid/os/Looper;)V

    iput-object v4, p0, LM0/X0;->c:LM0/U0;

    new-instance v4, LM0/T0;

    invoke-direct {v4, p0, v2}, LM0/T0;-><init>(LM0/X0;Landroid/os/Looper;)V

    iput-object v4, p0, LM0/X0;->d:LM0/T0;

    invoke-static {p3}, LM0/X0;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, LM0/X0;->b:Landroid/net/Uri;

    sget-object v8, LM0/L0;->g:LM0/j2;

    sget-object v9, LM0/L0;->i:LG/c0;

    new-instance v0, LM0/t1;

    move-object v1, p0

    move-object/from16 v4, p9

    invoke-direct/range {v0 .. v10}, LM0/t1;-><init>(LM0/X0;Landroid/net/Uri;Landroid/os/Handler;Landroid/os/Bundle;ZLu1/P;Lu1/P;LM0/j2;LG/c0;Landroid/os/Bundle;)V

    move-object v10, v3

    iput-object v0, p0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->o:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->c:LN0/N;

    iget-object v7, v0, LN0/N;->f:Landroid/media/session/MediaSession$Token;

    new-instance v0, LM0/o2;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0xa

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v2, 0x3c42a7d4

    const/4 v8, 0x0

    move-object/from16 v6, p9

    move-object v5, v11

    invoke-direct/range {v0 .. v8}, LM0/o2;-><init>(IIILjava/lang/String;LM0/q;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    iput-object v0, p0, LM0/X0;->j:LM0/o2;

    new-instance v0, LM0/d2;

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, LM0/d2;-><init>(LG/g0;)V

    iput-object v0, p0, LM0/X0;->t:LM0/d2;

    new-instance v1, LH/i;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v0, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v10, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, LM0/X0;->y:J

    new-instance v0, LM0/R0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LM0/R0;-><init>(LM0/X0;I)V

    iput-object v0, p0, LM0/X0;->n:LM0/R0;

    new-instance v0, LM0/R0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LM0/R0;-><init>(LM0/X0;I)V

    invoke-static {v10, v0}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(LM0/X0;)V
    .locals 8

    iget-object v1, p0, LM0/X0;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, LM0/X0;->x:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v0}, LM0/d2;->p()LM0/l2;

    move-result-object v3

    iget-object v0, p0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LM0/X0;->s:LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    invoke-static {v3, v0}, LM0/Y1;->e(LM0/l2;LM0/l2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0}, LB/A;->z()Lu1/P;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/N0;

    invoke-virtual {v0}, LB/A;->V()V

    iget-object v5, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v5, Lh/e;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/g;

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, LB/A;->L(LM0/N0;I)Z

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v0, v4, v6}, LB/A;->L(LM0/N0;I)Z

    move-result v6

    new-instance v7, LM0/Q0;

    invoke-direct {v7, v3, v5, v6, v4}, LM0/Q0;-><init>(LM0/l2;ZZLM0/N0;)V

    invoke-virtual {p0, v4, v7}, LM0/X0;->e(LM0/N0;LM0/W0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, LM0/X0;->h:LM0/t1;

    iget-object v1, v0, LM0/t1;->k:LM0/r1;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, LM0/r1;->c(ILM0/l2;ZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception in using media1 API"

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, LM0/X0;->v()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "androidx"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media3.session"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static m(LM0/N0;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, LM0/N0;->a:LN0/P;

    iget-object p0, p0, LN0/P;->a:LN0/S;

    iget-object p0, p0, LN0/S;->a:Ljava/lang/String;

    const-string v0, "com.android.systemui"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Landroid/view/KeyEvent;ZZ)Z
    .locals 7

    iget-object v0, p0, LM0/X0;->k:LM0/P0;

    iget-object v0, v0, LM0/P0;->a:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->g()LM0/N0;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x55

    const/16 v1, 0x4f

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x57

    :cond_2
    if-eq p1, v1, :cond_7

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_6

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_5

    const/16 p2, 0x110

    if-eq p1, p2, :cond_4

    const/16 p2, 0x111

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_0
    new-instance p1, LM0/d;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :pswitch_1
    new-instance p1, LM0/d;

    const/4 p2, 0x3

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :pswitch_2
    new-instance p1, LM0/d;

    const/4 p2, 0x4

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :cond_3
    :pswitch_3
    new-instance p1, LM0/d;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :cond_4
    :pswitch_4
    new-instance p1, LM0/d;

    const/16 p2, 0x9

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :cond_5
    new-instance p1, LM0/d;

    const/16 p2, 0x8

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :cond_6
    new-instance p1, LM0/d;

    const/4 p2, 0x7

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :cond_7
    :pswitch_5
    invoke-virtual {p0}, LM0/X0;->x()V

    iget-object p1, p0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->z()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, LM0/d;

    const/4 p2, 0x5

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    goto :goto_1

    :cond_8
    new-instance p1, LM0/d;

    const/4 p2, 0x6

    invoke-direct {p1, p0, v4, p2}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    :goto_1
    if-eqz p3, :cond_a

    new-instance p2, LM0/i2;

    const-string p3, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p2, p3, v0}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v5, LI0/E;

    invoke-direct {v5, p2}, LI0/E;-><init>(LM0/i2;)V

    iget-object p2, p0, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p3, v0, :cond_9

    invoke-virtual {p0, v4, v5}, LM0/X0;->d(LM0/N0;LI0/E;)Lz1/B;

    goto :goto_2

    :cond_9
    new-instance v3, Li/n;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v1, LM0/B0;

    const/4 v6, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_a
    :goto_2
    move-object v2, p0

    :goto_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, v2, LM0/X0;->g:LM0/W1;

    iget-object p1, p1, LM0/W1;->b:LB/A;

    invoke-virtual {p1, v4}, LB/A;->w(LM0/N0;)V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(LM0/N0;LI0/E;)Lz1/B;
    .locals 6

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    const/16 v1, -0x64

    :try_start_0
    iget-object v2, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v2, p1}, LB/A;->D(LM0/N0;)LM0/h2;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, LM0/X0;->D:LM0/m2;

    invoke-virtual {v2, v3}, LM0/h2;->d(Ljava/lang/Object;)LM0/g2;

    move-result-object v2

    iget v3, v2, LM0/g2;->l:I

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, LM0/X0;->j(LM0/N0;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p2, LM0/m2;

    invoke-direct {p2, v1}, LM0/m2;-><init>(I)V

    invoke-static {p2}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v2, LM0/m2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LM0/m2;-><init>(I)V

    invoke-static {v2}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object v2

    :goto_0
    iget-object v4, p1, LM0/N0;->e:LM0/M0;

    if-eqz v4, :cond_2

    iget-object p2, p2, LI0/E;->f:Ljava/lang/Object;

    check-cast p2, LM0/i2;

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v4, v3, p2}, LM0/M0;->a(ILM0/i2;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionImpl"

    invoke-static {v0, p1, p2}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, LM0/m2;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :catch_1
    iget-object p2, v0, LM0/W1;->b:LB/A;

    invoke-virtual {p2, p1}, LB/A;->Q(LM0/N0;)V

    new-instance p1, LM0/m2;

    invoke-direct {p1, v1}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public final e(LM0/N0;LM0/W0;)V
    .locals 3

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    :try_start_0
    iget-object v1, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v1, p1}, LB/A;->D(LM0/N0;)LM0/h2;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LM0/h2;->k()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, LM0/X0;->j(LM0/N0;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, LM0/N0;->e:LM0/M0;

    if-eqz v2, :cond_2

    invoke-interface {p2, v2, v1}, LM0/W0;->e(LM0/M0;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionImpl"

    invoke-static {v0, p1, p2}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    iget-object p2, v0, LM0/W1;->b:LB/A;

    invoke-virtual {p2, p1}, LB/A;->Q(LM0/N0;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final f(LM0/W0;)V
    .locals 4

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0}, LB/A;->z()Lu1/P;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/N0;

    invoke-virtual {p0, v3, p1}, LM0/X0;->e(LM0/N0;LM0/W0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->k:LM0/r1;

    invoke-interface {p1, v0, v1}, LM0/W0;->e(LM0/M0;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g()LM0/N0;
    .locals 4

    invoke-virtual {p0}, LM0/X0;->x()V

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0}, LB/A;->z()Lu1/P;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/N0;

    invoke-virtual {p0, v2}, LM0/X0;->k(LM0/N0;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(LG/c0;)V
    .locals 2

    iget-object v0, p0, LM0/X0;->c:LM0/U0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, LM0/U0;->a(ZZ)V

    new-instance v0, LM0/v0;

    invoke-direct {v0, p1}, LM0/v0;-><init>(LG/c0;)V

    invoke-virtual {p0, v0}, LM0/X0;->f(LM0/W0;)V

    :try_start_0
    iget-object p1, p0, LM0/X0;->h:LM0/t1;

    iget-object p1, p1, LM0/t1;->k:LM0/r1;

    iget-object v0, p0, LM0/X0;->s:LM0/b2;

    iget-object v0, v0, LM0/b2;->s:LG/p;

    invoke-virtual {p1}, LM0/r1;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaSessionImpl"

    const-string v1, "Exception in using media1 API"

    invoke-static {v0, v1, p1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(LM0/N0;Z)V
    .locals 3

    iget-object v0, p0, LM0/X0;->v:LM0/w1;

    if-eqz v0, :cond_0

    iget-object v1, p0, LM0/X0;->k:LM0/P0;

    invoke-virtual {v0, v1}, LM0/w1;->a(LM0/P0;)Lz1/B;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object v0

    :goto_0
    new-instance v1, LM0/S0;

    invoke-direct {v1, p0, p1, p2}, LM0/S0;-><init>(LM0/X0;LM0/N0;Z)V

    new-instance p1, LM0/A;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lz1/v;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, p2, p1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final j(LM0/N0;)Z
    .locals 1

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    invoke-virtual {v0, p1}, LB/A;->K(LM0/N0;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LM0/X0;->h:LM0/t1;

    iget-object v0, v0, LM0/t1;->f:LB/A;

    invoke-virtual {v0, p1}, LB/A;->K(LM0/N0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final k(LM0/N0;)Z
    .locals 2

    iget-object v0, p1, LM0/N0;->a:LN0/P;

    iget-object v0, v0, LN0/P;->a:LN0/S;

    iget-object v0, v0, LN0/S;->a:Ljava/lang/String;

    iget-object v1, p0, LM0/X0;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, LM0/N0;->b:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, LM0/N0;->f:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "androidx.media3.session.MediaNotificationManager"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, LM0/X0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LM0/X0;->x:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n(LM0/N0;Lu1/C0;)Lz1/B;
    .locals 0

    invoke-virtual {p0, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    iget-object p1, p0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/brisa/local/j;->J(Ljava/util/List;)Lz1/B;

    move-result-object p1

    return-object p1
.end method

.method public final o(LM0/N0;)Lz1/B;
    .locals 10

    iget-boolean v0, p0, LM0/X0;->z:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, LM0/X0;->m(LM0/N0;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, LM0/X0;->h:LM0/t1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LM0/j2;->b:LM0/j2;

    sget-object v0, LG/c0;->b:LG/c0;

    iget-object v3, p1, LM0/t1;->z:LM0/j2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, LM0/t1;->A:LG/c0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LM0/t1;->y:Lu1/P;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p1, LM0/t1;->y:Lu1/P;

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    :goto_0
    move-object v6, p1

    move-object v5, v1

    goto :goto_2

    :cond_1
    iget-object p1, p1, LM0/t1;->x:Lu1/P;

    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    :goto_1
    move-object v5, p1

    move-object v6, v1

    :goto_2
    new-instance v1, LM0/L0;

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/L0;-><init>(ZLM0/j2;LG/c0;Lu1/P;Lu1/P;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LM0/X0;->k:LM0/P0;

    iget-object v1, v0, LM0/P0;->b:LM0/L0;

    const-string v2, "androidx.media3.session.CALLBACK_NOT_IMPLEMENTED"

    if-nez v1, :cond_4

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, LM0/j2;->b:LM0/j2;

    sget-object v1, LG/c0;->b:LG/c0;

    sget-object v5, LM0/j2;->b:LM0/j2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, LG/c0;->b:LG/c0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LM0/L0;

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, LM0/L0;-><init>(ZLM0/j2;LG/c0;Lu1/P;Lu1/P;Landroid/os/Bundle;)V

    iput-object v3, v0, LM0/P0;->b:LM0/L0;

    :cond_4
    iget-object v0, v0, LM0/P0;->b:LM0/L0;

    iget-boolean v1, v0, LM0/L0;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, LM0/L0;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v0, p1, LM0/N0;->d:Z

    if-eqz v0, :cond_5

    sget-object v0, LM0/L0;->g:LM0/j2;

    sget-object v1, LM0/L0;->i:LG/c0;

    :goto_3
    move-object v4, v0

    move-object v5, v1

    goto :goto_4

    :cond_5
    sget-object v0, LM0/L0;->h:LM0/j2;

    sget-object v1, LM0/L0;->j:LG/c0;

    goto :goto_3

    :goto_4
    new-instance v2, LM0/L0;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, LM0/L0;-><init>(ZLM0/j2;LG/c0;Lu1/P;Lu1/P;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object v0

    new-instance v1, LM0/K;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LJ/W;->R(Lz1/B;Lz1/r;)Lz1/H;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0, p1, v0}, LM0/X0;->w(LM0/N0;LM0/L0;)V

    invoke-static {v0}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public final p(LM0/N0;)Lz1/x;
    .locals 1

    invoke-virtual {p0, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    iget-object p1, p0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM0/m2;

    const/4 v0, -0x6

    invoke-direct {p1, v0}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public final q(LM0/N0;Landroid/content/Intent;)Z
    .locals 10

    iget v0, p1, LM0/N0;->b:I

    invoke-static {p2}, La1/g;->y(Landroid/content/Intent;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    iget-object v3, p0, LM0/X0;->f:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, LM0/X0;->x()V

    iget-object v2, p0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v5, 0x4f

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eq p1, v5, :cond_e

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_e

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_e

    const/16 p2, 0x110

    if-eq p1, p2, :cond_e

    const/16 p2, 0x111

    if-eq p1, p2, :cond_e

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.software.leanback"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x0

    const/16 v8, 0x55

    iget-object v9, p0, LM0/X0;->d:LM0/T0;

    if-eq v2, v5, :cond_4

    if-eq v2, v8, :cond_4

    iget-object p1, v9, LM0/T0;->b:Ljava/lang/Object;

    check-cast p1, LJ/U;

    if-eqz p1, :cond_3

    invoke-virtual {v9, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v9, LM0/T0;->b:Ljava/lang/Object;

    check-cast p1, LJ/U;

    iput-object v7, v9, LM0/T0;->b:Ljava/lang/Object;

    move-object v7, p1

    :cond_3
    if-eqz v7, :cond_a

    invoke-static {v9, v7}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    if-nez v3, :cond_8

    if-nez v0, :cond_8

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v9, LM0/T0;->b:Ljava/lang/Object;

    check-cast v3, LJ/U;

    if-eqz v3, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {v9, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v7, v9, LM0/T0;->b:Ljava/lang/Object;

    :cond_6
    move p1, v6

    goto :goto_2

    :cond_7
    new-instance p2, LJ/U;

    const/4 v0, 0x5

    invoke-direct {p2, v0, v9, p1, v1}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v9, LM0/T0;->b:Ljava/lang/Object;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {v9, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v6

    :cond_8
    :goto_0
    iget-object p1, v9, LM0/T0;->b:Ljava/lang/Object;

    check-cast p1, LJ/U;

    if-eqz p1, :cond_9

    invoke-virtual {v9, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v9, LM0/T0;->b:Ljava/lang/Object;

    check-cast p1, LJ/U;

    iput-object v7, v9, LM0/T0;->b:Ljava/lang/Object;

    move-object v7, p1

    :cond_9
    if-eqz v7, :cond_a

    invoke-static {v9, v7}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_a
    :goto_1
    move p1, v4

    :goto_2
    iget-boolean v3, p0, LM0/X0;->z:Z

    if-nez v3, :cond_d

    iget-object p2, p0, LM0/X0;->h:LM0/t1;

    if-eq v2, v8, :cond_b

    if-ne v2, v5, :cond_c

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p2}, LM0/t1;->y()V

    return v6

    :cond_c
    if-eqz v0, :cond_f

    iget-object p1, p2, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/y;

    iget-object p1, p1, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return v6

    :cond_d
    const-string v0, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_e

    invoke-virtual {p0, v1, p1, p2}, LM0/X0;->b(Landroid/view/KeyEvent;ZZ)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    :pswitch_0
    return v6

    :cond_f
    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(LM0/N0;)V
    .locals 0

    invoke-virtual {p0, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    iget-object p1, p0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final s(LM0/N0;Lu1/C0;IJ)Lz1/H;
    .locals 0

    invoke-virtual {p0, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    iget-object p1, p0, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/brisa/local/j;->J(Ljava/util/List;)Lz1/B;

    move-result-object p1

    new-instance p2, LM0/K0;

    invoke-direct {p2, p3, p4, p5}, LM0/K0;-><init>(IJ)V

    invoke-static {p1, p2}, LJ/W;->R(Lz1/B;Lz1/r;)Lz1/H;

    move-result-object p1

    return-object p1
.end method

.method public final t()V
    .locals 7

    const-string v0, "MediaSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [AndroidXMedia3/1.11.1] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, LG/Q;->a:Ljava/util/HashSet;

    const-class v2, LG/Q;

    monitor-enter v2

    :try_start_0
    sget-object v3, LG/Q;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LM0/X0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, LM0/X0;->x:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LM0/X0;->x:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LM0/X0;->d:LM0/T0;

    iget-object v2, v0, LM0/T0;->b:Ljava/lang/Object;

    check-cast v2, LJ/U;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, v0, LM0/T0;->b:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :try_start_2
    iget-object v3, p0, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, LJ/U;

    const/4 v5, 0x4

    invoke-direct {v4, v5, p0, v0, v3}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p0, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v5, v4}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "MediaSessionImpl"

    const-string v5, "Exception thrown while closing"

    invoke-static {v4, v5, v3}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, LM0/X0;->h:LM0/t1;

    invoke-virtual {v0}, LM0/t1;->N()V

    iget-object v0, p0, LM0/X0;->g:LM0/W1;

    invoke-virtual {v0}, LM0/W1;->N0()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MediaSessionImpl"

    const-string v2, "Exception thrown during emergency main thread release fallback"

    invoke-static {v1, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final u(LM0/N0;)LM0/N0;
    .locals 1

    iget-boolean v0, p0, LM0/X0;->z:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LM0/X0;->m(LM0/N0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LM0/X0;->g()LM0/N0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final v()V
    .locals 6

    iget-object v0, p0, LM0/X0;->l:Landroid/os/Handler;

    iget-object v1, p0, LM0/X0;->n:LM0/R0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, LM0/X0;->q:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, LM0/X0;->y:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    iget-object v2, p0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v2}, LM0/d2;->I()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LM0/X0;->t:LM0/d2;

    invoke-virtual {v2}, LM0/d2;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final w(LM0/N0;LM0/L0;)V
    .locals 5

    invoke-virtual {p0, p1}, LM0/X0;->k(LM0/N0;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p2, LM0/L0;->a:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, LM0/X0;->z:Z

    iget-object v0, p2, LM0/L0;->e:Lu1/P;

    iget-object v1, p0, LM0/X0;->k:LM0/P0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, LM0/P0;->a:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->B:Lu1/P;

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    iget-object v3, p0, LM0/X0;->h:LM0/t1;

    if-eqz v2, :cond_2

    iget-object v0, p2, LM0/L0;->d:Lu1/P;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, LM0/P0;->a:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->A:Lu1/P;

    :goto_1
    iput-object v0, v3, LM0/t1;->x:Lu1/P;

    goto :goto_2

    :cond_2
    iput-object v0, v3, LM0/t1;->y:Lu1/P;

    invoke-virtual {v3}, LM0/t1;->P()V

    :goto_2
    iget-object v0, p2, LM0/L0;->b:LM0/j2;

    iget-object p2, p2, LM0/L0;->c:LG/c0;

    iget-object v1, v3, LM0/t1;->i:LM0/X0;

    iget-object v2, v3, LM0/t1;->A:LG/c0;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, LG/c0;->a(I)Z

    move-result v2

    invoke-virtual {p2, v4}, LG/c0;->a(I)Z

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-object v0, v3, LM0/t1;->z:LM0/j2;

    iput-object p2, v3, LM0/t1;->A:LG/c0;

    iget-object p2, v3, LM0/t1;->y:Lu1/P;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v3}, LM0/t1;->P()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v1}, LM0/X0;->x()V

    iget-object p1, v1, LM0/X0;->t:LM0/d2;

    new-instance p2, LM0/h1;

    const/4 v0, 0x0

    invoke-direct {p2, v3, p1, v0}, LM0/h1;-><init>(LM0/t1;LM0/d2;I)V

    invoke-virtual {v3, p2}, LM0/t1;->M(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-virtual {v1}, LM0/X0;->x()V

    iget-object p1, v1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v3, p1}, LM0/t1;->Q(LM0/d2;)V

    :cond_6
    return-void
.end method

.method public final x()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Player callback method is called from a wrong thread. See javadoc of MediaSession for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
