.class public final LF2/c;
.super LB1/r;
.source "SourceFile"


# static fields
.field public static final f:LF2/c;

.field public static volatile g:LB1/q;


# instance fields
.field public final e:LB1/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF2/c;

    invoke-direct {v0}, LF2/c;-><init>()V

    sput-object v0, LF2/c;->f:LF2/c;

    iget v1, v0, LB1/r;->b:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, LB1/r;->b:I

    sget-object v1, LB1/r;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, LF2/c;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LB1/a;->a:I

    const/4 v0, -0x1

    iput v0, p0, LB1/r;->b:I

    sget-object v0, LB1/H;->e:LB1/H;

    iput-object v0, p0, LB1/r;->c:LB1/H;

    sget-object v0, LB1/C;->i:LB1/C;

    iput-object v0, p0, LF2/c;->e:LB1/C;

    return-void
.end method

.method public static f([B)LF2/c;
    .locals 6

    array-length v4, p0

    invoke-static {}, LB1/n;->a()LB1/n;

    move-result-object v0

    sget-object v1, LF2/c;->f:LF2/c;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LB1/r;->e()LB1/r;

    move-result-object v1

    :try_start_0
    sget-object v2, LB1/B;->c:LB1/B;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, LB1/B;->a(Ljava/lang/Class;)LB1/E;

    move-result-object v2

    new-instance v5, LB1/d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    move-object v0, v2

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, LB1/E;->b(Ljava/lang/Object;[BIILB1/d;)V

    invoke-interface {v0, v1}, LB1/E;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch LB1/v; {:try_start_0 .. :try_end_0} :catch_3
    .catch LB1/G; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_4

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, LB1/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    sget-object p0, LB1/B;->c:LB1/B;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LB1/B;->a(Ljava/lang/Class;)LB1/E;

    move-result-object p0

    invoke-interface {p0, v1}, LB1/E;->d(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, LB1/r;->a(I)Ljava/lang/Object;

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, LB1/G;

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, LB1/v;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    check-cast v1, LF2/c;

    return-object v1

    :catch_0
    invoke-static {}, LB1/v;->d()LB1/v;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, LB1/v;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, LB1/v;

    throw p0

    :cond_5
    new-instance v0, LB1/v;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance v0, LB1/v;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    move-object p0, v0

    throw p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lz/K;->b(I)I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    sget-object p1, LF2/c;->g:LB1/q;

    if-nez p1, :cond_1

    const-class v0, LF2/c;

    monitor-enter v0

    :try_start_0
    sget-object p1, LF2/c;->g:LB1/q;

    if-nez p1, :cond_0

    new-instance p1, LB1/q;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, LF2/c;->g:LB1/q;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    sget-object p1, LF2/c;->f:LF2/c;

    return-object p1

    :cond_4
    new-instance p1, LF2/b;

    invoke-direct {p1}, LF2/b;-><init>()V

    return-object p1

    :cond_5
    new-instance p1, LF2/c;

    invoke-direct {p1}, LF2/c;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "xtags_"

    const-class v0, LF2/a;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LF2/c;->f:LF2/c;

    new-instance v1, LB1/D;

    invoke-direct {v1, v0, p1}, LB1/D;-><init>(LB1/a;[Ljava/lang/Object;)V

    return-object v1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
