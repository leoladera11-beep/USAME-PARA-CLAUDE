.class public final Lw0/c;
.super Lw0/i;
.source "SourceFile"


# instance fields
.field public n:Lb0/t;

.field public o:LP/N;


# virtual methods
.method public final b(LJ/D;)J
    .locals 4

    iget-object v0, p1, LJ/D;->a:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    shr-int/2addr v0, v2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1, v2}, LJ/D;->O(I)V

    invoke-virtual {p1}, LJ/D;->I()J

    :cond_1
    invoke-static {v0, p1}, Lb0/a;->v(ILJ/D;)I

    move-result v0

    invoke-virtual {p1, v1}, LJ/D;->N(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(LJ/D;JLW0/c;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, LJ/D;->a:[B

    iget-object v4, v0, Lw0/c;->n:Lb0/t;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    new-instance v4, Lb0/t;

    const/16 v6, 0x11

    invoke-direct {v4, v3, v6}, Lb0/t;-><init>([BI)V

    iput-object v4, v0, Lw0/c;->n:Lb0/t;

    const/16 v6, 0x9

    iget v1, v1, LJ/D;->c:I

    invoke-static {v3, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Lb0/t;->c([BLG/V;)LG/x;

    move-result-object v1

    invoke-virtual {v1}, LG/x;->a()LG/w;

    move-result-object v1

    const-string v3, "audio/ogg"

    invoke-static {v3}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LG/w;->n:Ljava/lang/String;

    new-instance v3, LG/x;

    invoke-direct {v3, v1}, LG/x;-><init>(LG/w;)V

    iput-object v3, v2, LW0/c;->f:Ljava/lang/Object;

    return v5

    :cond_0
    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int/lit8 v7, v3, 0x7f

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-static {v1}, Lb0/a;->w(LJ/D;)LW0/c;

    move-result-object v19

    new-instance v9, Lb0/t;

    iget v10, v4, Lb0/t;->a:I

    iget v11, v4, Lb0/t;->b:I

    iget v12, v4, Lb0/t;->c:I

    iget v13, v4, Lb0/t;->d:I

    iget v14, v4, Lb0/t;->e:I

    iget v15, v4, Lb0/t;->g:I

    iget v1, v4, Lb0/t;->h:I

    iget-wide v2, v4, Lb0/t;->j:J

    iget-object v4, v4, Lb0/t;->l:LG/V;

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-object/from16 v20, v4

    invoke-direct/range {v9 .. v20}, Lb0/t;-><init>(IIIIIIIJLW0/c;LG/V;)V

    move-object/from16 v1, v19

    iput-object v9, v0, Lw0/c;->n:Lb0/t;

    new-instance v2, LP/N;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v9, v2, LP/N;->d:Ljava/lang/Object;

    iput-object v1, v2, LP/N;->e:Ljava/lang/Object;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, LP/N;->b:J

    iput-wide v3, v2, LP/N;->c:J

    iput-object v2, v0, Lw0/c;->o:LP/N;

    return v5

    :cond_1
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    iget-object v1, v0, Lw0/c;->o:LP/N;

    if-eqz v1, :cond_2

    move-wide/from16 v3, p2

    iput-wide v3, v1, LP/N;->b:J

    iput-object v1, v2, LW0/c;->g:Ljava/lang/Object;

    :cond_2
    iget-object v1, v2, LW0/c;->f:Ljava/lang/Object;

    check-cast v1, LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v6

    :cond_3
    return v5
.end method

.method public final d(Z)V
    .locals 0

    invoke-super {p0, p1}, Lw0/i;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/c;->n:Lb0/t;

    iput-object p1, p0, Lw0/c;->o:LP/N;

    :cond_0
    return-void
.end method
