.class public final LF/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static j:Landroid/os/Handler;


# instance fields
.field public final e:LF/c;

.field public volatile f:I

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic i:LZ0/d;


# direct methods
.method public constructor <init>(LZ0/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/a;->i:LZ0/d;

    const/4 p1, 0x1

    iput p1, p0, LF/a;->f:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LF/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LF/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, LF/b;

    invoke-direct {p1, p0}, LF/b;-><init>(LF/a;)V

    new-instance v0, LF/c;

    invoke-direct {v0, p0, p1}, LF/c;-><init>(LF/a;LF/b;)V

    iput-object v0, p0, LF/a;->e:LF/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    const-class v0, LF/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LF/a;->j:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, LF/a;->j:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, LF/a;->j:Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lz1/v;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v2, v3}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, LF/a;->i:LZ0/d;

    invoke-virtual {v0}, LZ0/d;->b()V

    return-void
.end method
