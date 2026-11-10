.class public final LB1/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LB1/B;


# instance fields
.field public final a:La1/g;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB1/B;

    invoke-direct {v0}, LB1/B;-><init>()V

    sput-object v0, LB1/B;->c:LB1/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LB1/B;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, La1/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La1/g;-><init>(I)V

    iput-object v0, p0, LB1/B;->a:La1/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)LB1/E;
    .locals 5

    iget-object v0, p0, LB1/B;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, LB1/B;->a:La1/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LB1/F;->a:Ljava/lang/Class;

    const-class v2, LB1/r;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, LB1/c;->a:Ljava/lang/Class;

    sget-object v3, LB1/F;->a:Ljava/lang/Class;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v3, LB1/c;->a:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v1, LB1/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, LB1/r;->b(Ljava/lang/Class;)LB1/r;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, LB1/r;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB1/D;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, v1, LB1/D;->c:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    sget-object v2, LB1/F;->b:LB1/p;

    iget-object v1, v1, LB1/D;->a:LB1/a;

    new-instance v3, LB1/A;

    invoke-direct {v3, v2, v1}, LB1/A;-><init>(LB1/p;LB1/a;)V

    goto :goto_2

    :cond_2
    sget-object v2, LB1/F;->b:LB1/p;

    invoke-virtual {v1}, LB1/D;->a()I

    move-result v3

    invoke-static {v3}, Lz/K;->b(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    sget-object v3, LB1/N;->b:LB1/p;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    sget-object v4, LB1/z;->k:Lsun/misc/Unsafe;

    if-eqz v4, :cond_6

    instance-of v4, v1, LB1/D;

    if-eqz v4, :cond_5

    invoke-static {v1, v2, v3}, LB1/z;->u(LB1/D;LB1/p;LB1/p;)LB1/z;

    move-result-object v3

    :goto_2
    sget-object v1, LB1/u;->a:[B

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB1/E;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object v3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unable to get message info for "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported message type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Full runtime messages are not supported by this schema factory: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    check-cast v1, LB1/E;

    return-object v1
.end method
