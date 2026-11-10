.class public final LU/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/G;


# instance fields
.field public A:Z

.field public B:Z

.field public C:LG/x;

.field public D:Z

.field public E:Z

.field public final a:LU/X;

.field public final b:LR/f;

.field public final c:LC1/e;

.field public final d:LQ/o;

.field public final e:LQ/k;

.field public f:LU/T;

.field public g:LG/x;

.field public h:LQ/h;

.field public i:I

.field public j:[J

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[Lb0/F;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(LB/A;LQ/o;LQ/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LU/Z;->d:LQ/o;

    iput-object p3, p0, LU/Z;->e:LQ/k;

    new-instance p2, LU/X;

    invoke-direct {p2, p1}, LU/X;-><init>(LB/A;)V

    iput-object p2, p0, LU/Z;->a:LU/X;

    new-instance p1, LR/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/Z;->b:LR/f;

    const/16 p1, 0x3e8

    iput p1, p0, LU/Z;->i:I

    new-array p2, p1, [J

    iput-object p2, p0, LU/Z;->j:[J

    new-array p2, p1, [J

    iput-object p2, p0, LU/Z;->k:[J

    new-array p2, p1, [J

    iput-object p2, p0, LU/Z;->n:[J

    new-array p2, p1, [I

    iput-object p2, p0, LU/Z;->m:[I

    new-array p2, p1, [I

    iput-object p2, p0, LU/Z;->l:[I

    new-array p1, p1, [Lb0/F;

    iput-object p1, p0, LU/Z;->o:[Lb0/F;

    new-instance p1, LC1/e;

    new-instance p2, LP/B;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, LP/B;-><init>(I)V

    invoke-direct {p1, p2}, LC1/e;-><init>(LP/B;)V

    iput-object p1, p0, LU/Z;->c:LC1/e;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, LU/Z;->t:J

    iput-wide p1, p0, LU/Z;->v:J

    iput-wide p1, p0, LU/Z;->w:J

    const/4 p3, 0x1

    iput-boolean p3, p0, LU/Z;->B:Z

    iput-boolean p3, p0, LU/Z;->A:Z

    iput-boolean p3, p0, LU/Z;->D:Z

    iput-wide p1, p0, LU/Z;->u:J

    const/4 p1, -0x1

    iput p1, p0, LU/Z;->x:I

    iput p1, p0, LU/Z;->y:I

    return-void
.end method


# virtual methods
.method public final b(LG/x;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, LU/Z;->B:Z

    iget-object v1, p0, LU/Z;->C:LG/x;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v1, p0, LU/Z;->c:LC1/e;

    iget-object v1, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, LU/Z;->c:LC1/e;

    iget-object v1, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/Y;

    iget-object v1, v1, LU/Y;->a:LG/x;

    invoke-virtual {v1, p1}, LG/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, LU/Z;->c:LC1/e;

    iget-object p1, p1, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU/Y;

    iget-object p1, p1, LU/Y;->a:LG/x;

    iput-object p1, p0, LU/Z;->C:LG/x;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    iput-object p1, p0, LU/Z;->C:LG/x;

    :goto_1
    iget-boolean p1, p0, LU/Z;->D:Z

    iget-object v1, p0, LU/Z;->C:LG/x;

    iget-object v3, v1, LG/x;->p:Ljava/lang/String;

    iget-object v1, v1, LG/x;->l:Ljava/lang/String;

    invoke-static {v3}, LG/W;->g(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-static {v3, v1}, LG/W;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    and-int/2addr p1, v1

    iput-boolean p1, p0, LU/Z;->D:Z

    iput-boolean v0, p0, LU/Z;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v0, v2

    :goto_3
    iget-object p1, p0, LU/Z;->f:LU/T;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p1, LU/T;->v:Landroid/os/Handler;

    iget-object p1, p1, LU/T;->t:LU/M;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final c(LJ/D;II)V
    .locals 8

    :cond_0
    :goto_0
    iget-object p3, p0, LU/Z;->a:LU/X;

    if-lez p2, :cond_1

    invoke-virtual {p3, p2}, LU/X;->b(I)I

    move-result v0

    iget-object v1, p3, LU/X;->f:LP/N;

    iget-object v2, v1, LP/N;->d:Ljava/lang/Object;

    check-cast v2, LX/a;

    iget-object v3, v2, LX/a;->a:[B

    iget-wide v4, p3, LU/X;->g:J

    iget-wide v6, v1, LP/N;->b:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v2, v2, LX/a;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1, v3, v0}, LJ/D;->k(I[BI)V

    sub-int/2addr p2, v0

    iget-wide v1, p3, LU/X;->g:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p3, LU/X;->g:J

    iget-object v0, p3, LU/X;->f:LP/N;

    iget-wide v3, v0, LP/N;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, LP/N;->e:Ljava/lang/Object;

    check-cast v0, LP/N;

    iput-object v0, p3, LU/X;->f:LP/N;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(LG/o;IZ)I
    .locals 8

    iget-object v0, p0, LU/Z;->a:LU/X;

    invoke-virtual {v0, p2}, LU/X;->b(I)I

    move-result p2

    iget-object v1, v0, LU/X;->f:LP/N;

    iget-object v2, v1, LP/N;->d:Ljava/lang/Object;

    check-cast v2, LX/a;

    iget-object v3, v2, LX/a;->a:[B

    iget-wide v4, v0, LU/X;->g:J

    iget-wide v6, v1, LP/N;->b:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v2, v2, LX/a;->b:I

    add-int/2addr v1, v2

    invoke-interface {p1, v3, v1, p2}, LG/o;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget-wide p2, v0, LU/X;->g:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, v0, LU/X;->g:J

    iget-object v1, v0, LU/X;->f:LP/N;

    iget-wide v2, v1, LP/N;->c:J

    cmp-long p2, p2, v2

    if-nez p2, :cond_2

    iget-object p2, v1, LP/N;->e:Ljava/lang/Object;

    check-cast p2, LP/N;

    iput-object p2, v0, LU/X;->f:LP/N;

    :cond_2
    return p1
.end method

.method public final f(JIIILb0/F;)V
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-boolean v4, p0, LU/Z;->A:Z

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, LU/Z;->A:Z

    :cond_2
    iget-boolean v3, p0, LU/Z;->D:Z

    if-eqz v3, :cond_5

    iget-wide v3, p0, LU/Z;->t:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_3

    :goto_1
    return-void

    :cond_3
    if-nez v0, :cond_5

    iget-boolean v0, p0, LU/Z;->E:Z

    if-nez v0, :cond_4

    const-string v0, "SampleQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LU/Z;->C:LG/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, LU/Z;->E:Z

    :cond_4
    or-int/lit8 p3, p3, 0x1

    :cond_5
    iget-object v0, p0, LU/Z;->a:LU/X;

    iget-wide v3, v0, LU/X;->g:J

    int-to-long v5, p4

    sub-long/2addr v3, v5

    int-to-long v5, p5

    sub-long/2addr v3, v5

    monitor-enter p0

    :try_start_0
    iget p5, p0, LU/Z;->p:I

    if-lez p5, :cond_7

    sub-int/2addr p5, v2

    invoke-virtual {p0, p5}, LU/Z;->k(I)I

    move-result p5

    iget-object v0, p0, LU/Z;->k:[J

    aget-wide v5, v0, p5

    iget-object v0, p0, LU/Z;->l:[I

    aget p5, v0, p5

    int-to-long v7, p5

    add-long/2addr v5, v7

    cmp-long p5, v5, v3

    if-gtz p5, :cond_6

    move p5, v2

    goto :goto_2

    :cond_6
    move p5, v1

    :goto_2
    invoke-static {p5}, LF1/i;->g(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_7
    :goto_3
    const/high16 p5, 0x20000000

    and-int/2addr p5, p3

    if-eqz p5, :cond_8

    move p5, v2

    goto :goto_4

    :cond_8
    move p5, v1

    :goto_4
    iput-boolean p5, p0, LU/Z;->z:Z

    iget-wide v5, p0, LU/Z;->w:J

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, LU/Z;->w:J

    iget p5, p0, LU/Z;->q:I

    iget v0, p0, LU/Z;->p:I

    add-int/2addr p5, v0

    invoke-virtual {p0, p5, p3, p1, p2}, LU/Z;->s(IIJ)V

    iget p5, p0, LU/Z;->p:I

    invoke-virtual {p0, p5}, LU/Z;->k(I)I

    move-result p5

    iget-object v0, p0, LU/Z;->n:[J

    aput-wide p1, v0, p5

    iget-object p1, p0, LU/Z;->k:[J

    aput-wide v3, p1, p5

    iget-object p1, p0, LU/Z;->l:[I

    aput p4, p1, p5

    iget-object p1, p0, LU/Z;->m:[I

    aput p3, p1, p5

    iget-object p1, p0, LU/Z;->o:[Lb0/F;

    aput-object p6, p1, p5

    iget-object p1, p0, LU/Z;->j:[J

    const-wide/16 p2, 0x0

    aput-wide p2, p1, p5

    iget-object p1, p0, LU/Z;->c:LC1/e;

    iget-object p1, p1, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_9

    move p1, v2

    goto :goto_5

    :cond_9
    move p1, v1

    :goto_5
    if-nez p1, :cond_a

    iget-object p1, p0, LU/Z;->c:LC1/e;

    iget-object p1, p1, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU/Y;

    iget-object p1, p1, LU/Y;->a:LG/x;

    iget-object p2, p0, LU/Z;->C:LG/x;

    invoke-virtual {p1, p2}, LG/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    :cond_a
    iget-object p1, p0, LU/Z;->C:LG/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, LU/Z;->d:LQ/o;

    if-eqz p2, :cond_b

    iget-object p3, p0, LU/Z;->e:LQ/k;

    invoke-interface {p2, p3, p1}, LQ/o;->b(LQ/k;LG/x;)LQ/n;

    move-result-object p2

    goto :goto_6

    :cond_b
    sget-object p2, LQ/n;->a:LP/B;

    :goto_6
    iget-object p3, p0, LU/Z;->c:LC1/e;

    iget p4, p0, LU/Z;->q:I

    iget p5, p0, LU/Z;->p:I

    add-int/2addr p4, p5

    new-instance p5, LU/Y;

    invoke-direct {p5, p1, p2}, LU/Y;-><init>(LG/x;LQ/n;)V

    iget-object p1, p3, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    iget p2, p3, LC1/e;->f:I

    const/4 p6, -0x1

    if-ne p2, p6, :cond_d

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_c

    move p2, v2

    goto :goto_7

    :cond_c
    move p2, v1

    :goto_7
    invoke-static {p2}, LF1/i;->o(Z)V

    iput v1, p3, LC1/e;->f:I

    :cond_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_f

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    if-lt p4, p2, :cond_e

    move p6, v2

    goto :goto_8

    :cond_e
    move p6, v1

    :goto_8
    invoke-static {p6}, LF1/i;->g(Z)V

    if-ne p2, p4, :cond_f

    iget-object p2, p3, LC1/e;->h:Ljava/lang/Object;

    check-cast p2, LP/B;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, LP/B;->accept(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p1, p4, p5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_10
    iget p1, p0, LU/Z;->p:I

    add-int/2addr p1, v2

    iput p1, p0, LU/Z;->p:I

    iget p2, p0, LU/Z;->i:I

    if-ne p1, p2, :cond_11

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [J

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array v0, p1, [I

    new-array v2, p1, [Lb0/F;

    iget v3, p0, LU/Z;->r:I

    sub-int/2addr p2, v3

    iget-object v4, p0, LU/Z;->k:[J

    invoke-static {v4, v3, p4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LU/Z;->n:[J

    iget v4, p0, LU/Z;->r:I

    invoke-static {v3, v4, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LU/Z;->m:[I

    iget v4, p0, LU/Z;->r:I

    invoke-static {v3, v4, p6, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LU/Z;->l:[I

    iget v4, p0, LU/Z;->r:I

    invoke-static {v3, v4, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LU/Z;->o:[Lb0/F;

    iget v4, p0, LU/Z;->r:I

    invoke-static {v3, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LU/Z;->j:[J

    iget v4, p0, LU/Z;->r:I

    invoke-static {v3, v4, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, LU/Z;->r:I

    iget-object v4, p0, LU/Z;->k:[J

    invoke-static {v4, v1, p4, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LU/Z;->n:[J

    invoke-static {v4, v1, p5, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LU/Z;->m:[I

    invoke-static {v4, v1, p6, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LU/Z;->l:[I

    invoke-static {v4, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LU/Z;->o:[Lb0/F;

    invoke-static {v4, v1, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LU/Z;->j:[J

    invoke-static {v4, v1, p3, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, LU/Z;->k:[J

    iput-object p5, p0, LU/Z;->n:[J

    iput-object p6, p0, LU/Z;->m:[I

    iput-object v0, p0, LU/Z;->l:[I

    iput-object v2, p0, LU/Z;->o:[Lb0/F;

    iput-object p3, p0, LU/Z;->j:[J

    iput v1, p0, LU/Z;->r:I

    iput p1, p0, LU/Z;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_11
    monitor-exit p0

    return-void

    :goto_9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(I)J
    .locals 9

    iget-wide v0, p0, LU/Z;->v:J

    const-wide/high16 v2, -0x8000000000000000L

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, LU/Z;->k(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_3

    iget-object v6, p0, LU/Z;->n:[J

    aget-wide v7, v6, v4

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v6, p0, LU/Z;->m:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    iget v4, p0, LU/Z;->i:I

    add-int/lit8 v4, v4, -0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, LU/Z;->v:J

    iget v0, p0, LU/Z;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, LU/Z;->p:I

    iget v0, p0, LU/Z;->q:I

    add-int/2addr v0, p1

    iput v0, p0, LU/Z;->q:I

    iget v1, p0, LU/Z;->r:I

    add-int/2addr v1, p1

    iput v1, p0, LU/Z;->r:I

    iget v2, p0, LU/Z;->i:I

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v2

    iput v1, p0, LU/Z;->r:I

    :cond_4
    iget v1, p0, LU/Z;->s:I

    sub-int/2addr v1, p1

    iput v1, p0, LU/Z;->s:I

    const/4 p1, 0x0

    if-gez v1, :cond_5

    iput p1, p0, LU/Z;->s:I

    :cond_5
    iget-object v1, p0, LU/Z;->c:LC1/e;

    iget-object v2, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_7

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lt v0, v4, :cond_7

    iget-object v4, v1, LC1/e;->h:Ljava/lang/Object;

    check-cast v4, LP/B;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, LP/B;->accept(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    iget p1, v1, LC1/e;->f:I

    if-lez p1, :cond_6

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, LC1/e;->f:I

    :cond_6
    move p1, v3

    goto :goto_2

    :cond_7
    iget p1, p0, LU/Z;->p:I

    if-nez p1, :cond_9

    iget p1, p0, LU/Z;->r:I

    if-nez p1, :cond_8

    iget p1, p0, LU/Z;->i:I

    :cond_8
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, LU/Z;->k:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, LU/Z;->l:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_9
    iget-object p1, p0, LU/Z;->k:[J

    iget v0, p0, LU/Z;->r:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, LU/Z;->a:LU/X;

    monitor-enter p0

    :try_start_0
    iget v1, p0, LU/Z;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, LU/Z;->h(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-virtual {v0, v1, v2}, LU/X;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final j(IJIZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_4

    iget-object v3, p0, LU/Z;->n:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p2

    if-gtz v3, :cond_4

    if-eqz p5, :cond_0

    iget-object v4, p0, LU/Z;->m:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, LU/Z;->i:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final k(I)I
    .locals 1

    iget v0, p0, LU/Z;->r:I

    add-int/2addr v0, p1

    iget p1, p0, LU/Z;->i:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public final declared-synchronized l()LG/x;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LU/Z;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LU/Z;->C:LG/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized m(Z)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, LU/Z;->q:I

    iget v1, p0, LU/Z;->s:I

    add-int v2, v0, v1

    iget v3, p0, LU/Z;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    if-lt v2, v3, :cond_0

    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    iget v6, p0, LU/Z;->p:I

    const/4 v7, 0x0

    if-eq v1, v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    if-eqz v6, :cond_5

    if-ne v3, v4, :cond_2

    iget v3, p0, LU/Z;->y:I

    if-eq v3, v4, :cond_2

    add-int/2addr v0, v1

    if-lt v0, v3, :cond_2

    move v0, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    move v0, v7

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, LU/Z;->c:LC1/e;

    invoke-virtual {p1, v2}, LC1/e;->g(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU/Y;

    iget-object p1, p1, LU/Y;->a:LG/x;

    iget-object v0, p0, LU/Z;->g:LG/x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v5

    :cond_4
    :try_start_2
    iget p1, p0, LU/Z;->s:I

    invoke-virtual {p0, p1}, LU/Z;->k(I)I

    move-result p1

    invoke-virtual {p0, p1}, LU/Z;->n(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_5
    :goto_2
    if-nez p1, :cond_7

    :try_start_3
    iget-boolean p1, p0, LU/Z;->z:Z

    if-nez p1, :cond_7

    iget-object p1, p0, LU/Z;->C:LG/x;

    if-eqz p1, :cond_6

    iget-object v0, p0, LU/Z;->g:LG/x;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v7

    :cond_7
    :goto_3
    monitor-exit p0

    return v5

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final n(I)Z
    .locals 2

    iget-object v0, p0, LU/Z;->h:LQ/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LQ/h;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LU/Z;->m:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, LU/Z;->h:LQ/h;

    invoke-interface {p1}, LQ/h;->a()Z

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

.method public final o(LG/x;LN0/O;)V
    .locals 6

    iget-object v0, p0, LU/Z;->g:LG/x;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, LG/x;->t:LG/s;

    :goto_1
    iput-object p1, p0, LU/Z;->g:LG/x;

    iget-object v2, p1, LG/x;->t:LG/s;

    iget-object v3, p0, LU/Z;->d:LQ/o;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, LQ/o;->f(LG/x;)I

    move-result v4

    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object v5

    iput v4, v5, LG/w;->S:I

    new-instance v4, LG/x;

    invoke-direct {v4, v5}, LG/x;-><init>(LG/w;)V

    goto :goto_2

    :cond_2
    move-object v4, p1

    :goto_2
    iput-object v4, p2, LN0/O;->g:Ljava/lang/Object;

    iget-object v4, p0, LU/Z;->h:LQ/h;

    iput-object v4, p2, LN0/O;->f:Ljava/lang/Object;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, LU/Z;->h:LQ/h;

    iget-object v1, p0, LU/Z;->e:LQ/k;

    invoke-interface {v3, v1, p1}, LQ/o;->c(LQ/k;LG/x;)LQ/h;

    move-result-object p1

    iput-object p1, p0, LU/Z;->h:LQ/h;

    iput-object p1, p2, LN0/O;->f:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, LQ/h;->e(LQ/k;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final p(Z)V
    .locals 12

    iget-object v0, p0, LU/Z;->a:LU/X;

    iget-object v1, v0, LU/X;->a:LB/A;

    iget-object v2, v0, LU/X;->d:LP/N;

    iget-object v3, v2, LP/N;->d:Ljava/lang/Object;

    check-cast v3, LX/a;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter v1

    :try_start_0
    iget-object v3, v1, LB/A;->h:Ljava/lang/Object;

    check-cast v3, LN/g;

    iget-object v3, v3, LN/g;->c:LX/e;

    invoke-virtual {v3, v2}, LX/e;->b(LP/N;)V

    move-object v3, v2

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, LP/N;->d:Ljava/lang/Object;

    check-cast v5, LX/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, LB/A;->P(LX/a;)V

    iget-object v3, v3, LP/N;->e:Ljava/lang/Object;

    check-cast v3, LP/N;

    if-eqz v3, :cond_2

    iget-object v5, v3, LP/N;->d:Ljava/lang/Object;

    check-cast v5, LX/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :cond_2
    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    monitor-exit v1

    iput-object v4, v2, LP/N;->d:Ljava/lang/Object;

    iput-object v4, v2, LP/N;->e:Ljava/lang/Object;

    :goto_1
    iget-object v2, v0, LU/X;->d:LP/N;

    iget v3, v0, LU/X;->b:I

    iget-object v5, v2, LP/N;->d:Ljava/lang/Object;

    check-cast v5, LX/a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v7

    :goto_2
    invoke-static {v5}, LF1/i;->o(Z)V

    const-wide/16 v8, 0x0

    iput-wide v8, v2, LP/N;->b:J

    int-to-long v10, v3

    iput-wide v10, v2, LP/N;->c:J

    iget-object v2, v0, LU/X;->d:LP/N;

    iput-object v2, v0, LU/X;->e:LP/N;

    iput-object v2, v0, LU/X;->f:LP/N;

    iput-wide v8, v0, LU/X;->g:J

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LN/g;

    iget-object v0, v0, LN/g;->c:LX/e;

    invoke-virtual {v0}, LX/e;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    iput v7, p0, LU/Z;->p:I

    iput v7, p0, LU/Z;->q:I

    iput v7, p0, LU/Z;->r:I

    iput v7, p0, LU/Z;->s:I

    const/4 v0, -0x1

    iput v0, p0, LU/Z;->x:I

    iput v0, p0, LU/Z;->y:I

    iput-boolean v6, p0, LU/Z;->A:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, LU/Z;->t:J

    iput-wide v1, p0, LU/Z;->v:J

    iput-wide v1, p0, LU/Z;->w:J

    iput-boolean v7, p0, LU/Z;->z:Z

    iget-object v1, p0, LU/Z;->c:LC1/e;

    iget-object v2, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v7, v3, :cond_5

    iget-object v3, v1, LC1/e;->h:Ljava/lang/Object;

    check-cast v3, LP/B;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, LP/B;->accept(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    iput v0, v1, LC1/e;->f:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_6

    iput-object v4, p0, LU/Z;->C:LG/x;

    iput-boolean v6, p0, LU/Z;->B:Z

    iput-boolean v6, p0, LU/Z;->D:Z

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized q(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, LU/Z;->s:I

    iget-object v0, p0, LU/Z;->a:LU/X;

    iget-object v1, v0, LU/X;->d:LP/N;

    iput-object v1, v0, LU/X;->e:LP/N;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    iget v0, p0, LU/Z;->q:I

    if-lt p1, v0, :cond_3

    iget v1, p0, LU/Z;->p:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, LU/Z;->x:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lt p1, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget v1, p0, LU/Z;->y:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v1, v2, :cond_2

    if-lt p1, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const-wide/high16 v1, -0x8000000000000000L

    :try_start_4
    iput-wide v1, p0, LU/Z;->t:J

    sub-int/2addr p1, v0

    iput p1, p0, LU/Z;->s:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized r(JZ)Z
    .locals 12

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, LU/Z;->s:I

    iget-object v1, p0, LU/Z;->a:LU/X;

    iget-object v2, v1, LU/X;->d:LP/N;

    iput-object v2, v1, LU/X;->e:LP/N;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-exit p0

    invoke-virtual {p0, v0}, LU/Z;->k(I)I

    move-result v4

    iget-wide v1, p0, LU/Z;->u:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    :try_start_3
    iget-wide v5, p0, LU/Z;->w:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_8

    :cond_0
    :try_start_4
    iget-wide v1, p0, LU/Z;->w:J

    :goto_0
    iget v3, p0, LU/Z;->s:I

    iget v5, p0, LU/Z;->p:I

    const/4 v9, 0x1

    if-eq v3, v5, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    if-eqz v6, :cond_2

    iget-object v6, p0, LU/Z;->n:[J

    aget-wide v7, v6, v4

    cmp-long v6, p1, v7

    if-ltz v6, :cond_2

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    if-nez p3, :cond_3

    :cond_2
    move-object v3, p0

    goto :goto_6

    :cond_3
    iget-boolean v1, p0, LU/Z;->D:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, -0x1

    if-eqz v1, :cond_8

    sub-int/2addr v5, v3

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_6

    :try_start_5
    iget-object v3, p0, LU/Z;->n:[J

    aget-wide v6, v3, v4

    cmp-long v3, v6, p1

    if-ltz v3, :cond_4

    move v5, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    iget v3, p0, LU/Z;->i:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v4, v3, :cond_5

    move v4, v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    move v5, v2

    :goto_3
    move-wide v10, p1

    move p1, v5

    move-wide v5, v10

    move-object v3, p0

    goto :goto_4

    :cond_8
    sub-int v7, v5, v3

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v5, p1

    :try_start_6
    invoke-virtual/range {v3 .. v8}, LU/Z;->j(IJIZ)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    if-ne p1, v2, :cond_9

    monitor-exit p0

    return v0

    :cond_9
    :try_start_7
    iput-wide v5, v3, LU/Z;->t:J

    iget p2, v3, LU/Z;->s:I

    add-int/2addr p2, p1

    iput p2, v3, LU/Z;->s:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return v9

    :catchall_1
    move-exception v0

    :goto_5
    move-object p1, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_5

    :goto_6
    monitor-exit p0

    return v0

    :catchall_3
    move-exception v0

    move-object v3, p0

    :goto_7
    move-object p1, v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw p1

    :catchall_4
    move-exception v0

    goto :goto_7

    :goto_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public final s(IIJ)V
    .locals 4

    iget-wide v0, p0, LU/Z;->u:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, LU/Z;->x:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    cmp-long p3, p3, v0

    if-gez p3, :cond_2

    iput v3, p0, LU/Z;->y:I

    return-void

    :cond_2
    iget p3, p0, LU/Z;->y:I

    if-ne p3, v3, :cond_3

    iput p1, p0, LU/Z;->y:I

    :cond_3
    iget p3, p0, LU/Z;->y:I

    sub-int/2addr p1, p3

    const/4 p4, 0x1

    add-int/2addr p1, p4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v0, p4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    const/high16 v2, 0x20000000

    and-int/2addr p2, v2

    if-eqz p2, :cond_5

    move v1, p4

    :cond_5
    iget-object p2, p0, LU/Z;->C:LG/x;

    if-eqz p2, :cond_6

    iget p2, p2, LG/x;->r:I

    if-eq p2, v3, :cond_6

    goto :goto_1

    :cond_6
    const/16 p2, 0x10

    :goto_1
    add-int/2addr p2, p4

    if-ge p1, p2, :cond_8

    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    iput p3, p0, LU/Z;->x:I

    iput v3, p0, LU/Z;->y:I

    return-void
.end method
