.class public final Lb0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Lb0/p;

.field public g:Lb0/G;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb0/B;->a:I

    iput p2, p0, Lb0/B;->b:I

    iput-object p3, p0, Lb0/B;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 3

    iput-object p1, p0, Lb0/B;->f:Lb0/p;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    iput-object p1, p0, Lb0/B;->g:Lb0/G;

    new-instance v0, LG/w;

    invoke-direct {v0}, LG/w;-><init>()V

    iget-object v1, p0, Lb0/B;->c:Ljava/lang/String;

    invoke-static {v1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LG/w;->n:Ljava/lang/String;

    invoke-static {v1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LG/w;->o:Ljava/lang/String;

    new-instance v1, LG/x;

    invoke-direct {v1, v0}, LG/x;-><init>(LG/w;)V

    invoke-interface {p1, v1}, Lb0/G;->b(LG/x;)V

    iget-object p1, p0, Lb0/B;->f:Lb0/p;

    invoke-interface {p1}, Lb0/p;->e()V

    iget-object p1, p0, Lb0/B;->f:Lb0/p;

    new-instance v0, Lb0/C;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Lb0/p;->c(Lb0/z;)V

    const/4 p1, 0x1

    iput p1, p0, Lb0/B;->e:I

    return-void
.end method

.method public final c(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lb0/B;->e:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Lb0/B;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lb0/B;->d:I

    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lb0/B;->b:I

    iget v3, p0, Lb0/B;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-eq v2, v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v4}, LF1/i;->o(Z)V

    new-instance v4, LJ/D;

    invoke-direct {v4, v2}, LJ/D;-><init>(I)V

    iget-object v5, v4, LJ/D;->a:[B

    invoke-interface {p1, v1, v5, v2}, Lb0/o;->l(I[BI)V

    invoke-virtual {v4}, LJ/D;->H()I

    move-result p1

    if-ne p1, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 9

    iget p2, p0, Lb0/B;->e:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object p2, p0, Lb0/B;->g:Lb0/G;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {p2, p1, v3, v2}, Lb0/G;->g(LG/o;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lb0/B;->e:I

    iget-object v2, p0, Lb0/B;->g:Lb0/G;

    iget v6, p0, Lb0/B;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v2 .. v8}, Lb0/G;->f(JIIILb0/F;)V

    iput p2, p0, Lb0/B;->d:I

    return p2

    :cond_2
    iget v0, p0, Lb0/B;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lb0/B;->d:I

    return p2
.end method
