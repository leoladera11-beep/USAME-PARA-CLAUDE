.class public final LZ/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/K;


# instance fields
.field public a:Lu1/P;

.field public b:LG/x;

.field public c:J

.field public d:J

.field public e:I

.field public final synthetic f:LZ/u;


# direct methods
.method public constructor <init>(LZ/u;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/q;->f:LZ/u;

    invoke-static {p2}, LJ/W;->D(Landroid/content/Context;)Z

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    iput-object p1, p0, LZ/q;->a:Lu1/P;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LZ/q;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget v1, v0, LZ/u;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LZ/u;->k:LJ/O;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v3, v0, LZ/u;->l:Landroid/util/Pair;

    iput v2, v0, LZ/u;->n:I

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    sget-object v0, LJ/E;->c:LJ/E;

    iget v0, v0, LJ/E;->a:I

    iget-object v0, p0, LZ/q;->f:LZ/u;

    const/4 v1, 0x0

    iput-object v1, v0, LZ/u;->l:Landroid/util/Pair;

    return-void
.end method

.method public final d()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LF1/i;->o(Z)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(Z)V
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LZ/q;->d:J

    iget-object v2, p0, LZ/q;->f:LZ/u;

    iget-object v3, v2, LZ/u;->e:LZ/e;

    iget v4, v2, LZ/u;->n:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget v4, v2, LZ/u;->m:I

    add-int/2addr v4, v5

    iput v4, v2, LZ/u;->m:I

    invoke-virtual {v3, p1}, LZ/e;->e(Z)V

    :goto_0
    iget-object p1, v2, LZ/u;->j:LJ/Q;

    invoke-virtual {p1}, LJ/Q;->h()I

    move-result p1

    if-le p1, v5, :cond_0

    iget-object p1, v2, LZ/u;->j:LJ/Q;

    invoke-virtual {p1}, LJ/Q;->e()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, v2, LZ/u;->j:LJ/Q;

    invoke-virtual {p1}, LJ/Q;->h()I

    move-result p1

    if-eq p1, v5, :cond_1

    iput-wide v0, v2, LZ/u;->o:J

    iget-object p1, v2, LZ/u;->k:LJ/O;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LH/a;

    const/16 v1, 0x14

    invoke-direct {v0, v2, v1}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LJ/O;->e(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, v2, LZ/u;->j:LJ/Q;

    invoke-virtual {p1}, LJ/Q;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LZ/t;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final f(LG/x;JILjava/util/List;)V
    .locals 0

    const/4 p2, 0x0

    invoke-static {p2}, LF1/i;->o(Z)V

    invoke-static {p5}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p2

    iput-object p2, p0, LZ/q;->a:Lu1/P;

    iput-object p1, p0, LZ/q;->b:LG/x;

    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object p2

    iget-object p1, p1, LG/x;->H:LG/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LG/n;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LG/n;->h:LG/n;

    :goto_0
    iput-object p1, p2, LG/w;->G:LG/n;

    invoke-virtual {p2}, LG/w;->a()LG/x;

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, LZ/q;->a:Lu1/P;

    invoke-virtual {v0, p1}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    iput-object p1, p0, LZ/q;->a:Lu1/P;

    iget-object p1, p0, LZ/q;->b:LG/x;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object v0

    iget-object p1, p1, LG/x;->H:LG/n;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LG/n;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, LG/n;->h:LG/n;

    :goto_1
    iput-object p1, v0, LG/w;->G:LG/n;

    invoke-virtual {v0}, LG/w;->a()LG/x;

    const/4 p1, 0x0

    throw p1
.end method

.method public final h(F)V
    .locals 2

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-object v1, v0, LZ/u;->i:LZ/z;

    invoke-virtual {v1, p1}, LZ/z;->c(F)V

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0, p1}, LZ/e;->h(F)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-boolean v1, v0, LZ/u;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0}, LZ/e;->i()V

    :cond_0
    return-void
.end method

