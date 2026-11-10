.class public final synthetic LM0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/t1;LN0/P;LM0/i2;ILM0/s1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LM0/p0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/p0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/p0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/p0;->i:Ljava/lang/Object;

    iput p4, p0, LM0/p0;->f:I

    iput-object p5, p0, LM0/p0;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p6, p0, LM0/p0;->e:I

    iput-object p1, p0, LM0/p0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/p0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/p0;->i:Ljava/lang/Object;

    iput-object p4, p0, LM0/p0;->j:Ljava/lang/Object;

    iput p5, p0, LM0/p0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, LM0/p0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/p0;->g:Ljava/lang/Object;

    check-cast v0, LN/T;

    iget-object v1, p0, LM0/p0;->h:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, LM0/p0;->i:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, LU/r;

    iget-object v2, p0, LM0/p0;->j:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, LU/w;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v3, v0, LN/W;->i:LO/d;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LU/A;

    iget v8, p0, LM0/p0;->f:I

    invoke-virtual/range {v3 .. v8}, LO/d;->H(ILU/A;LU/r;LU/w;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/p0;->g:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v1, p0, LM0/p0;->h:Ljava/lang/Object;

    check-cast v1, LN0/P;

    iget-object v2, p0, LM0/p0;->i:Ljava/lang/Object;

    check-cast v2, LM0/i2;

    iget-object v3, p0, LM0/p0;->j:Ljava/lang/Object;

    check-cast v3, LM0/s1;

    new-instance v4, LM0/j1;

    iget v5, p0, LM0/p0;->f:I

    invoke-direct {v4, v0, v2, v5, v3}, LM0/j1;-><init>(LM0/t1;LM0/i2;ILM0/s1;)V

    invoke-virtual {v0, v1, v4}, LM0/t1;->J(LN0/P;LM0/s1;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/p0;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LM0/t0;

    iget-object v0, p0, LM0/p0;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, LM0/p0;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, LM0/p0;->j:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_2

    iget-boolean v0, v1, LM0/t0;->k:Z

    if-nez v0, :cond_2

    iget-object v0, v1, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/B;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v5, "MCImplLegacy"

    const-string v6, "Failed to get bitmap"

    invoke-static {v5, v6, v0}, LJ/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v5, v1, LM0/t0;->i:LN0/O;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/P;

    invoke-static {v6, v0}, LM0/u;->f(LG/P;Landroid/graphics/Bitmap;)LN0/C;

    move-result-object v0

    iget v6, p0, LM0/p0;->f:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v0, v6}, LN0/O;->F(LN0/C;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
