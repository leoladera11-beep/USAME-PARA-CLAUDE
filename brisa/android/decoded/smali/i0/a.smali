.class public final Li0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LJ/D;

.field public b:Lb0/p;

.field public c:Lb0/o;

.field public d:LR0/b;

.field public e:Lv0/n;

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/D;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, Li0/a;->a:LJ/D;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Li0/a;->j:J

    const/4 v0, 0x0

    iput v0, p0, Li0/a;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Li0/a;->e:Lv0/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Li0/a;->e:Lv0/n;

    :cond_0
    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 0

    iput-object p1, p0, Li0/a;->b:Lb0/p;

    return-void
.end method

.method public final c(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Li0/a;->f:I

    iput p1, p0, Li0/a;->i:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Li0/a;->j:J

    iget-object p1, p0, Li0/a;->e:Lv0/n;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Li0/a;->e:Lv0/n;

    return-void

    :cond_0
    iget v0, p0, Li0/a;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Li0/a;->e:Lv0/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/n;->c(JJ)V

    :cond_1
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/brisa/local/d0;->v(Lb0/o;Z)Z

    move-result p1

    return p1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget v3, v0, Li0/a;->f:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v11, :cond_8

    const/4 v6, 0x3

    if-eq v3, v10, :cond_5

    if-eq v3, v6, :cond_1

    if-ne v3, v9, :cond_0

    return v8

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    iget-object v3, v0, Li0/a;->d:LR0/b;

    if-eqz v3, :cond_2

    iget-object v3, v0, Li0/a;->c:Lb0/o;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Li0/a;->c:Lb0/o;

    new-instance v3, LR0/b;

    iget-wide v4, v0, Li0/a;->j:J

    invoke-direct {v3, v1, v4, v5}, LR0/b;-><init>(Lb0/o;J)V

    iput-object v3, v0, Li0/a;->d:LR0/b;

    :cond_3
    iget-object v1, v0, Li0/a;->e:Lv0/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Li0/a;->d:LR0/b;

    invoke-virtual {v1, v3, v2}, Lv0/n;->e(Lb0/o;Lb0/r;)I

    move-result v1

    if-ne v1, v11, :cond_4

    iget-wide v3, v2, Lb0/r;->a:J

    iget-wide v5, v0, Li0/a;->j:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lb0/r;->a:J

    :cond_4
    return v1

    :cond_5
    iget-object v3, v0, Li0/a;->e:Lv0/n;

    if-nez v3, :cond_6

    new-instance v3, Lv0/n;

    sget-object v8, Ly0/k;->a:Ld1/m;

    invoke-direct {v3, v8, v7}, Lv0/n;-><init>(Ly0/k;I)V

    iput-object v3, v0, Li0/a;->e:Lv0/n;

    :cond_6
    new-instance v3, LR0/b;

    iget-wide v7, v0, Li0/a;->j:J

    invoke-direct {v3, v1, v7, v8}, LR0/b;-><init>(Lb0/o;J)V

    iput-object v3, v0, Li0/a;->d:LR0/b;

    iget-object v7, v0, Li0/a;->e:Lv0/n;

    invoke-virtual {v7, v3}, Lv0/n;->d(Lb0/o;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Li0/a;->e:Lv0/n;

    new-instance v4, LR0/b;

    iget-wide v7, v0, Li0/a;->j:J

    iget-object v5, v0, Li0/a;->b:Lb0/p;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v10, v7, v8, v5}, LR0/b;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lv0/n;->b(Lb0/p;)V

    iput v6, v0, Li0/a;->f:I

    goto :goto_0

    :cond_7
    iget-object v3, v0, Li0/a;->b:Lb0/p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lb0/p;->e()V

    iget-object v3, v0, Li0/a;->b:Lb0/p;

    new-instance v6, Lb0/s;

    invoke-direct {v6, v4, v5}, Lb0/s;-><init>(J)V

    invoke-interface {v3, v6}, Lb0/p;->c(Lb0/z;)V

    iput v9, v0, Li0/a;->f:I

    goto/16 :goto_0

    :cond_8
    iget-wide v3, v0, Li0/a;->h:J

    iget v5, v0, Li0/a;->i:I

    int-to-long v7, v5

    sub-long/2addr v3, v7

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lb0/o;->p(I)V

    iput v6, v0, Li0/a;->i:I

    iput v6, v0, Li0/a;->f:I

    goto/16 :goto_0

    :cond_9
    iget v3, v0, Li0/a;->i:I

    iget-object v12, v0, Li0/a;->a:LJ/D;

    if-nez v3, :cond_b

    iget-object v3, v12, LJ/D;->a:[B

    invoke-interface {v1, v3, v6, v7, v11}, Lb0/o;->f([BIIZ)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, v0, Li0/a;->b:Lb0/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lb0/p;->e()V

    iget-object v1, v0, Li0/a;->b:Lb0/p;

    new-instance v2, Lb0/s;

    invoke-direct {v2, v4, v5}, Lb0/s;-><init>(J)V

    invoke-interface {v1, v2}, Lb0/p;->c(Lb0/z;)V

    iput v9, v0, Li0/a;->f:I

    return v8

    :cond_a
    iput v7, v0, Li0/a;->i:I

    invoke-virtual {v12, v6}, LJ/D;->N(I)V

    invoke-virtual {v12}, LJ/D;->C()J

    move-result-wide v3

    iput-wide v3, v0, Li0/a;->h:J

    invoke-virtual {v12}, LJ/D;->m()I

    move-result v3

    iput v3, v0, Li0/a;->g:I

    :cond_b
    iget-wide v3, v0, Li0/a;->h:J

    const-wide/16 v13, 0x1

    cmp-long v3, v3, v13

    if-nez v3, :cond_c

    iget-object v3, v12, LJ/D;->a:[B

    invoke-interface {v1, v3, v7, v7}, Lb0/o;->readFully([BII)V

    iget v3, v0, Li0/a;->i:I

    add-int/2addr v3, v7

    iput v3, v0, Li0/a;->i:I

    invoke-virtual {v12}, LJ/D;->G()J

    move-result-wide v3

    iput-wide v3, v0, Li0/a;->h:J

    :cond_c
    iget v3, v0, Li0/a;->g:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_d

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Li0/a;->j:J

    iget v5, v0, Li0/a;->i:I

    int-to-long v7, v5

    sub-long v15, v3, v7

    new-instance v12, Lk0/d;

    iget-wide v13, v0, Li0/a;->h:J

    sub-long v21, v13, v7

    const-wide/16 v13, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v19, v3

    invoke-direct/range {v12 .. v22}, Lk0/d;-><init>(JJJJJ)V

    iget-object v3, v0, Li0/a;->b:Lb0/p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x400

    invoke-interface {v3, v4, v9}, Lb0/p;->v(II)Lb0/G;

    move-result-object v3

    new-instance v4, LG/w;

    invoke-direct {v4}, LG/w;-><init>()V

    const-string v5, "image/heic"

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LG/w;->n:Ljava/lang/String;

    new-instance v5, LG/V;

    new-array v7, v11, [LG/U;

    aput-object v12, v7, v6

    invoke-direct {v5, v7}, LG/V;-><init>([LG/U;)V

    iput-object v5, v4, LG/w;->l:LG/V;

    new-instance v5, LG/x;

    invoke-direct {v5, v4}, LG/x;-><init>(LG/w;)V

    invoke-interface {v3, v5}, Lb0/G;->b(LG/x;)V

    iput v10, v0, Li0/a;->f:I

    goto/16 :goto_0

    :cond_d
    iput v11, v0, Li0/a;->f:I

    goto/16 :goto_0
.end method
