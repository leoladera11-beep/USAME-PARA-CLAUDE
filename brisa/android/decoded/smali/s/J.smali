.class public Ls/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Ls/K;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ls/C;

    invoke-direct {v0}, Ls/C;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ls/B;

    invoke-direct {v0}, Ls/B;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ls/A;

    invoke-direct {v0}, Ls/A;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ls/D;->b()Ls/K;

    move-result-object v0

    iget-object v0, v0, Ls/K;->a:Ls/J;

    invoke-virtual {v0}, Ls/J;->a()Ls/K;

    move-result-object v0

    iget-object v0, v0, Ls/K;->a:Ls/J;

    invoke-virtual {v0}, Ls/J;->b()Ls/K;

    move-result-object v0

    iget-object v0, v0, Ls/K;->a:Ls/J;

    invoke-virtual {v0}, Ls/J;->c()Ls/K;

    return-void
.end method

.method public constructor <init>(Ls/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/J;->a:Ls/K;

    return-void
.end method


# virtual methods
.method public a()Ls/K;
    .locals 1

    iget-object v0, p0, Ls/J;->a:Ls/K;

    return-object v0
.end method

.method public b()Ls/K;
    .locals 1

    iget-object v0, p0, Ls/J;->a:Ls/K;

    return-object v0
.end method

.method public c()Ls/K;
    .locals 1

    iget-object v0, p0, Ls/J;->a:Ls/K;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Ls/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ls/J;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ls/J;

    invoke-virtual {p0}, Ls/J;->i()Z

    move-result v1

    invoke-virtual {p1}, Ls/J;->i()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ls/J;->h()Z

    move-result v1

    invoke-virtual {p1}, Ls/J;->h()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ls/J;->g()Ln/b;

    move-result-object v1

    invoke-virtual {p1}, Ls/J;->g()Ln/b;

    move-result-object v3

    invoke-static {v1, v3}, Lr/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ls/J;->f()Ln/b;

    move-result-object v1

    invoke-virtual {p1}, Ls/J;->f()Ln/b;

    move-result-object v3

    invoke-static {v1, v3}, Lr/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ls/J;->e()Ls/d;

    move-result-object v1

    invoke-virtual {p1}, Ls/J;->e()Ls/d;

    move-result-object p1

    invoke-static {v1, p1}, Lr/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()Ln/b;
    .locals 1

    sget-object v0, Ln/b;->e:Ln/b;

    return-object v0
.end method

.method public g()Ln/b;
    .locals 1

    sget-object v0, Ln/b;->e:Ln/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Ls/J;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Ls/J;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Ls/J;->g()Ln/b;

    move-result-object v2

    invoke-virtual {p0}, Ls/J;->f()Ln/b;

    move-result-object v3

    invoke-virtual {p0}, Ls/J;->e()Ls/d;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j([Ln/b;)V
    .locals 0

    return-void
.end method

.method public k(Ls/K;)V
    .locals 0

    return-void
.end method

.method public l(Ln/b;)V
    .locals 0

    return-void
.end method
