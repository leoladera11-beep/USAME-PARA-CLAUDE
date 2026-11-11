.class public final synthetic LP0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput p1, p0, LP0/f;->e:I

    iput-object p2, p0, LP0/f;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstallerInitializer;Landroid/content/Context;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, LP0/f;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LP0/f;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, LP0/f;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LP0/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP0/c;-><init>(I)V

    sget-object v1, LP0/e;->a:Lcom/brisa/local/j;

    const/4 v2, 0x0

    iget-object v3, p0, LP0/f;->f:Landroid/content/Context;

    invoke-static {v3, v0, v1, v2}, LP0/e;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;LP0/d;Z)V

    return-void

    :pswitch_0
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, LP0/f;

    const/4 v1, 0x2

    iget-object v2, p0, LP0/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, LP0/f;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, LP0/i;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    new-instance v2, LP0/f;

    iget-object v4, p0, LP0/f;->f:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, LP0/f;-><init>(ILandroid/content/Context;)V

    add-int/lit16 v1, v1, 0x1388

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
