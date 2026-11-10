.class public final LX/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LJ0/f;

.field public static final e:LJ0/f;


# instance fields
.field public final a:LY/a;

.field public b:LX/i;

.field public c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LJ0/f;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, LJ0/f;-><init>(IJ)V

    sput-object v0, LX/m;->d:LJ0/f;

    new-instance v0, LJ0/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, LJ0/f;-><init>(IJ)V

    sput-object v0, LX/m;->e:LJ0/f;

    return-void
.end method

.method public constructor <init>(LY/a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, LX/m;->a:LY/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ExoPlayer:Loader:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, LJ/W;->a:Ljava/lang/String;

    .line 3
    new-instance v0, LJ/T;

    invoke-direct {v0, p1}, LJ/T;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 4
    new-instance v0, LP/B;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    .line 5
    new-instance v1, LY/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, LY/a;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)V

    .line 6
    invoke-direct {p0, v1}, LX/m;-><init>(LY/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, LX/m;->b:LX/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
