.class public abstract Lp2/O;
.super Lp2/Q;
.source "SourceFile"


# instance fields
.field public final d:LW0/c;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lo2/b;

.field public final h:LW0/c;

.field public final i:LW0/c;

.field public j:Z

.field public final k:Lp2/c;

.field public l:I


# direct methods
.method public constructor <init>(ILp2/c;)V
    .locals 3

    invoke-direct {p0, p1}, Lp2/Q;-><init>(I)V

    new-instance p1, LW0/c;

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LW0/c;-><init>(IZ)V

    iput-object p1, p0, Lp2/O;->d:LW0/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp2/O;->f:Z

    new-instance v0, LW0/c;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LW0/c;-><init>(IZ)V

    iput-object v0, p0, Lp2/O;->h:LW0/c;

    new-instance v0, LW0/c;

    invoke-direct {v0, v1, v2}, LW0/c;-><init>(IZ)V

    iput-object v0, p0, Lp2/O;->i:LW0/c;

    iput-boolean p1, p0, Lp2/O;->j:Z

    iput-object p2, p0, Lp2/O;->k:Lp2/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic f()V
    .locals 0

    invoke-virtual {p0}, Lp2/O;->n()Lp2/O;

    return-void
.end method

.method public final g(CII)V
    .locals 0

    iget-object p2, p0, Lp2/O;->i:LW0/c;

    invoke-virtual {p2, p1}, LW0/c;->c(C)V

    return-void
.end method

.method public final h([III)V
    .locals 4

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget v0, p1, p3

    iget-object v1, p0, Lp2/O;->i:LW0/c;

    iget-object v2, v1, LW0/c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v2, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v2

    iput-object v2, v1, LW0/c;->f:Ljava/lang/Object;

    iget-object v3, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iput-object v2, v1, LW0/c;->g:Ljava/lang/Object;

    iget-object v1, v1, LW0/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LW0/c;->g:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lp2/O;->d:LW0/c;

    invoke-virtual {v0, p1}, LW0/c;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp2/O;->e:Ljava/lang/String;

    return-void
.end method

.method public final j(Lp2/C;)V
    .locals 0

    iget-object p1, p0, Lp2/O;->k:Lp2/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lp2/O;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    iput-object p1, v0, LW0/c;->g:Ljava/lang/Object;

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp2/O;->e:Ljava/lang/String;

    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lp2/O;->g:Lo2/b;

    if-nez v0, :cond_0

    new-instance v0, Lo2/b;

    invoke-direct {v0}, Lo2/b;-><init>()V

    iput-object v0, p0, Lp2/O;->g:Lo2/b;

    :cond_0
    iget-object v0, p0, Lp2/O;->h:LW0/c;

    invoke-virtual {v0}, LW0/c;->u()Z

    move-result v1

    iget-object v2, p0, Lp2/O;->i:LW0/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lp2/O;->g:Lo2/b;

    invoke-virtual {v1}, Lo2/b;->size()I

    move-result v1

    const/16 v3, 0x200

    if-ge v1, v3, :cond_3

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, LW0/c;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, LW0/c;->B()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lp2/O;->j:Z

    if-eqz v3, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lp2/O;->g:Lo2/b;

    invoke-virtual {v4, v3, v1}, Lo2/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lp2/O;->k:Lp2/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    invoke-virtual {v0}, LW0/c;->y()V

    invoke-virtual {v2}, LW0/c;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp2/O;->j:Z

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lp2/O;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp2/O;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lm2/g;

    const-string v1, "Must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lp2/O;
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lp2/Q;->b:I

    iput v0, p0, Lp2/Q;->c:I

    iget-object v0, p0, Lp2/O;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp2/O;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lp2/O;->f:Z

    iput-object v0, p0, Lp2/O;->g:Lo2/b;

    iput v1, p0, Lp2/O;->l:I

    iget-object v0, p0, Lp2/O;->h:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    iget-object v0, p0, Lp2/O;->i:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    iput-boolean v1, p0, Lp2/O;->j:Z

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lp2/O;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "[unset]"

    :cond_0
    return-object v0
.end method
