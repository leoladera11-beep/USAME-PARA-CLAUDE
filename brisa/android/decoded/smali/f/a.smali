.class public final Lf/a;
.super Lcom/brisa/local/u;
.source "SourceFile"


# static fields
.field public static volatile e:Lf/a;


# instance fields
.field public final d:Lf/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/d;

    invoke-direct {v0}, Lf/d;-><init>()V

    iput-object v0, p0, Lf/a;->d:Lf/d;

    return-void
.end method

.method public static C()Lf/a;
    .locals 2

    sget-object v0, Lf/a;->e:Lf/a;

    if-eqz v0, :cond_0

    sget-object v0, Lf/a;->e:Lf/a;

    return-object v0

    :cond_0
    const-class v0, Lf/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/a;->e:Lf/a;

    if-nez v1, :cond_1

    new-instance v1, Lf/a;

    invoke-direct {v1}, Lf/a;-><init>()V

    sput-object v1, Lf/a;->e:Lf/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lf/a;->e:Lf/a;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
