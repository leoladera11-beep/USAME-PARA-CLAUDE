.class public final LN/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/brisa/local/VideoPlaybackService;

.field public final b:LM0/w1;


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/i;->a:Lcom/brisa/local/VideoPlaybackService;

    new-instance v0, LM0/w1;

    invoke-direct {v0, p1}, LM0/w1;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iput-object v0, p0, LN/i;->b:LM0/w1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;LN/s;LN/s;LN/s;LN/s;)[LN/a;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LZ/k;

    iget-object v3, p0, LN/i;->a:Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {v1, v3}, LZ/k;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iget-object v4, p0, LN/i;->b:LM0/w1;

    iput-object v4, v1, LZ/k;->c:LS/j;

    const-wide/16 v5, 0x1388

    iput-wide v5, v1, LZ/k;->d:J

    iput-object p1, v1, LZ/k;->e:Landroid/os/Handler;

    iput-object p2, v1, LZ/k;->f:LN/s;

    const/16 p2, 0x32

    iput p2, v1, LZ/k;->g:I

    iget-boolean p2, v1, LZ/k;->b:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-static {p2}, LF1/i;->o(Z)V

    iget-object p2, v1, LZ/k;->e:Landroid/os/Handler;

    const/4 v8, 0x0

    if-nez p2, :cond_0

    iget-object v5, v1, LZ/k;->f:LN/s;

    if-eqz v5, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, v1, LZ/k;->f:LN/s;

    if-eqz p2, :cond_2

    :cond_1
    move p2, v2

    goto :goto_0

    :cond_2
    move p2, v8

    :goto_0
    invoke-static {p2}, LF1/i;->o(Z)V

    iput-boolean v2, v1, LZ/k;->b:Z

    new-instance p2, LZ/m;

    invoke-direct {p2, v1}, LZ/m;-><init>(LZ/k;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, LP/L;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v3, p2, LP/L;->b:Ljava/lang/Object;

    sget-object v1, LP/c;->f:LP/c;

    iget-boolean v1, p2, LP/L;->a:Z

    xor-int/2addr v1, v2

    invoke-static {v1}, LF1/i;->o(Z)V

    iput-boolean v2, p2, LP/L;->a:Z

    iget-object v1, p2, LP/L;->c:Ljava/lang/Object;

    check-cast v1, LB/A;

    if-nez v1, :cond_3

    new-instance v1, LB/A;

    new-array v5, v8, [LH/o;

    invoke-direct {v1, v5}, LB/A;-><init>([LH/o;)V

    iput-object v1, p2, LP/L;->c:Ljava/lang/Object;

    :cond_3
    iget-object v1, p2, LP/L;->e:Ljava/lang/Object;

    check-cast v1, LP/G;

    if-nez v1, :cond_8

    iget-object v1, p2, LP/L;->f:Ljava/lang/Object;

    check-cast v1, LN0/O;

    if-nez v1, :cond_4

    new-instance v1, LN0/O;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v3}, LN0/O;-><init>(ILandroid/content/Context;)V

    iput-object v1, p2, LP/L;->f:Ljava/lang/Object;

    :cond_4
    iget-object v1, p2, LP/L;->d:Ljava/lang/Object;

    check-cast v1, LP/P;

    if-nez v1, :cond_5

    sget-object v1, LP/P;->a:LP/P;

    iput-object v1, p2, LP/L;->d:Ljava/lang/Object;

    :cond_5
    new-instance v1, LP/F;

    invoke-direct {v1, v3}, LP/F;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iget-object v2, v1, LP/F;->a:Landroid/content/Context;

    if-nez v2, :cond_6

    const/4 v5, 0x0

    iput-object v5, v1, LP/F;->d:LP/c;

    :cond_6
    iget-object v5, p2, LP/L;->f:Ljava/lang/Object;

    check-cast v5, LN0/O;

    iput-object v5, v1, LP/F;->b:LN0/O;

    iget-object v6, p2, LP/L;->d:Ljava/lang/Object;

    check-cast v6, LP/P;

    iput-object v6, v1, LP/F;->c:LP/P;

    if-nez v5, :cond_7

    new-instance v5, LN0/O;

    const/16 v6, 0x15

    invoke-direct {v5, v6, v2}, LN0/O;-><init>(ILandroid/content/Context;)V

    iput-object v5, v1, LP/F;->b:LN0/O;

    :cond_7
    new-instance v2, LP/G;

    invoke-direct {v2, v1}, LP/G;-><init>(LP/F;)V

    iput-object v2, p2, LP/L;->e:Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object v1, p2, LP/L;->f:Ljava/lang/Object;

    check-cast v1, LN0/O;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_1

    :cond_9
    move v1, v8

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v1, p2, LP/L;->d:Ljava/lang/Object;

    check-cast v1, LP/P;

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    move v2, v8

    :goto_2
    invoke-static {v2}, LF1/i;->o(Z)V

    :goto_3
    new-instance v7, LP/O;

    invoke-direct {v7, p2}, LP/O;-><init>(LP/L;)V

    new-instance v2, LP/S;

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, LP/S;-><init>(Lcom/brisa/local/VideoPlaybackService;LS/j;Landroid/os/Handler;LN/s;LP/O;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, LV/e;

    invoke-direct {p2, p4, p1}, LV/e;-><init>(LN/s;Landroid/os/Looper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    move p2, v8

    :goto_4
    const/4 p3, 0x4

    if-ge p2, p3, :cond_b

    new-instance p3, LT/b;

    invoke-direct {p3, p5, p1}, LT/b;-><init>(LN/s;Landroid/os/Looper;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_b
    new-instance p1, La0/b;

    invoke-direct {p1}, La0/b;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LR/g;

    new-instance p2, LM0/w1;

    invoke-direct {p2, v3}, LM0/w1;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    invoke-direct {p1, p2}, LR/g;-><init>(LM0/w1;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v8, [LN/a;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LN/a;

    return-object p1
.end method
