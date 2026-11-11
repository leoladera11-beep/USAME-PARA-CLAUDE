.class public final Lo2/h;
.super Lo2/o;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "doctypeInternalSubset"

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo2/h;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final H(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

    return-object v0
.end method

.method public final v(Ln2/b;Lo2/f;)V
    .locals 4

    iget p2, p2, Lo2/f;->j:I

    const/4 v0, 0x1

    const-string v1, "systemId"

    const-string v2, "publicId"

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v2}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v1}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "<!doctype"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    goto :goto_0

    :cond_0
    const-string p2, "<!DOCTYPE"

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    :goto_0
    const-string p2, "name"

    invoke-virtual {p0, p2}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result v0

    const-string v3, " "

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object v0

    invoke-virtual {p0, p2}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    :cond_1
    const-string p2, "pubSysKey"

    invoke-virtual {p0, p2}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object v0

    invoke-virtual {p0, p2}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    :cond_2
    invoke-virtual {p0, v2}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0x22

    if-eqz p2, :cond_3

    const-string p2, " \""

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p2

    invoke-virtual {p0, v2}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p2

    invoke-virtual {p2, v0}, Ln2/b;->a(C)Ln2/b;

    :cond_3
    invoke-virtual {p0, v1}, Lo2/h;->H(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    const/16 v0, 0x27

    :cond_4
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ln2/b;->a(C)Ln2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln2/b;->a(C)Ln2/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p2

    invoke-virtual {p2, v0}, Ln2/b;->a(C)Ln2/b;

    :cond_5
    invoke-virtual {p0}, Lo2/o;->e()Lo2/b;

    move-result-object p2

    sget-object v0, Lo2/h;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lo2/b;->h(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_6

    const-string p2, " ["

    invoke-virtual {p1, p2}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p2

    invoke-virtual {p0, v0}, Lo2/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    move-result-object p2

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ln2/b;->a(C)Ln2/b;

    :cond_6
    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ln2/b;->a(C)Ln2/b;

    return-void
.end method
