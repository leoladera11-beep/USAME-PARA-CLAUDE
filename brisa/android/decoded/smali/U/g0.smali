.class public final LU/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/y;
.implements LX/h;


# instance fields
.field public final e:LL/n;

.field public final f:LL/g;

.field public final g:LL/D;

.field public final h:Lcom/brisa/local/j;

.field public final i:LC1/e;

.field public final j:LU/l0;

.field public final k:Ljava/util/ArrayList;

.field public final l:J

.field public final m:LX/m;

.field public final n:LG/x;

.field public final o:Z

.field public p:Z

.field public q:[B

.field public r:I


# direct methods
.method public constructor <init>(LL/n;LL/g;LL/D;LG/x;JLcom/brisa/local/j;LC1/e;ZLY/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/g0;->e:LL/n;

    iput-object p2, p0, LU/g0;->f:LL/g;

    iput-object p3, p0, LU/g0;->g:LL/D;

    iput-object p4, p0, LU/g0;->n:LG/x;

    iput-wide p5, p0, LU/g0;->l:J

    iput-object p7, p0, LU/g0;->h:Lcom/brisa/local/j;

    iput-object p8, p0, LU/g0;->i:LC1/e;

    iput-boolean p9, p0, LU/g0;->o:Z

    new-instance p1, LU/l0;

    new-instance p2, LG/r0;

    filled-new-array {p4}, [LG/x;

    move-result-object p3

    const-string p4, ""

    invoke-direct {p2, p4, p3}, LG/r0;-><init>(Ljava/lang/String;[LG/x;)V

    filled-new-array {p2}, [LG/r0;

    move-result-object p2

    invoke-direct {p1, p2}, LU/l0;-><init>([LG/r0;)V

    iput-object p1, p0, LU/g0;->j:LU/l0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LU/g0;->k:Ljava/util/ArrayList;

    if-eqz p10, :cond_0

    new-instance p1, LX/m;

    invoke-direct {p1, p10}, LX/m;-><init>(LY/a;)V

    goto :goto_0

    :cond_0
    new-instance p1, LX/m;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, LX/m;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, LU/g0;->m:LX/m;

    return-void
.end method


# virtual methods
.method public final a(LX/j;JJI)V
    .locals 9

    check-cast p1, LU/f0;

    iget-object v0, p1, LU/f0;->c:LL/C;

    new-instance v1, LU/q;

    iget-wide v2, p1, LU/f0;->a:J

    iget-object v4, p1, LU/f0;->b:LL/n;

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, LU/q;-><init>(JLL/n;J)V

    if-eqz p6, :cond_0

    iget-object p1, v0, LL/C;->g:Landroid/net/Uri;

    iput-object p1, v1, LU/q;->d:Landroid/net/Uri;

    iget-object p1, v0, LL/C;->h:Ljava/util/Map;

    iput-object p1, v1, LU/q;->e:Ljava/util/Map;

    iput-wide p4, v1, LU/q;->f:J

    iget-wide p1, v0, LL/C;->f:J

    iput-wide p1, v1, LU/q;->g:J

    :cond_0
    new-instance p1, LU/r;

    invoke-direct {p1, v1}, LU/r;-><init>(LU/q;)V

    new-instance v2, LU/w;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, LJ/W;->S(J)J

    move-result-wide v5

    iget-wide p2, p0, LU/g0;->l:J

    invoke-static {p2, p3}, LJ/W;->S(J)J

    move-result-wide v7

    const/4 v3, -0x1

    iget-object v4, p0, LU/g0;->n:LG/x;

    invoke-direct/range {v2 .. v8}, LU/w;-><init>(ILG/x;JJ)V

    new-instance p2, LU/C;

    iget-object p3, p0, LU/g0;->i:LC1/e;

    invoke-direct {p2, p3, p1, v2, p6}, LU/C;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p3, p2}, LC1/e;->f(LJ/k;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LU/g0;->m:LX/m;

    invoke-virtual {v0}, LX/m;->a()Z

    move-result v0

    return v0
.end method

.method public final d(LX/j;JJ)V
    .locals 7

    check-cast p1, LU/f0;

    iget-object v0, p1, LU/f0;->c:LL/C;

    iget-wide v0, v0, LL/C;->f:J

    long-to-int v0, v0

    iput v0, p0, LU/g0;->r:I

    iget-object v0, p1, LU/f0;->d:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, LU/g0;->q:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/g0;->p:Z

    iget-object v0, p1, LU/f0;->c:LL/C;

    new-instance v1, LU/q;

    iget-wide v2, p1, LU/f0;->a:J

    iget-object v4, p1, LU/f0;->b:LL/n;

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, LU/q;-><init>(JLL/n;J)V

    iget-object p1, v0, LL/C;->g:Landroid/net/Uri;

    iput-object p1, v1, LU/q;->d:Landroid/net/Uri;

    iget-object p1, v0, LL/C;->h:Ljava/util/Map;

    iput-object p1, v1, LU/q;->e:Ljava/util/Map;

    iput-wide p4, v1, LU/q;->f:J

    iget p1, p0, LU/g0;->r:I

    int-to-long p1, p1

    iput-wide p1, v1, LU/q;->g:J

    new-instance p1, LU/r;

    invoke-direct {p1, v1}, LU/r;-><init>(LU/q;)V

    iget-object p2, p0, LU/g0;->h:Lcom/brisa/local/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/w;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, LJ/W;->S(J)J

    move-result-wide v3

    iget-wide p2, p0, LU/g0;->l:J

    invoke-static {p2, p3}, LJ/W;->S(J)J

    move-result-wide v5

    const/4 v1, -0x1

    iget-object v2, p0, LU/g0;->n:LG/x;

    invoke-direct/range {v0 .. v6}, LU/w;-><init>(ILG/x;JJ)V

    new-instance p2, LU/D;

    const/4 p3, 0x0

    iget-object p4, p0, LU/g0;->i:LC1/e;

    invoke-direct {p2, p4, p1, v0, p3}, LU/D;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p4, p2}, LC1/e;->f(LJ/k;)V

    return-void
.end method

.method public final f(LU/x;J)V
    .locals 0

    invoke-interface {p1, p0}, LU/x;->c(LU/y;)V

    return-void
.end method

.method public final h()J
    .locals 2

    iget-boolean v0, p0, LU/g0;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LU/g0;->m:LX/m;

    invoke-virtual {v0}, LX/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final i()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final j(LN/J;)Z
    .locals 9

    iget-boolean p1, p0, LU/g0;->p:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    iget-object v2, p0, LU/g0;->m:LX/m;

    invoke-virtual {v2}, LX/m;->a()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, LX/m;->c:Ljava/io/IOException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LU/g0;->f:LL/g;

    invoke-interface {p1}, LL/g;->t()LL/h;

    move-result-object p1

    iget-object v1, p0, LU/g0;->g:LL/D;

    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, LL/h;->y(LL/D;)V

    :cond_1
    new-instance v4, LU/f0;

    iget-object v1, p0, LU/g0;->e:LL/n;

    invoke-direct {v4, v1, p1}, LU/f0;-><init>(LL/n;LL/h;)V

    iget-object p1, p0, LU/g0;->h:Lcom/brisa/local/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, v2, LX/m;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v1, LX/i;

    const/4 v6, 0x3

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, LX/i;-><init>(LX/m;Landroid/os/Looper;LX/j;LX/h;IJ)V

    iget-object p1, v2, LX/m;->b:LX/i;

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v0, v3

    :cond_2
    invoke-static {v0}, LF1/i;->o(Z)V

    iput-object v1, v2, LX/m;->b:LX/i;

    invoke-virtual {v1}, LX/i;->b()V

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method public final k([LW/q;[Z[LU/a0;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    iget-object v2, p0, LU/g0;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, LU/e0;

    invoke-direct {v1, p0}, LU/e0;-><init>(LU/g0;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public final l(LX/j;JJLjava/io/IOException;I)LJ0/f;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p1

    check-cast v2, LU/f0;

    iget-object v3, v2, LU/f0;->c:LL/C;

    new-instance v4, LU/q;

    iget-wide v5, v2, LU/f0;->a:J

    iget-object v7, v2, LU/f0;->b:LL/n;

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, LU/q;-><init>(JLL/n;J)V

    iget-object v2, v3, LL/C;->g:Landroid/net/Uri;

    iput-object v2, v4, LU/q;->d:Landroid/net/Uri;

    iget-object v2, v3, LL/C;->h:Ljava/util/Map;

    iput-object v2, v4, LU/q;->e:Ljava/util/Map;

    move-wide/from16 v5, p4

    iput-wide v5, v4, LU/q;->f:J

    iget-wide v2, v3, LL/C;->f:J

    iput-wide v2, v4, LU/q;->g:J

    new-instance v7, LU/r;

    invoke-direct {v7, v4}, LU/r;-><init>(LU/q;)V

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget-object v2, v0, LU/g0;->h:Lcom/brisa/local/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p6

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    instance-of v5, v2, LG/X;

    if-nez v5, :cond_1

    instance-of v5, v2, Ljava/io/FileNotFoundException;

    if-nez v5, :cond_1

    instance-of v5, v2, LL/v;

    if-nez v5, :cond_1

    instance-of v5, v2, LX/l;

    if-nez v5, :cond_1

    instance-of v5, v2, LL/l;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, LL/l;

    iget v5, v5, LL/l;->e:I

    const/16 v6, 0x7d8

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v5, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v5, 0x1388

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v5, v2

    :goto_2
    cmp-long v2, v5, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const/4 v8, 0x3

    if-lt v1, v8, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v3

    :goto_4
    iget-boolean v8, v0, LU/g0;->o:Z

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    const-string v1, "SingleSampleMediaPeriod"

    const-string v2, "Loading failed, treating as end-of-stream."

    move-object/from16 v9, p6

    invoke-static {v1, v2, v9}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v3, v0, LU/g0;->p:Z

    sget-object v1, LX/m;->d:LJ0/f;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    if-eqz v2, :cond_6

    new-instance v1, LJ0/f;

    invoke-direct {v1, v4, v5, v6}, LJ0/f;-><init>(IJ)V

    goto :goto_5

    :cond_6
    sget-object v1, LX/m;->e:LJ0/f;

    :goto_5
    iget v2, v1, LJ0/f;->a:I

    if-eqz v2, :cond_7

    if-ne v2, v3, :cond_8

    :cond_7
    move v4, v3

    :cond_8
    xor-int/lit8 v10, v4, 0x1

    new-instance v8, LU/w;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v14

    iget-wide v2, v0, LU/g0;->l:J

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v16

    const/4 v12, -0x1

    iget-object v13, v0, LU/g0;->n:LG/x;

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, LU/w;-><init>(ILG/x;JJ)V

    new-instance v5, LU/E;

    iget-object v6, v0, LU/g0;->i:LC1/e;

    invoke-direct/range {v5 .. v10}, LU/E;-><init>(LC1/e;LU/r;LU/w;Ljava/io/IOException;Z)V

    invoke-virtual {v6, v5}, LC1/e;->f(LJ/k;)V

    return-object v1
.end method

.method public final m()LU/l0;
    .locals 1

    iget-object v0, p0, LU/g0;->j:LU/l0;

    return-object v0
.end method

.method public final n()J
    .locals 2

    iget-boolean v0, p0, LU/g0;->p:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final o(JLN/h0;)J
    .locals 0

    return-wide p1
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q(J)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LU/g0;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/e0;

    iget v2, v1, LU/e0;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput v2, v1, LU/e0;->e:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final r(J)V
    .locals 0

    return-void
.end method

.method public final s(LX/j;JJZ)V
    .locals 7

    check-cast p1, LU/f0;

    iget-object p6, p1, LU/f0;->c:LL/C;

    new-instance v0, LU/q;

    iget-wide v1, p1, LU/f0;->a:J

    iget-object v3, p1, LU/f0;->b:LL/n;

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, LU/q;-><init>(JLL/n;J)V

    iget-object p1, p6, LL/C;->g:Landroid/net/Uri;

    iput-object p1, v0, LU/q;->d:Landroid/net/Uri;

    iget-object p1, p6, LL/C;->h:Ljava/util/Map;

    iput-object p1, v0, LU/q;->e:Ljava/util/Map;

    iput-wide p4, v0, LU/q;->f:J

    iget-wide p1, p6, LL/C;->f:J

    iput-wide p1, v0, LU/q;->g:J

    new-instance p1, LU/r;

    invoke-direct {p1, v0}, LU/r;-><init>(LU/q;)V

    iget-object p2, p0, LU/g0;->h:Lcom/brisa/local/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LU/w;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, LJ/W;->S(J)J

    move-result-wide v3

    iget-wide p2, p0, LU/g0;->l:J

    invoke-static {p2, p3}, LJ/W;->S(J)J

    move-result-wide v5

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, LU/w;-><init>(ILG/x;JJ)V

    new-instance p2, LU/D;

    const/4 p3, 0x1

    iget-object p4, p0, LU/g0;->i:LC1/e;

    invoke-direct {p2, p4, p1, v0, p3}, LU/D;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p4, p2}, LC1/e;->f(LJ/k;)V

    return-void
.end method

.method public final t(J)V
    .locals 0

    return-void
.end method
