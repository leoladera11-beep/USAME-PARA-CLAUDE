.class public abstract Lcom/brisa/local/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW1/p;

    invoke-direct {v0}, LW1/p;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "unit"

    invoke-static {v1, v2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, LX1/b;->b(J)I

    move-result v1

    iput v1, v0, LW1/p;->r:I

    const-wide/16 v1, 0x1e

    invoke-static {v1, v2}, LX1/b;->b(J)I

    move-result v1

    iput v1, v0, LW1/p;->s:I

    const/4 v1, 0x0

    iput-boolean v1, v0, LW1/p;->i:Z

    new-instance v1, LP/B;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LP/B;-><init>(I)V

    iput-object v1, v0, LW1/p;->k:LW1/i;

    new-instance v1, Lcom/brisa/local/V;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, LW1/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LW1/q;

    invoke-direct {v1, v0}, LW1/q;-><init>(LW1/p;)V

    sput-object v1, Lcom/brisa/local/W;->a:LW1/q;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[\\p{Cntrl}\\\\/<>:\"|?*]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[. ]+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Video"

    return-object p0

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 8

    if-eqz p0, :cond_0

    const-string v6, "youtube-nocookie.com"

    const-string v7, "www.youtube-nocookie.com"

    const-string v0, "youtube.com"

    const-string v1, "www.youtube.com"

    const-string v2, "m.youtube.com"

    const-string v3, "music.youtube.com"

    const-string v4, "youtu.be"

    const-string v5, "www.youtu.be"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
