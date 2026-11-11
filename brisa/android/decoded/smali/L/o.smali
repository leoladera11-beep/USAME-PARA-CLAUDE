.class public final LL/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/h;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/ArrayList;

.field public final g:LL/h;

.field public h:LL/u;

.field public i:LL/b;

.field public j:LL/e;

.field public k:LL/h;

.field public l:LL/F;

.field public m:LL/f;

.field public n:LL/B;

.field public o:LL/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;LL/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LL/o;->e:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LL/o;->g:LL/h;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LL/o;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static c(LL/h;LL/D;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LL/h;->y(LL/D;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(LL/h;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LL/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL/D;

    invoke-interface {p1, v1}, LL/h;->y(LL/D;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, LL/o;->o:LL/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, LL/h;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, LL/o;->o:LL/h;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, LL/o;->o:LL/h;

    throw v0

    :cond_0
    return-void
.end method

.method public final d(LL/n;)J
    .locals 6

    iget-object v0, p0, LL/o;->o:LL/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p1, LL/n;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, p0, LL/o;->e:Landroid/content/Context;

    if-nez v4, :cond_f

    const-string v4, "file"

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "asset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LL/o;->i:LL/b;

    if-nez v0, :cond_2

    new-instance v0, LL/b;

    invoke-direct {v0, v5}, LL/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LL/o;->i:LL/b;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_2
    iget-object v0, p0, LL/o;->i:LL/b;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto/16 :goto_4

    :cond_3
    const-string v0, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LL/o;->j:LL/e;

    if-nez v0, :cond_4

    new-instance v0, LL/e;

    invoke-direct {v0, v5}, LL/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LL/o;->j:LL/e;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_4
    iget-object v0, p0, LL/o;->j:LL/e;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto/16 :goto_4

    :cond_5
    const-string v0, "rtmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, LL/o;->g:LL/h;

    if-eqz v0, :cond_7

    iget-object v0, p0, LL/o;->k:LL/h;

    if-nez v0, :cond_6

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL/h;

    iput-object v0, p0, LL/o;->k:LL/h;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, LL/o;->k:LL/h;

    if-nez v0, :cond_6

    iput-object v3, p0, LL/o;->k:LL/h;

    :cond_6
    iget-object v0, p0, LL/o;->k:LL/h;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto/16 :goto_4

    :cond_7
    const-string v0, "udp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, LL/o;->l:LL/F;

    if-nez v0, :cond_8

    new-instance v0, LL/F;

    invoke-direct {v0}, LL/F;-><init>()V

    iput-object v0, p0, LL/o;->l:LL/F;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_8
    iget-object v0, p0, LL/o;->l:LL/F;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto/16 :goto_4

    :cond_9
    const-string v0, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LL/o;->m:LL/f;

    if-nez v0, :cond_a

    new-instance v0, LL/f;

    invoke-direct {v0, v1}, LL/c;-><init>(Z)V

    iput-object v0, p0, LL/o;->m:LL/f;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_a
    iget-object v0, p0, LL/o;->m:LL/f;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto :goto_4

    :cond_b
    const-string v0, "rawresource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.resource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    iput-object v3, p0, LL/o;->o:LL/h;

    goto :goto_4

    :cond_d
    :goto_2
    iget-object v0, p0, LL/o;->n:LL/B;

    if-nez v0, :cond_e

    new-instance v0, LL/B;

    invoke-direct {v0, v5}, LL/B;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LL/o;->n:LL/B;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_e
    iget-object v0, p0, LL/o;->n:LL/B;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v2, "/android_asset/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LL/o;->i:LL/b;

    if-nez v0, :cond_10

    new-instance v0, LL/b;

    invoke-direct {v0, v5}, LL/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LL/o;->i:LL/b;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_10
    iget-object v0, p0, LL/o;->i:LL/b;

    iput-object v0, p0, LL/o;->o:LL/h;

    goto :goto_4

    :cond_11
    iget-object v0, p0, LL/o;->h:LL/u;

    if-nez v0, :cond_12

    new-instance v0, LL/u;

    invoke-direct {v0, v1}, LL/c;-><init>(Z)V

    iput-object v0, p0, LL/o;->h:LL/u;

    invoke-virtual {p0, v0}, LL/o;->b(LL/h;)V

    :cond_12
    iget-object v0, p0, LL/o;->h:LL/u;

    iput-object v0, p0, LL/o;->o:LL/h;

    :goto_4
    iget-object v0, p0, LL/o;->o:LL/h;

    invoke-interface {v0, p1}, LL/h;->d(LL/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LL/o;->o:LL/h;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    invoke-interface {v0}, LL/h;->m()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .locals 1

    iget-object v0, p0, LL/o;->o:LL/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, LG/o;->read([BII)I

    move-result p1

    return p1
.end method

.method public final u()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, LL/o;->o:LL/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LL/h;->u()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final y(LL/D;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LL/o;->g:LL/h;

    invoke-interface {v0, p1}, LL/h;->y(LL/D;)V

    iget-object v0, p0, LL/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LL/o;->h:LL/u;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    iget-object v0, p0, LL/o;->i:LL/b;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    iget-object v0, p0, LL/o;->j:LL/e;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    iget-object v0, p0, LL/o;->k:LL/h;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    iget-object v0, p0, LL/o;->l:LL/F;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    iget-object v0, p0, LL/o;->m:LL/f;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    iget-object v0, p0, LL/o;->n:LL/B;

    invoke-static {v0, p1}, LL/o;->c(LL/h;LL/D;)V

    return-void
.end method
