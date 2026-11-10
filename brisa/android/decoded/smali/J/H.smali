.class public final LJ/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:Z

.field public g:J

.field public final synthetic h:LJ/K;


# direct methods
.method public constructor <init>(LJ/K;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/H;->h:LJ/K;

    iput p2, p0, LJ/H;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    iget-object v0, p0, LJ/H;->h:LJ/K;

    iget-object v1, v0, LJ/K;->f:LJ/O;

    iget-object v2, v0, LJ/K;->a:LN/x;

    invoke-virtual {v2}, LC/b;->I()Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_1

    iget-boolean v0, p0, LJ/H;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, v4}, LJ/O;->f(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LJ/H;->f:Z

    return-void

    :cond_1
    invoke-virtual {v2}, LN/x;->p0()LG/q0;

    move-result-object v3

    invoke-virtual {v3}, LG/q0;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, LN/x;->K()I

    move-result v5

    invoke-virtual {v3, v5}, LG/q0;->l(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-virtual {v2}, LN/x;->U()I

    move-result v6

    invoke-virtual {v2}, LN/x;->f0()I

    move-result v7

    invoke-virtual {v2}, LN/x;->O0()J

    move-result-wide v8

    if-eqz v5, :cond_3

    const/4 v2, -0x1

    if-ne v6, v2, :cond_3

    iget-object v2, v0, LJ/K;->e:LG/n0;

    invoke-virtual {v3, v5, v2}, LG/q0;->g(Ljava/lang/Object;LG/n0;)LG/n0;

    move-result-object v2

    iget-wide v2, v2, LG/n0;->e:J

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_3
    iget-object v2, v0, LJ/K;->d:LJ/M;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean v10, p0, LJ/H;->f:Z

    iget v11, p0, LJ/H;->a:I

    if-eqz v10, :cond_5

    iget-object v10, p0, LJ/H;->b:Ljava/lang/Object;

    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, p0, LJ/H;->c:I

    if-ne v6, v10, :cond_5

    iget v10, p0, LJ/H;->d:I

    if-ne v7, v10, :cond_5

    iget-wide v12, p0, LJ/H;->e:J

    cmp-long v10, v8, v12

    if-nez v10, :cond_5

    iget-wide v5, p0, LJ/H;->g:J

    sub-long/2addr v2, v5

    int-to-long v5, v11

    cmp-long v1, v2, v5

    if-ltz v1, :cond_4

    iget-object v0, v0, LJ/K;->c:LN/s;

    new-instance v1, LJ/L;

    invoke-direct {v1, v4, v11}, LJ/L;-><init>(II)V

    iget-object v0, v0, LN/s;->a:LN/x;

    new-instance v2, LN/k;

    const/16 v3, 0x3eb

    invoke-direct {v2, v4, v1, v3}, LN/k;-><init>(ILjava/lang/Exception;I)V

    invoke-virtual {v0, v2}, LN/x;->y1(LN/k;)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, LJ/H;->f:Z

    iput-wide v2, p0, LJ/H;->g:J

    iput-object v5, p0, LJ/H;->b:Ljava/lang/Object;

    iput v6, p0, LJ/H;->c:I

    iput v7, p0, LJ/H;->d:I

    iput-wide v8, p0, LJ/H;->e:J

    invoke-virtual {v1, v4}, LJ/O;->f(I)V

    iget-object v0, v1, LJ/O;->a:Landroid/os/Handler;

    int-to-long v1, v11

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
