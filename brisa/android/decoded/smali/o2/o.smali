.class public abstract Lo2/o;
.super Lo2/p;
.source "SourceFile"


# instance fields
.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    iput-object p1, p0, Lo2/o;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final D()Lo2/v;
    .locals 2

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    instance-of v1, v0, Lo2/n;

    if-eqz v1, :cond_0

    check-cast v0, Lo2/n;

    iget-object v0, v0, Lo2/n;->b:Lo2/v;

    return-object v0

    :cond_0
    invoke-super {p0}, Lo2/p;->D()Lo2/v;

    move-result-object v0

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    instance-of v1, v0, Lo2/b;

    if-eqz v1, :cond_0

    check-cast v0, Lo2/b;

    invoke-virtual {p0}, Lo2/p;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo2/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lo2/n;

    if-eqz v1, :cond_1

    check-cast v0, Lo2/n;

    iget-object v0, v0, Lo2/n;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final G()V
    .locals 5

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    instance-of v0, v0, Lo2/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lo2/b;

    invoke-direct {v1}, Lo2/b;-><init>()V

    invoke-virtual {p0}, Lo2/o;->D()Lo2/v;

    move-result-object v2

    iput-object v1, p0, Lo2/o;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lo2/p;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lo2/b;->k(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v0, "/jsoup.spans"

    invoke-virtual {v1, v0}, Lo2/b;->h(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v2, v0}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v1, Lo2/b;->g:[Ljava/lang/Object;

    aput-object v2, v0, v3

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lo2/o;->G()V

    invoke-super {p0, p1}, Lo2/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    instance-of v0, v0, Lo2/b;

    if-nez v0, :cond_1

    const-string v0, "#doctype"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lo2/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lo2/o;->G()V

    const-string p1, "pubSysKey"

    invoke-super {p0, p1, p2}, Lo2/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()Lo2/b;
    .locals 1

    invoke-virtual {p0}, Lo2/o;->G()V

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    check-cast v0, Lo2/b;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo2/j;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lo2/p;)Lo2/p;
    .locals 3

    invoke-super {p0, p1}, Lo2/p;->j(Lo2/p;)Lo2/p;

    move-result-object p1

    check-cast p1, Lo2/o;

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    instance-of v1, v0, Lo2/b;

    if-eqz v1, :cond_0

    check-cast v0, Lo2/b;

    invoke-virtual {v0}, Lo2/b;->d()Lo2/b;

    move-result-object v0

    iput-object v0, p1, Lo2/o;->h:Ljava/lang/Object;

    return-object p1

    :cond_0
    instance-of v1, v0, Lo2/n;

    if-eqz v1, :cond_1

    check-cast v0, Lo2/n;

    new-instance v1, Lo2/n;

    iget-object v2, v0, Lo2/n;->a:Ljava/lang/String;

    iget-object v0, v0, Lo2/n;->b:Lo2/v;

    invoke-virtual {v0}, Lo2/v;->a()Lo2/v;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lo2/n;-><init>(Ljava/lang/String;Lo2/v;)V

    iput-object v1, p1, Lo2/o;->h:Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final k()Ljava/util/List;
    .locals 1

    sget-object v0, Lo2/p;->g:Ljava/util/List;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lo2/o;->h:Ljava/lang/Object;

    instance-of v0, v0, Lo2/b;

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lo2/o;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lo2/j;
    .locals 1

    iget-object v0, p0, Lo2/p;->e:Lo2/j;

    return-object v0
.end method
