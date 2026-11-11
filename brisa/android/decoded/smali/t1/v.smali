.class public final Lt1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/t;


# static fields
.field public static final h:LL/i;


# instance fields
.field public final e:Ljava/lang/Object;

.field public volatile f:Lt1/t;

.field public g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL/i;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LL/i;-><init>(I)V

    sput-object v0, Lt1/v;->h:LL/i;

    return-void
.end method

.method public constructor <init>(Lt1/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt1/v;->e:Ljava/lang/Object;

    iput-object p1, p0, Lt1/v;->f:Lt1/t;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lt1/v;->f:Lt1/t;

    sget-object v1, Lt1/v;->h:LL/i;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lt1/v;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lt1/v;->f:Lt1/t;

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lt1/v;->f:Lt1/t;

    invoke-interface {v2}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lt1/v;->g:Ljava/lang/Object;

    iput-object v1, p0, Lt1/v;->f:Lt1/t;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lt1/v;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lt1/v;->f:Lt1/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppliers.memoize("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lt1/v;->h:LL/i;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<supplier that returned "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt1/v;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
