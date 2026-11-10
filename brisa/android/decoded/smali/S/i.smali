.class public final synthetic LS/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/v;


# static fields
.field public static final e:LS/i;

.field public static final f:LS/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LS/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS/i;->e:LS/i;

    new-instance v0, LS/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LS/i;->f:LS/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, LS/w;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LS/o;

    iget-object p1, p1, LS/o;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
