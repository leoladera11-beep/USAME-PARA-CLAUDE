.class public final Lo2/g;
.super Lo2/j;
.source "SourceFile"


# instance fields
.field public n:Lo2/f;

.field public o:Lp2/D;

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    new-instance v0, Lp2/D;

    new-instance v1, Lp2/c;

    .line 9
    invoke-direct {v1}, Lp2/c;-><init>()V

    .line 10
    invoke-direct {v0, v1}, Lp2/D;-><init>(Lp2/c;)V

    .line 11
    const-string v1, "http://www.w3.org/1999/xhtml"

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lo2/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lp2/D;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lp2/D;)V
    .locals 3

    .line 1
    new-instance v0, Lp2/E;

    .line 2
    const-string v1, "#root"

    invoke-static {v1}, Ln2/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {v0, v1, v2, p1}, Lp2/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p2, p1}, Lo2/j;-><init>(Lp2/E;Ljava/lang/String;Lo2/b;)V

    .line 5
    new-instance p1, Lo2/f;

    invoke-direct {p1}, Lo2/f;-><init>()V

    iput-object p1, p0, Lo2/g;->n:Lo2/f;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lo2/g;->p:I

    .line 7
    iput-object p3, p0, Lo2/g;->o:Lp2/D;

    return-void
.end method


# virtual methods
.method public final bridge synthetic K()Lo2/j;
    .locals 1

    invoke-virtual {p0}, Lo2/g;->T()Lo2/g;

    move-result-object v0

    return-object v0
.end method

.method public final T()Lo2/g;
    .locals 2

    invoke-super {p0}, Lo2/j;->K()Lo2/j;

    move-result-object v0

    check-cast v0, Lo2/g;

    iget-object v1, p0, Lo2/j;->j:Lo2/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo2/b;->d()Lo2/b;

    move-result-object v1

    iput-object v1, v0, Lo2/j;->j:Lo2/b;

    :cond_0
    iget-object v1, p0, Lo2/g;->n:Lo2/f;

    invoke-virtual {v1}, Lo2/f;->a()Lo2/f;

    move-result-object v1

    iput-object v1, v0, Lo2/g;->n:Lo2/f;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/g;->T()Lo2/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lo2/p;
    .locals 1

    invoke-virtual {p0}, Lo2/g;->T()Lo2/g;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public final u(Ln2/b;)V
    .locals 1

    invoke-virtual {p0}, Lo2/p;->l()Lo2/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, LB/A;->O(Lo2/p;Ln2/b;)LB/A;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lq2/t;->s(Lo2/p;)V

    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method
