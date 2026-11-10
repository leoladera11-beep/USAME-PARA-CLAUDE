.class public final synthetic LM0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LM0/Q1;
.implements LM0/T1;
.implements LJ/q;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p4, p0, LM0/b0;->g:Ljava/lang/Object;

    iput p1, p0, LM0/b0;->e:I

    iput-wide p2, p0, LM0/b0;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LO/a;IJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/b0;->g:Ljava/lang/Object;

    iput p2, p0, LM0/b0;->e:I

    iput-wide p3, p0, LM0/b0;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Ly0/n;JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/b0;->g:Ljava/lang/Object;

    iput-wide p2, p0, LM0/b0;->f:J

    iput p4, p0, LM0/b0;->e:I

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 7

    iget-object v0, p0, LM0/b0;->g:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-wide v5, p0, LM0/b0;->f:J

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    iget v4, p0, LM0/b0;->e:I

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, LM0/q;->a0(LM0/o;IIJ)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, LM0/b0;->g:Ljava/lang/Object;

    check-cast v0, Ly0/n;

    check-cast p1, Ly0/a;

    iget-object v1, v0, Ly0/n;->h:LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Ly0/a;->a:Lu1/P;

    iget-wide v2, p1, Ly0/a;->c:J

    invoke-static {v1, v2, v3}, Ld1/m;->k(Lu1/P;J)[B

    move-result-object v1

    iget-object v2, v0, Ly0/n;->c:LJ/D;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, LJ/D;->L([BI)V

    iget-object v3, v0, Ly0/n;->a:Lb0/G;

    array-length v4, v1

    invoke-interface {v3, v4, v2}, Lb0/G;->a(ILJ/D;)V

    iget-wide v2, p1, Ly0/a;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    iget-wide v4, p0, LM0/b0;->f:J

    const/4 v6, 0x1

    const-wide v7, 0x7fffffffffffffffL

    if-nez p1, :cond_1

    iget-object p1, v0, Ly0/n;->h:LG/x;

    iget-wide v2, p1, LG/x;->u:J

    cmp-long p1, v2, v7

    if-nez p1, :cond_0

    move p1, v6

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, LF1/i;->o(Z)V

    :goto_1
    move-wide v8, v4

    goto :goto_2

    :cond_1
    iget-object p1, v0, Ly0/n;->h:LG/x;

    iget-wide v9, p1, LG/x;->u:J

    cmp-long p1, v9, v7

    if-nez p1, :cond_2

    add-long/2addr v4, v2

    goto :goto_1

    :cond_2
    add-long v4, v2, v9

    goto :goto_1

    :goto_2
    iget-object v7, v0, Ly0/n;->a:Lb0/G;

    iget p1, p0, LM0/b0;->e:I

    or-int/lit8 v10, p1, 0x1

    array-length v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lb0/G;->f(JIIILb0/F;)V

    return-void
.end method

.method public c(LM0/d2;LM0/N0;)V
    .locals 4

    iget-object v0, p0, LM0/b0;->g:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-wide v1, p0, LM0/b0;->f:J

    iget v3, p0, LM0/b0;->e:I

    invoke-virtual {v0, p2, p1, v3}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, p2, v1, v2}, LM0/d2;->t(IJ)V

    return-void
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 6

    iget-object p3, p0, LM0/b0;->g:Ljava/lang/Object;

    check-cast p3, Landroid/os/IBinder;

    :try_start_0
    invoke-static {p3}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object p3

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, LM0/N0;->c:I

    invoke-static {v3, v2}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget p3, p0, LM0/b0;->e:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object v1, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1}, LM0/d2;->V()I

    move-result v1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    if-ne p3, v0, :cond_2

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p3, p1, LM0/X0;->t:LM0/d2;

    invoke-virtual {p3}, LM0/d2;->O0()J

    move-result-wide v0

    :goto_2
    move-wide v4, v0

    move-object v0, p1

    move-object v1, p2

    goto :goto_3

    :cond_2
    iget-wide v0, p0, LM0/b0;->f:J

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v5}, LM0/X0;->s(LM0/N0;Lu1/C0;IJ)Lz1/H;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, LM0/b0;->g:Ljava/lang/Object;

    check-cast v0, LO/a;

    check-cast p1, LO/i;

    iget-object v1, p1, LO/i;->h:Ljava/util/HashMap;

    iget-object v2, p1, LO/i;->i:Ljava/util/HashMap;

    iget-object v3, v0, LO/a;->d:LU/A;

    if-eqz v3, :cond_2

    iget-object p1, p1, LO/i;->c:LO/f;

    iget-object v0, v0, LO/a;->b:LG/q0;

    invoke-virtual {p1, v0, v3}, LO/f;->c(LG/q0;LU/A;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    iget-wide v8, p0, LM0/b0;->f:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    iget v0, p0, LM0/b0;->e:I

    int-to-long v2, v0

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
