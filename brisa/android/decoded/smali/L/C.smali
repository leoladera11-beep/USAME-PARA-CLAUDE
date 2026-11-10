.class public final LL/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/h;


# instance fields
.field public final e:LL/h;

.field public f:J

.field public g:Landroid/net/Uri;

.field public h:Ljava/util/Map;


# direct methods
.method public constructor <init>(LL/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LL/C;->e:LL/h;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, LL/C;->g:Landroid/net/Uri;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, LL/C;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, LL/C;->e:LL/h;

    invoke-interface {v0}, LL/h;->close()V

    return-void
.end method

.method public final d(LL/n;)J
    .locals 3

    iget-object v0, p0, LL/C;->e:LL/h;

    iget-object v1, p1, LL/n;->a:Landroid/net/Uri;

    iput-object v1, p0, LL/C;->g:Landroid/net/Uri;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, LL/C;->h:Ljava/util/Map;

    :try_start_0
    invoke-interface {v0, p1}, LL/h;->d(LL/n;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, LL/h;->u()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, LL/C;->g:Landroid/net/Uri;

    :cond_0
    invoke-interface {v0}, LL/h;->m()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LL/C;->h:Ljava/util/Map;

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, LL/h;->u()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, LL/C;->g:Landroid/net/Uri;

    :cond_1
    invoke-interface {v0}, LL/h;->m()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LL/C;->h:Ljava/util/Map;

    throw p1
.end method

.method public final m()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LL/C;->e:LL/h;

    invoke-interface {v0}, LL/h;->m()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .locals 2

    iget-object v0, p0, LL/C;->e:LL/h;

    invoke-interface {v0, p1, p2, p3}, LG/o;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, LL/C;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, LL/C;->f:J

    :cond_0
    return p1
.end method

.method public final u()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LL/C;->e:LL/h;

    invoke-interface {v0}, LL/h;->u()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final y(LL/D;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LL/C;->e:LL/h;

    invoke-interface {v0, p1}, LL/h;->y(LL/D;)V

    return-void
.end method
