.class public final LZ/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final e:Landroid/os/Handler;

.field public final synthetic f:LZ/m;


# direct methods
.method public constructor <init>(LZ/m;LS/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/l;->f:LZ/m;

    invoke-static {p0}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, LZ/l;->e:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, LS/k;->A(LZ/l;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 8

    iget-object v0, p0, LZ/l;->f:LZ/m;

    iget-object v1, v0, LZ/m;->P0:LP/t;

    iget-object v2, v0, LZ/m;->D1:LZ/l;

    if-ne p0, v2, :cond_6

    iget-object v2, v0, LS/r;->R:LS/k;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iput-boolean v3, v0, LS/r;->z0:Z

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, LS/r;->F0(J)V

    iget-object v2, v0, LZ/m;->y1:LG/C0;

    sget-object v4, LG/C0;->d:LG/C0;

    invoke-virtual {v2, v4}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, LZ/m;->z1:LG/C0;

    invoke-virtual {v2, v4}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v2, v0, LZ/m;->z1:LG/C0;

    invoke-virtual {v1, v2}, LP/t;->b(LG/C0;)V

    :cond_2
    iget-object v2, v0, LS/r;->B0:LN/c;

    iget v4, v2, LN/c;->e:I

    add-int/2addr v4, v3

    iput v4, v2, LN/c;->e:I

    iget-object v2, v0, LZ/m;->S0:LZ/y;

    iget v4, v2, LZ/y;->e:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput v5, v2, LZ/y;->e:I

    iget-object v5, v2, LZ/y;->k:LJ/M;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, LJ/W;->G(J)J

    move-result-wide v5

    iput-wide v5, v2, LZ/y;->g:J

    if-eqz v4, :cond_5

    iget-object v2, v0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz v2, :cond_5

    iget-object v4, v1, LP/t;->a:Landroid/os/Handler;

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v7, LZ/G;

    invoke-direct {v7, v1, v2, v5, v6}, LZ/G;-><init>(LP/t;Ljava/lang/Object;J)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iput-boolean v3, v0, LZ/m;->l1:Z

    :cond_5
    invoke-virtual {v0, p1, p2}, LZ/m;->k0(J)V
    :try_end_0
    .catch LN/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iput-object p1, v0, LS/r;->A0:LN/k;

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LZ/l;->a(J)V

    const/4 p1, 0x1

    return p1
.end method
