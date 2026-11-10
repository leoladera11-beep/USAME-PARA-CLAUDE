.class public final LT/b;
.super LN/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final A:Lk0/c;

.field public B:Lcom/brisa/local/a;

.field public C:Z

.field public D:Z

.field public E:J

.field public F:LG/V;

.field public G:J

.field public final x:LT/a;

.field public final y:LN/s;

.field public final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(LN/s;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, LN/a;-><init>(I)V

    iput-object p1, p0, LT/b;->y:LN/s;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, LJ/W;->a:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, LT/b;->z:Landroid/os/Handler;

    sget-object p1, LT/a;->a:LT/a;

    iput-object p1, p0, LT/b;->x:LT/a;

    new-instance p1, Lk0/c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LM/f;-><init>(I)V

    iput-object p1, p0, LT/b;->A:Lk0/c;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LT/b;->G:J

    return-void
.end method


# virtual methods
.method public final D(LG/x;)I
    .locals 2

    iget-object v0, p0, LT/b;->x:LT/a;

    invoke-virtual {v0, p1}, LT/a;->b(LG/x;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget p1, p1, LG/x;->T:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v1, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p1

    return p1
.end method

.method public final H(LG/V;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, LG/V;->a:[LG/U;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-interface {v2}, LG/U;->a()LG/x;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, LT/b;->x:LT/a;

    invoke-virtual {v3, v2}, LT/a;->b(LG/x;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, LT/a;->a(LG/x;)Lcom/brisa/local/a;

    move-result-object v2

    aget-object v1, v1, v0

    invoke-interface {v1}, LG/U;->b()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LT/b;->A:Lk0/c;

    invoke-virtual {v3}, LM/f;->h()V

    array-length v4, v1

    invoke-virtual {v3, v4}, LM/f;->j(I)V

    iget-object v4, v3, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, LM/f;->k()V

    invoke-virtual {v2, v3}, Lcom/brisa/local/a;->h(Lk0/c;)LG/V;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p2}, LT/b;->H(LG/V;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-wide v5, p0, LT/b;->G:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, LF1/i;->o(Z)V

    iget-wide v0, p0, LT/b;->G:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final J(LG/V;)V
    .locals 7

    iget-object v0, p0, LT/b;->y:LN/s;

    iget-object v1, v0, LN/s;->a:LN/x;

    iget-object v2, v1, LN/x;->p0:LG/T;

    iget-object v3, v1, LN/x;->m:LJ/t;

    invoke-virtual {v2}, LG/T;->a()LG/S;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, LG/V;->a:[LG/U;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    invoke-interface {v5, v2}, LG/U;->c(LG/S;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, LG/T;

    invoke-direct {v4, v2}, LG/T;-><init>(LG/S;)V

    iput-object v4, v1, LN/x;->p0:LG/T;

    invoke-virtual {v1}, LN/x;->f1()LG/T;

    move-result-object v2

    iget-object v4, v1, LN/x;->R:LG/T;

    invoke-virtual {v2, v4}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v2, v1, LN/x;->R:LG/T;

    new-instance v1, LI0/E;

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0xe

    invoke-virtual {v3, v0, v1}, LJ/t;->c(ILJ/q;)V

    :cond_1
    new-instance v0, LI0/E;

    const/16 v1, 0xf

    invoke-direct {v0, p1, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x1c

    invoke-virtual {v3, p1, v0}, LJ/t;->c(ILJ/q;)V

    invoke-virtual {v3}, LJ/t;->b()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LG/V;

    invoke-virtual {p0, p1}, LT/b;->J(LG/V;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, LT/b;->D:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LT/b;->F:LG/V;

    iput-object v0, p0, LT/b;->B:Lcom/brisa/local/a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, LT/b;->G:J

    return-void
.end method

.method public final r(JZZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LT/b;->F:LG/V;

    const/4 p1, 0x0

    iput-boolean p1, p0, LT/b;->C:Z

    iput-boolean p1, p0, LT/b;->D:Z

    return-void
.end method

.method public final w([LG/x;JJLU/A;)V
    .locals 2

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, LT/b;->x:LT/a;

    invoke-virtual {p2, p1}, LT/a;->a(LG/x;)Lcom/brisa/local/a;

    move-result-object p1

    iput-object p1, p0, LT/b;->B:Lcom/brisa/local/a;

    iget-object p1, p0, LT/b;->F:LG/V;

    if-eqz p1, :cond_1

    iget-wide p2, p1, LG/V;->b:J

    iget-wide v0, p0, LT/b;->G:J

    add-long/2addr v0, p2

    sub-long/2addr v0, p4

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LG/V;

    iget-object p1, p1, LG/V;->a:[LG/U;

    invoke-direct {p2, v0, v1, p1}, LG/V;-><init>(J[LG/U;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, LT/b;->F:LG/V;

    :cond_1
    iput-wide p4, p0, LT/b;->G:J

    return-void
.end method

.method public final z(JJ)V
    .locals 14

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_a

    iget-boolean v1, p0, LT/b;->C:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, LT/b;->F:LG/V;

    if-nez v1, :cond_7

    iget-object v1, p0, LT/b;->A:Lk0/c;

    invoke-virtual {v1}, LM/f;->h()V

    iget-object v3, p0, LN/a;->g:LN0/O;

    invoke-virtual {v3}, LN0/O;->I()V

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v1, v4}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v4

    const/4 v5, -0x3

    const/4 v6, 0x4

    if-ne v4, v5, :cond_1

    invoke-virtual {v1, v6}, LK/f;->f(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide/32 v7, 0xf4240

    const/4 v9, -0x4

    if-ne v4, v9, :cond_2

    invoke-virtual {v1, v6}, LK/f;->f(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-wide v4, v1, LM/f;->k:J

    sub-long/2addr v4, v7

    cmp-long v4, p1, v4

    if-gez v4, :cond_4

    goto/16 :goto_1

    :cond_2
    if-eq v4, v9, :cond_3

    if-ne v4, v5, :cond_4

    :cond_3
    iget-wide v4, p0, LN/a;->v:J

    iget-wide v10, p0, LN/a;->o:J

    sub-long v10, p1, v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v4, v12

    if-eqz v12, :cond_7

    sub-long/2addr v4, v7

    cmp-long v4, v10, v4

    if-gez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3, v1, v2}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v4

    if-ne v4, v9, :cond_6

    invoke-virtual {v1, v6}, LK/f;->f(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v0, p0, LT/b;->C:Z

    goto :goto_1

    :cond_5
    iget-wide v3, v1, LM/f;->k:J

    iget-wide v5, p0, LN/a;->p:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    iget-wide v3, p0, LT/b;->E:J

    iput-wide v3, v1, Lk0/c;->n:J

    invoke-virtual {v1}, LM/f;->k()V

    iget-object v3, p0, LT/b;->B:Lcom/brisa/local/a;

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/brisa/local/a;->h(Lk0/c;)LG/V;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, LG/V;->a:[LG/U;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v3, v4}, LT/b;->H(LG/V;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, LG/V;

    iget-wide v5, v1, LM/f;->k:J

    invoke-virtual {p0, v5, v6}, LT/b;->I(J)J

    move-result-wide v5

    new-array v1, v2, [LG/U;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LG/U;

    invoke-direct {v3, v5, v6, v1}, LG/V;-><init>(J[LG/U;)V

    iput-object v3, p0, LT/b;->F:LG/V;

    goto :goto_1

    :cond_6
    const/4 v1, -0x5

    if-ne v4, v1, :cond_7

    iget-object v1, v3, LN0/O;->g:Ljava/lang/Object;

    check-cast v1, LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v1, LG/x;->u:J

    iput-wide v3, p0, LT/b;->E:J

    :cond_7
    :goto_1
    iget-object v1, p0, LT/b;->F:LG/V;

    if-eqz v1, :cond_9

    iget-wide v3, v1, LG/V;->b:J

    invoke-virtual/range {p0 .. p2}, LT/b;->I(J)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_9

    iget-object v1, p0, LT/b;->F:LG/V;

    iget-object v2, p0, LT/b;->z:Landroid/os/Handler;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v1}, LT/b;->J(LG/V;)V

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, LT/b;->F:LG/V;

    move v1, v0

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    iget-boolean v2, p0, LT/b;->C:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, LT/b;->F:LG/V;

    if-nez v2, :cond_0

    iput-boolean v0, p0, LT/b;->D:Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method
