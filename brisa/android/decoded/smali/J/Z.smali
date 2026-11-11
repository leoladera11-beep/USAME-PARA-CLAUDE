.class public final LJ/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:LJ/O;

.field public final c:LJ/O;

.field public d:Z

.field public e:Z

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;Landroid/os/Looper;LJ/M;I)V
    .locals 1

    iput p4, p0, LJ/Z;->a:I

    packed-switch p4, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, LN0/O;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p4, p1, v0}, LN0/O;-><init>(Ljava/lang/Object;I)V

    iput-object p4, p0, LJ/Z;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p2

    iput-object p2, p0, LJ/Z;->b:LJ/O;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p1

    iput-object p1, p0, LJ/Z;->c:LJ/O;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, LN0/O;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x7

    invoke-direct {p4, p1, v0}, LN0/O;-><init>(Ljava/lang/Object;I)V

    iput-object p4, p0, LJ/Z;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p2

    iput-object p2, p0, LJ/Z;->b:LJ/O;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p1

    iput-object p1, p0, LJ/Z;->c:LJ/O;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(ZZ)V
    .locals 9

    iget-object v0, p0, LJ/Z;->b:LJ/O;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, LJ/X;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, LJ/X;-><init>(Ljava/lang/Object;ZZI)V

    invoke-virtual {v0, v1}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, LH/i;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v5, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, LJ/Z;->c:LJ/O;

    iget-object v4, v4, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, LJ/Y;

    const/4 v8, 0x0

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, LJ/Y;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;ZZI)V

    invoke-virtual {v0, v3}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(ZZ)V
    .locals 9

    iget-object v0, p0, LJ/Z;->b:LJ/O;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, LJ/X;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, LJ/X;-><init>(Ljava/lang/Object;ZZI)V

    invoke-virtual {v0, v1}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, LH/i;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v5, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, LJ/Z;->c:LJ/O;

    iget-object v4, v4, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, LJ/Y;

    const/4 v8, 0x1

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, LJ/Y;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;ZZI)V

    invoke-virtual {v0, v3}, LJ/O;->e(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget v0, p0, LJ/Z;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, LJ/Z;->e:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, LJ/Z;->e:Z

    iget-boolean v0, p0, LJ/Z;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LJ/Z;->b(ZZ)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, LJ/Z;->e:Z

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean p1, p0, LJ/Z;->e:Z

    iget-boolean v0, p0, LJ/Z;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LJ/Z;->a(ZZ)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