.method public final j(LG/x;)Z
    .locals 10

    const-string v0, "Color transfer "

    iget-object v1, p0, LZ/q;->f:LZ/u;

    iget v2, v1, LZ/u;->n:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v2, p1, LG/x;->H:LG/n;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LG/n;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, LG/n;->h:LG/n;

    :goto_1
    iget v2, v2, LG/n;->c:I

    const-string v5, "EGL_EXT_gl_colorspace_bt2020_pq"

    const/16 v6, 0x21

    const/4 v7, 0x7

    if-ne v2, v7, :cond_4

    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x22

    if-ge v8, v9, :cond_4

    if-lt v8, v6, :cond_2

    invoke-static {v5}, LJ/e;->g(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_2
    move v8, v4

    :goto_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, LG/n;

    goto :goto_6

    :cond_4
    :goto_3
    const/4 v8, 0x6

    if-ne v2, v8, :cond_6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_5

    invoke-static {v5}, LJ/e;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    goto :goto_4

    :cond_6
    if-ne v2, v7, :cond_7

    const-string v3, "EGL_EXT_gl_colorspace_bt2020_hlg"

    invoke-static {v3}, LJ/e;->g(Ljava/lang/String;)Z

    move-result v3

    :cond_7
    :goto_4
    if-nez v3, :cond_9

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_8

    goto :goto_5

    :cond_8
    const-string v3, "PlaybackVidGraphWrapper"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not supported. Falling back to OpenGl tone mapping."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LG/n;->h:LG/n;

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x2

    if-eq v2, v0, :cond_a

    const/16 v0, 0xa

    if-ne v2, v0, :cond_b

    :cond_a
    sget-object p1, LG/n;->h:LG/n;
    :try_end_0
    .catch LJ/n; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_6
    iget-object p1, v1, LZ/u;->f:LJ/M;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p1

    iput-object p1, v1, LZ/u;->k:LJ/O;

    iget-object p1, v1, LZ/u;->b:LZ/s;

    invoke-virtual {p1}, LZ/s;->a()V

    throw v2

    :goto_7
    new-instance v1, LZ/J;

    invoke-direct {v1, v0, p1}, LZ/J;-><init>(Ljava/lang/Exception;LG/x;)V

    throw v1
.end method

.method public final k(JLZ/j;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, LF1/i;->o(Z)V

    iget-wide v1, p0, LZ/q;->c:J

    add-long/2addr p1, v1

    iget-object v1, p0, LZ/q;->f:LZ/u;

    iget-object v2, v1, LZ/u;->i:LZ/z;

    iget-wide v3, v2, LZ/z;->a:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    move-wide p1, v5

    goto :goto_0

    :cond_0
    iget-wide v7, v2, LZ/z;->b:J

    long-to-double v7, v7

    sub-long/2addr p1, v3

    long-to-double p1, p1

    iget-wide v2, v2, LZ/z;->c:D

    mul-double/2addr p1, v2

    add-double/2addr p1, v7

    double-to-long p1, p1

    :goto_0
    cmp-long v2, p1, v5

    if-eqz v2, :cond_1

    iget-wide v2, v1, LZ/u;->h:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_1

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    iget p1, p0, LZ/q;->e:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, LZ/q;->e:I

    iget-object p1, p3, LZ/j;->c:LZ/m;

    iget-object v1, p3, LZ/j;->a:LS/k;

    iget p3, p3, LZ/j;->b:I

    const-string v2, "dropVideoBuffer"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v1, p3}, LS/k;->i(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p1, v0, p2}, LZ/m;->U0(II)V

    return p2

    :cond_1
    iget p1, v1, LZ/u;->p:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    return v0
.end method

.method public final l(JJ)V
    .locals 2

    iget-wide v0, p0, LZ/q;->c:J

    add-long/2addr p1, v0

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0, p1, p2, p3, p4}, LZ/e;->l(JJ)V

    return-void
.end method

.method public final m(LZ/i;)V
    .locals 0

    return-void
.end method

.method public final n(Z)V
    .locals 2

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-boolean v1, v0, LZ/u;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0, p1}, LZ/e;->n(Z)V

    :cond_0
    return-void
.end method

.method public final o(Z)Z
    .locals 1

    iget-object p1, p0, LZ/q;->f:LZ/u;

    iget-object p1, p1, LZ/u;->e:LZ/e;

    const/4 v0, 0x0

    iget-object p1, p1, LZ/e;->a:LZ/y;

    invoke-virtual {p1, v0}, LZ/y;->b(Z)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-boolean v1, v0, LZ/u;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0}, LZ/e;->p()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r(LZ/w;)V
    .locals 1

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-object v0, v0, LZ/u;->e:LZ/e;

    iput-object p1, v0, LZ/e;->k:LZ/w;

    return-void
.end method

.method public final s(J)V
    .locals 0

    iput-wide p1, p0, LZ/q;->c:J

    return-void
.end method

.method public final t(Landroid/view/Surface;LJ/E;)V
    .locals 2

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-object v1, v0, LZ/u;->l:Landroid/util/Pair;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LZ/u;->l:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LJ/E;

    invoke-virtual {v1, p2}, LJ/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, v0, LZ/u;->l:Landroid/util/Pair;

    iget p1, p2, LJ/E;->a:I

    return-void
.end method

.method public final u()V
    .locals 5

    iget-wide v0, p0, LZ/q;->d:J

    iget-object v2, p0, LZ/q;->f:LZ/u;

    iget-wide v3, v2, LZ/u;->o:J

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    iget-object v0, v2, LZ/u;->e:LZ/e;

    invoke-virtual {v0}, LZ/e;->u()V

    :cond_0
    return-void
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-object v1, v0, LZ/u;->j:LJ/Q;

    invoke-virtual {v1}, LJ/Q;->h()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0}, LZ/e;->w()V

    return-void

    :cond_0
    new-instance v1, LJ/Q;

    invoke-direct {v1}, LJ/Q;-><init>()V

    iget-object v2, v0, LZ/u;->j:LJ/Q;

    invoke-virtual {v2}, LJ/Q;->h()I

    move-result v2

    if-gtz v2, :cond_1

    iput-object v1, v0, LZ/u;->j:LJ/Q;

    return-void

    :cond_1
    iget-object v0, v0, LZ/u;->j:LJ/Q;

    invoke-virtual {v0}, LJ/Q;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method public final x(I)V
    .locals 1

    iget-object v0, p0, LZ/q;->f:LZ/u;

    iget-object v0, v0, LZ/u;->e:LZ/e;

    invoke-virtual {v0, p1}, LZ/e;->x(I)V

    return-void
.end method
