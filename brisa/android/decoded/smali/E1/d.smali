.class public final LE1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public e:LO1/e;

.field public volatile f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LN1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LO1/e;

    iput-object p1, p0, LE1/d;->e:LO1/e;

    sget-object p1, LE1/e;->b:LE1/e;

    iput-object p1, p0, LE1/d;->f:Ljava/lang/Object;

    iput-object p0, p0, LE1/d;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LE1/d;->f:Ljava/lang/Object;

    sget-object v1, LE1/e;->b:LE1/e;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, LE1/d;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, LE1/d;->f:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LE1/d;->e:LO1/e;

    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, LN1/a;->d()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, LE1/d;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LE1/d;->e:LO1/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LE1/d;->f:Ljava/lang/Object;

    sget-object v1, LE1/e;->b:LE1/e;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LE1/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    return-object v0
.end method
