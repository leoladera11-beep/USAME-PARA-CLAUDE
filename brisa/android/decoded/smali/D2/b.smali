.class public final LD2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# instance fields
.field public final a:LC1/d;


# direct methods
.method public constructor <init>(LC1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/b;->a:LC1/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LD2/b;->a:LC1/d;

    const-string v1, "longBylineText"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, LD2/b;->a:LC1/d;

    const-string v1, "videoCountShortText"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not extract item count for playlist/mix info item"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LD2/b;->a:LC1/d;

    const-string v1, "title"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    const-string v0, "shareUrl"

    const/4 v1, 0x0

    iget-object v2, p0, LD2/b;->a:LC1/d;

    invoke-virtual {v2, v0, v1}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get url"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 3

    invoke-virtual {p0}, LD2/b;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LC2/m;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, LJ2/g;->h(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const-string v1, "list"

    invoke-static {v0, v1}, LJ2/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LC2/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not extract playlist type from malformed url"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LD2/b;->a:LC1/d;

    invoke-static {v0}, LC2/m;->l(LC1/d;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
