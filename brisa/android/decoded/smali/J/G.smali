.class public final LJ/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:J

.field public final synthetic i:LJ/K;


# direct methods
.method public constructor <init>(LJ/K;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/G;->i:LJ/K;

    iput p2, p0, LJ/G;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LJ/G;->i:LJ/K;

    iget-object v2, v1, LJ/K;->f:LJ/O;

    iget-object v3, v1, LJ/K;->a:LN/x;

    invoke-virtual {v3}, LN/x;->c()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    invoke-virtual {v3}, LN/x;->z()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, LN/x;->l0()I

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v3}, LN/x;->p0()LG/q0;

    move-result-object v4

    invoke-virtual {v4}, LG/q0;->p()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, LN/x;->K()I

    move-result v7

    invoke-virtual {v4, v7}, LG/q0;->l(I)Ljava/lang/Object;

    move-result-object v7

    :goto_0
    invoke-virtual {v3}, LN/x;->U()I

    move-result v8

    invoke-virtual {v3}, LN/x;->f0()I

    move-result v9

    invoke-virtual {v3}, LN/x;->y()J

    move-result-wide v10

    invoke-virtual {v3}, LN/x;->O0()J

    move-result-wide v12

    sub-long v12, v10, v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-virtual {v3}, LN/x;->s()J

    move-result-wide v16

    sub-long v12, v16, v12

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    if-eqz v7, :cond_2

    const/4 v3, -0x1

    if-ne v8, v3, :cond_2

    iget-object v3, v1, LJ/K;->e:LG/n0;

    invoke-virtual {v4, v7, v3}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v3

    iget-wide v3, v3, LG/n0;->e:J

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v3

    sub-long/2addr v10, v3

    :cond_2
    iget-object v3, v1, LJ/K;->d:LJ/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-boolean v14, v0, LJ/G;->g:Z

    iget v15, v0, LJ/G;->a:I

    if-eqz v14, :cond_4

    iget-object v14, v0, LJ/G;->b:Ljava/lang/Object;

    invoke-static {v7, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget v14, v0, LJ/G;->c:I

    if-ne v8, v14, :cond_4

    iget v14, v0, LJ/G;->d:I

    if-ne v9, v14, :cond_4

    move-object/from16 v16, v7

    iget-wide v6, v0, LJ/G;->e:J

    cmp-long v6, v10, v6

    if-nez v6, :cond_5

    iget-wide v6, v0, LJ/G;->f:J

    cmp-long v6, v12, v6

    if-nez v6, :cond_5

    iget-wide v6, v0, LJ/G;->h:J

    sub-long/2addr v3, v6

    int-to-long v6, v15

    cmp-long v2, v3, v6

    if-ltz v2, :cond_3

    iget-object v1, v1, LJ/K;->c:LN/s;

    new-instance v2, LJ/L;

    invoke-direct {v2, v5, v15}, LJ/L;-><init>(II)V

    iget-object v1, v1, LN/s;->a:LN/x;

    new-instance v3, LN/k;

    const/16 v4, 0x3eb

    const/4 v14, 0x2

    invoke-direct {v3, v14, v2, v4}, LN/k;-><init>(ILjava/lang/Exception;I)V

    invoke-virtual {v1, v3}, LN/x;->y1(LN/k;)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v16, v7

    :cond_5
    iput-boolean v5, v0, LJ/G;->g:Z

    iput-wide v3, v0, LJ/G;->h:J

    move-object/from16 v7, v16

    iput-object v7, v0, LJ/G;->b:Ljava/lang/Object;

    iput v8, v0, LJ/G;->c:I

    iput v9, v0, LJ/G;->d:I

    iput-wide v10, v0, LJ/G;->e:J

    iput-wide v12, v0, LJ/G;->f:J

    invoke-virtual {v2, v5}, LJ/O;->f(I)V

    iget-object v1, v2, LJ/O;->a:Landroid/os/Handler;

    int-to-long v2, v15

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_6
    :goto_1
    iget-boolean v1, v0, LJ/G;->g:Z

    if-eqz v1, :cond_7

    invoke-virtual {v2, v5}, LJ/O;->f(I)V

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, LJ/G;->g:Z

    return-void
.end method
