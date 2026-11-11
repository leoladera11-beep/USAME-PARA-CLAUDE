.class public final LU/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/a0;


# instance fields
.field public e:I

.field public f:Z

.field public final synthetic g:LU/g0;


# direct methods
.method public constructor <init>(LU/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/e0;->g:LU/g0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-boolean v0, p0, LU/e0;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LU/e0;->g:LU/g0;

    iget-object v1, v0, LU/g0;->i:LC1/e;

    iget-object v2, v0, LU/g0;->n:LG/x;

    iget-object v2, v2, LG/x;->p:Ljava/lang/String;

    invoke-static {v2}, LG/W;->g(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, LU/g0;->n:LG/x;

    new-instance v3, LU/w;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, LJ/W;->S(J)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v3 .. v9}, LU/w;-><init>(ILG/x;JJ)V

    new-instance v0, LM0/K;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, LC1/e;->f(LJ/k;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/e0;->f:Z

    :cond_0
    return-void
.end method

.method public final j(LN0/O;LM/f;I)I
    .locals 9

    invoke-virtual {p0}, LU/e0;->a()V

    iget-object v0, p0, LU/e0;->g:LU/g0;

    iget-boolean v1, v0, LU/g0;->p:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v3, v0, LU/g0;->q:[B

    if-nez v3, :cond_0

    iput v2, p0, LU/e0;->e:I

    :cond_0
    iget v3, p0, LU/e0;->e:I

    const/4 v4, -0x4

    if-ne v3, v2, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, LK/f;->b(I)V

    return v4

    :cond_1
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    if-nez v5, :cond_6

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    iget-object p1, v0, LU/g0;->q:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v6}, LK/f;->b(I)V

    const-wide/16 v7, 0x0

    iput-wide v7, p2, LM/f;->k:J

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_4

    iget p1, v0, LU/g0;->r:I

    invoke-virtual {p2, p1}, LM/f;->j(I)V

    iget-object p1, p2, LM/f;->i:Ljava/nio/ByteBuffer;

    iget-object p2, v0, LU/g0;->q:[B

    const/4 v1, 0x0

    iget v0, v0, LU/g0;->r:I

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    iput v2, p0, LU/e0;->e:I

    :cond_5
    return v4

    :cond_6
    :goto_0
    iget-object p2, v0, LU/g0;->n:LG/x;

    iput-object p2, p1, LN0/O;->g:Ljava/lang/Object;

    iput v6, p0, LU/e0;->e:I

    const/4 p1, -0x5

    return p1
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, LU/e0;->g:LU/g0;

    iget-boolean v0, v0, LU/g0;->p:Z

    return v0
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, LU/e0;->g:LU/g0;

    iget-boolean v1, v0, LU/g0;->o:Z

    if-nez v1, :cond_2

    iget-object v0, v0, LU/g0;->m:LX/m;

    iget-object v1, v0, LX/m;->c:Ljava/io/IOException;

    if-nez v1, :cond_1

    iget-object v0, v0, LX/m;->b:LX/i;

    if-eqz v0, :cond_2

    iget v1, v0, LX/i;->e:I

    iget-object v2, v0, LX/i;->i:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v0, v0, LX/i;->j:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public final y(J)I
    .locals 2

    invoke-virtual {p0}, LU/e0;->a()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, LU/e0;->e:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iput p2, p0, LU/e0;->e:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
