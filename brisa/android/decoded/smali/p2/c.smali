.class public final Lp2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public a:Lp2/D;

.field public b:Lp2/a;

.field public c:Lp2/T;

.field public d:Lo2/g;

.field public final e:Ljava/util/ArrayList;

.field public f:Lp2/Q;

.field public g:Lp2/C;

.field public h:Lp2/G;

.field public i:Lp2/N;

.field public final j:Lp2/M;

.field public k:Ln2/a;

.field public l:Z

.field public m:Lp2/A;

.field public n:Lp2/A;

.field public o:Z

.field public p:Lo2/j;

.field public q:Lo2/m;

.field public r:Ljava/util/ArrayList;

.field public s:Ljava/util/ArrayList;

.field public t:LW0/c;

.field public u:Ljava/util/ArrayList;

.field public v:Lp2/M;

.field public w:Z

.field public x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "ms"

    const-string v1, "mtext"

    const-string v2, "mi"

    const-string v3, "mn"

    const-string v4, "mo"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp2/c;->y:[Ljava/lang/String;

    const-string v0, "foreignObject"

    const-string v1, "title"

    const-string v2, "desc"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp2/c;->z:[Ljava/lang/String;

    const-string v7, "select"

    const-string v8, "textarea"

    const-string v1, "button"

    const-string v2, "fieldset"

    const-string v3, "input"

    const-string v4, "keygen"

    const-string v5, "object"

    const-string v6, "output"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp2/c;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    new-instance v0, Lp2/M;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lp2/O;-><init>(ILp2/c;)V

    iput-object v0, p0, Lp2/c;->j:Lp2/M;

    return-void
.end method

.method public static B(Lo2/j;)Z
    .locals 3

    iget-object v0, p0, Lo2/j;->h:Lp2/E;

    iget-object v1, v0, Lp2/E;->e:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "annotation-xml"

    invoke-virtual {p0, v1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "encoding"

    invoke-virtual {p0, v1}, Lo2/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln2/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/xhtml+xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "http://www.w3.org/2000/svg"

    iget-object v1, v0, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lp2/E;->f:Ljava/lang/String;

    sget-object v0, Lp2/c;->z:[Ljava/lang/String;

    invoke-static {p0, v0}, Ln2/e;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static M(Lo2/j;)Lo2/j;
    .locals 3

    new-instance v0, Lo2/j;

    iget-object v1, p0, Lo2/j;->h:Lp2/E;

    invoke-virtual {p0}, Lo2/j;->e()Lo2/b;

    move-result-object p0

    invoke-virtual {p0}, Lo2/b;->d()Lo2/b;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lo2/j;-><init>(Lp2/E;Ljava/lang/String;Lo2/b;)V

    invoke-virtual {v0}, Lo2/p;->D()Lo2/v;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lo2/v;->d:I

    iput v1, p0, Lo2/v;->e:I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final A(Lp2/N;ZZ)V
    .locals 2

    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lp2/c;->g(Lp2/N;Ljava/lang/String;Z)Lo2/j;

    move-result-object p1

    check-cast p1, Lo2/m;

    if-eqz p3, :cond_0

    const-string p3, "template"

    invoke-virtual {p0, p3}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iput-object p1, p0, Lp2/c;->q:Lo2/m;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lp2/c;->q:Lo2/m;

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lp2/c;->j(Lo2/j;)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    :cond_2
    return-void
.end method

.method public final C(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final D([Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    invoke-static {v3, p1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final E()Lo2/j;
    .locals 2

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/j;

    return-object v0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    move-result-object v1

    iget-object v1, v1, Lo2/j;->h:Lp2/E;

    iget-object v2, v1, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lp2/E;->e:Ljava/lang/String;

    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/A;

    :cond_0
    return-void
.end method

.method public final H(Lp2/Q;)Z
    .locals 8

    iget-object v0, p0, Lp2/c;->t:LW0/c;

    const-string v1, "http://www.w3.org/1999/xhtml"

    iget-object v2, p0, Lp2/c;->e:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    sget-object v4, Lp2/A;->k:Lp2/x;

    if-eq v0, v4, :cond_10

    iget v0, p1, Lp2/Q;->a:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {p0, v0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p0}, Lp2/c;->k()V

    invoke-virtual {p0, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_0
    iget p1, p1, Lp2/Q;->a:I

    invoke-static {p1}, LB1/e;->t(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected state: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lp2/I;

    invoke-virtual {p0, p1, v5}, Lp2/c;->t(Lp2/I;Z)V

    iget-object p1, p1, Lp2/I;->d:LW0/c;

    invoke-virtual {p1}, LW0/c;->B()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v5, p0, Lp2/c;->w:Z

    :cond_2
    return v3

    :cond_3
    check-cast p1, Lp2/J;

    invoke-virtual {p0, p1}, Lp2/c;->v(Lp2/J;)V

    return v3

    :cond_4
    check-cast p1, Lp2/M;

    invoke-virtual {p1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lp2/c;->t:LW0/c;

    if-eqz v0, :cond_b

    const-string v0, "noscript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lp2/c;->k()V

    return v3

    :cond_5
    iget-object v0, p0, Lp2/c;->t:LW0/c;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/j;

    iget-object v7, v0, LW0/c;->f:Ljava/lang/Object;

    check-cast v7, Lo2/j;

    if-ne v6, v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v6, p1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0, p1, v1}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {p0, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_8
    invoke-virtual {p0, p1}, Lp2/c;->F(Ljava/lang/String;)V

    return v3

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_a
    :goto_1
    iget-object p1, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {p0, p1}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_b
    new-instance p1, Lm2/g;

    const-string v0, "Bug: noscript end tag processed with no island state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    check-cast p1, Lp2/N;

    invoke-virtual {p0, p1}, Lp2/c;->T(Lp2/N;)Lp2/E;

    move-result-object v0

    invoke-virtual {v0}, Lp2/E;->h()Lp2/l1;

    move-result-object v0

    invoke-virtual {p0, p1}, Lp2/c;->x(Lp2/N;)Lo2/j;

    move-result-object v1

    if-eqz v0, :cond_e

    iget-boolean p1, p1, Lp2/O;->f:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object p1

    if-ne p1, v1, :cond_e

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lp2/c;->c:Lp2/T;

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    iget-object p1, p0, Lp2/c;->m:Lp2/A;

    iput-object p1, p0, Lp2/c;->n:Lp2/A;

    iput-object v4, p0, Lp2/c;->m:Lp2/A;

    :cond_e
    :goto_2
    iput-boolean v5, p0, Lp2/c;->w:Z

    return v3

    :cond_f
    iget-object p1, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {p0, p1}, Lp2/c;->m(Lp2/A;)V

    return v5

    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v2, v0, Lo2/j;->h:Lp2/E;

    iget-object v2, v2, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_3

    :cond_12
    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->e:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x5

    if-eqz v1, :cond_14

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->g:Ljava/lang/String;

    sget-object v6, Lp2/c;->y:[Ljava/lang/String;

    invoke-static {v1, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Lp2/N;

    iget-object v6, v1, Lp2/O;->e:Ljava/lang/String;

    const-string v7, "mglyph"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "malignmark"

    iget-object v1, v1, Lp2/O;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_3

    :cond_13
    iget v1, p1, Lp2/Q;->a:I

    if-ne v1, v5, :cond_14

    goto :goto_3

    :cond_14
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "annotation-xml"

    invoke-virtual {v0, v1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Lp2/N;

    iget-object v1, v1, Lp2/O;->e:Ljava/lang/String;

    const-string v2, "svg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3

    :cond_15
    invoke-static {v0}, Lp2/c;->B(Lo2/j;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p1, Lp2/Q;->a:I

    if-ne v0, v5, :cond_16

    goto :goto_3

    :cond_16
    invoke-virtual {p1}, Lp2/Q;->c()Z

    move-result v3

    :cond_17
    :goto_3
    if-eqz v3, :cond_18

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    goto :goto_4

    :cond_18
    sget-object v0, Lp2/A;->A:Lp2/r;

    :goto_4
    invoke-virtual {v0, p1, p0}, Lp2/A;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1
.end method

.method public final I(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lp2/c;->f:Lp2/Q;

    iget-object v1, p0, Lp2/c;->j:Lp2/M;

    if-ne v0, v1, :cond_0

    new-instance v0, Lp2/M;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lp2/O;-><init>(ILp2/c;)V

    invoke-virtual {v0, p1}, Lp2/O;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1}, Lp2/O;->n()Lp2/O;

    invoke-virtual {v1, p1}, Lp2/O;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1
.end method

.method public final J(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lp2/c;->i:Lp2/N;

    iget-object v1, p0, Lp2/c;->f:Lp2/Q;

    if-ne v1, v0, :cond_0

    new-instance v0, Lp2/N;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lp2/O;-><init>(ILp2/c;)V

    invoke-virtual {v0, p1}, Lp2/O;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lp2/c;->H(Lp2/Q;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lp2/N;->n()Lp2/O;

    invoke-virtual {v0, p1}, Lp2/O;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lp2/c;->H(Lp2/Q;)Z

    return-void
.end method

.method public final K(Lp2/A;)V
    .locals 1

    iget-object v0, p0, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final L()V
    .locals 8

    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v2, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0xc

    const/4 v5, 0x0

    if-gez v4, :cond_2

    move v4, v5

    :cond_2
    sub-int/2addr v3, v1

    move v6, v3

    :cond_3
    if-ne v6, v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/j;

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_5
    move v1, v5

    :goto_1
    if-nez v1, :cond_6

    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/j;

    :cond_6
    invoke-static {v0}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-static {v0}, Lp2/c;->M(Lo2/j;)Lo2/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lp2/c;->j(Lo2/j;)V

    iget-object v2, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v6, v3, :cond_5

    :cond_7
    :goto_2
    return-void
.end method

.method public final N(Lo2/j;)V
    .locals 2

    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/j;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final O(Lo2/j;)V
    .locals 3

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/j;

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 4

    const-string v0, "body"

    invoke-virtual {p0, v0}, Lp2/c;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lp2/c;->d:Lo2/g;

    invoke-virtual {v1}, Lo2/j;->O()Lo2/j;

    move-result-object v2

    :goto_0
    const-string v3, "html"

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lo2/p;->p()Lo2/j;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lo2/j;->G(Ljava/lang/String;)Lo2/j;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lo2/j;->O()Lo2/j;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "frameset"

    invoke-virtual {v1, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lo2/p;->p()Lo2/j;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v0}, Lo2/j;->G(Ljava/lang/String;)Lo2/j;

    move-result-object v1

    :cond_4
    :goto_3
    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lp2/A;->j:Lp2/w;

    iput-object v0, p0, Lp2/c;->m:Lp2/A;

    return-void
.end method

.method public final Q()Z
    .locals 9

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    iget-object v1, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lp2/A;->j:Lp2/w;

    iput-object v2, p0, Lp2/c;->m:Lp2/A;

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_17

    if-nez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo2/j;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lo2/j;->h:Lp2/E;

    const-string v7, "http://www.w3.org/1999/xhtml"

    iget-object v8, v6, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, v6, Lp2/E;->g:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v6, ""

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v7, "caption"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v8, 0xe

    goto/16 :goto_3

    :sswitch_1
    const-string v7, "thead"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "tfoot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "tbody"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_4
    const-string v7, "table"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_6
    const-string v7, "head"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_7
    const-string v7, "body"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_8
    const-string v7, "tr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_9
    const-string v7, "th"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    const/4 v8, 0x5

    goto :goto_3

    :sswitch_a
    const-string v7, "td"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    const/4 v8, 0x4

    goto :goto_3

    :sswitch_b
    const-string v7, "colgroup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_3

    :cond_e
    const/4 v8, 0x3

    goto :goto_3

    :sswitch_c
    const-string v7, "select"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    const/4 v8, 0x2

    goto :goto_3

    :sswitch_d
    const-string v7, "template"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_3

    :cond_10
    move v8, v3

    goto :goto_3

    :sswitch_e
    const-string v7, "frameset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_3

    :cond_11
    move v8, v4

    :goto_3
    packed-switch v8, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sget-object v1, Lp2/A;->n:Lp2/d;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto/16 :goto_7

    :pswitch_1
    sget-object v1, Lp2/A;->p:Lp2/f;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto/16 :goto_7

    :pswitch_2
    sget-object v1, Lp2/A;->l:Lp2/y;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto/16 :goto_7

    :pswitch_3
    iget-object v1, p0, Lp2/c;->p:Lo2/j;

    if-nez v1, :cond_12

    sget-object v1, Lp2/A;->g:Lp2/t;

    goto :goto_4

    :cond_12
    sget-object v1, Lp2/A;->i:Lp2/v;

    :goto_4
    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :pswitch_4
    if-nez v5, :cond_13

    sget-object v1, Lp2/A;->h:Lp2/u;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :pswitch_5
    sget-object v1, Lp2/A;->j:Lp2/w;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :pswitch_6
    sget-object v1, Lp2/A;->q:Lp2/g;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :pswitch_7
    if-nez v5, :cond_13

    sget-object v1, Lp2/A;->r:Lp2/h;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :cond_13
    :goto_5
    if-eqz v5, :cond_14

    sget-object v1, Lp2/A;->j:Lp2/w;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Lp2/A;->o:Lp2/e;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :pswitch_9
    sget-object v1, Lp2/A;->s:Lp2/i;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :pswitch_a
    iget-object v1, p0, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/A;

    goto :goto_6

    :cond_15
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_16

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    goto :goto_7

    :cond_16
    new-instance v0, Lm2/g;

    const-string v1, "Bug: no template insertion mode on stack!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    sget-object v1, Lp2/A;->w:Lp2/m;

    iput-object v1, p0, Lp2/c;->m:Lp2/A;

    :cond_17
    :goto_7
    iget-object v1, p0, Lp2/c;->m:Lp2/A;

    if-eq v1, v0, :cond_18

    return v3

    :cond_18
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_e
        -0x4ec53386 -> :sswitch_d
        -0x3600cb04 -> :sswitch_c
        -0x25eb9b01 -> :sswitch_b
        0xe70 -> :sswitch_a
        0xe74 -> :sswitch_9
        0xe7e -> :sswitch_8
        0x2e39a2 -> :sswitch_7
        0x30cde0 -> :sswitch_6
        0x3107ab -> :sswitch_5
        0x6903bce -> :sswitch_4
        0x690e016 -> :sswitch_3
        0x692b2e2 -> :sswitch_2
        0x6937454 -> :sswitch_1
        0x20ef99e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lp2/c;->t:LW0/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lp2/c;->t:LW0/c;

    iget-object v0, v0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lo2/m;

    iput-object v0, p0, Lp2/c;->q:Lo2/m;

    return-void

    :cond_0
    new-instance v0, Lm2/g;

    const-string v1, "Bug: no noscript island state to restore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S(Lp2/N;)V
    .locals 3

    invoke-virtual {p0, p1}, Lp2/c;->x(Lp2/N;)Lo2/j;

    move-result-object p1

    new-instance v0, LW0/c;

    iget-object v1, p0, Lp2/c;->q:Lo2/m;

    const/16 v2, 0x10

    invoke-direct {v0, p1, v1, v2}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lp2/c;->t:LW0/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lp2/c;->q:Lo2/m;

    return-void
.end method

.method public final T(Lp2/N;)Lp2/E;
    .locals 4

    iget-object v0, p0, Lp2/c;->h:Lp2/G;

    iget-object v1, p1, Lp2/O;->d:LW0/c;

    invoke-virtual {v1}, LW0/c;->B()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lp2/O;->e:Ljava/lang/String;

    iget-object v2, p0, Lp2/c;->g:Lp2/C;

    iget-boolean v2, v2, Lp2/C;->a:Z

    const-string v3, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1, p1, v3, v2}, Lp2/G;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lp2/E;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lo2/j;)Lo2/j;
    .locals 4

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    if-ne v3, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/j;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final b(Lo2/j;)V
    .locals 6

    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0xd

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_4

    iget-object v3, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lo2/j;->h:Lp2/E;

    iget-object v4, v4, Lp2/E;->g:Ljava/lang/String;

    iget-object v5, v3, Lo2/j;->h:Lp2/E;

    iget-object v5, v5, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lo2/j;->e()Lo2/b;

    move-result-object v4

    invoke-virtual {v3}, Lo2/j;->e()Lo2/b;

    move-result-object v3

    invoke-virtual {v4, v3}, Lo2/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object p1, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lp2/c;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lp2/c;->r:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public final varargs d([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/j;

    iget-object v3, v2, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->e:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    invoke-static {v3, p1}, Ln2/e;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "html"

    invoke-virtual {v2, v3}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "table"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp2/c;->d([Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 2

    const-string v0, "tr"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp2/c;->d([Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lp2/N;Ljava/lang/String;Z)Lo2/j;
    .locals 8

    iget-object v0, p1, Lp2/O;->g:Lo2/b;

    sget-object v1, Lp2/C;->d:Lp2/C;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo2/b;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    if-nez p3, :cond_2

    iget-object v3, p0, Lp2/c;->g:Lp2/C;

    iget-boolean v3, v3, Lp2/C;->b:Z

    if-nez v3, :cond_2

    move v3, v2

    :goto_0
    iget v4, v0, Lo2/b;->e:I

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lo2/b;->f:[Ljava/lang/String;

    invoke-static {v4}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lp2/c;->g:Lp2/C;

    iget v4, v0, Lo2/b;->e:I

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v3, v3, Lp2/C;->b:Z

    move v4, v2

    :cond_4
    iget v5, v0, Lo2/b;->e:I

    if-ge v2, v5, :cond_7

    iget-object v5, v0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v5, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    :goto_1
    iget v7, v0, Lo2/b;->e:I

    if-ge v6, v7, :cond_4

    iget-object v7, v0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-eqz v3, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    :goto_2
    if-eqz v7, :cond_6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v6}, Lo2/b;->l(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    move v2, v4

    :goto_3
    if-lez v2, :cond_8

    iget-object v2, p1, Lp2/O;->e:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Dropped duplicate attribute(s) in tag [%s]"

    invoke-virtual {p0, v3, v2}, Lp2/c;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz p3, :cond_9

    move-object v2, v1

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lp2/c;->g:Lp2/C;

    :goto_4
    invoke-virtual {p1, v2}, Lp2/O;->j(Lp2/C;)V

    :cond_a
    :goto_5
    iget-object v2, p1, Lp2/O;->d:LW0/c;

    invoke-virtual {v2}, LW0/c;->B()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lp2/O;->e:Ljava/lang/String;

    if-eqz p3, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lp2/c;->g:Lp2/C;

    :goto_6
    iget-object p3, p0, Lp2/c;->h:Lp2/G;

    iget-boolean v1, v1, Lp2/C;->a:Z

    invoke-virtual {p3, v2, p1, p2, v1}, Lp2/G;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lp2/E;

    move-result-object p1

    iget-object p2, p1, Lp2/E;->g:Ljava/lang/String;

    const-string p3, "form"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Lo2/m;

    invoke-direct {p2, p1, v0}, Lo2/m;-><init>(Lp2/E;Lo2/b;)V

    return-object p2

    :cond_c
    new-instance p2, Lo2/j;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, v0}, Lo2/j;-><init>(Lp2/E;Ljava/lang/String;Lo2/b;)V

    return-object p2
.end method

.method public final h()Lo2/j;
    .locals 2

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/j;

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lo2/j;->h:Lp2/E;

    iget-object p1, p1, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j(Lo2/j;)V
    .locals 13

    iget-object v0, p0, Lp2/c;->a:Lp2/D;

    iget v0, v0, Lp2/D;->i:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    iget-object v3, p0, Lp2/c;->e:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    move-result-object v1

    iget-object v4, p0, Lp2/c;->p:Lo2/j;

    if-ne v1, v4, :cond_1

    iput-object v2, p0, Lp2/c;->p:Lo2/j;

    :cond_1
    iget-object v4, p0, Lp2/c;->q:Lo2/m;

    if-ne v1, v4, :cond_2

    iput-object v2, p0, Lp2/c;->q:Lo2/m;

    :cond_2
    invoke-virtual {p0, v1}, Lp2/c;->N(Lo2/j;)V

    const-string v4, "template"

    invoke-virtual {v1, v4}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lp2/c;->c()V

    iget-object v1, p0, Lp2/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lp2/c;->G()V

    :cond_3
    invoke-virtual {p0}, Lp2/c;->Q()Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lp2/c;->t:LW0/c;

    if-eqz v4, :cond_0

    iget-object v4, v4, LW0/c;->f:Ljava/lang/Object;

    check-cast v4, Lo2/j;

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lp2/c;->R()V

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lp2/c;->q:Lo2/m;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->e:Ljava/lang/String;

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lo2/j;->h:Lp2/E;

    iget-object v0, v0, Lp2/E;->g:Ljava/lang/String;

    sget-object v1, Lp2/c;->A:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lp2/c;->q:Lo2/m;

    iget-object v0, v0, Lo2/m;->n:Lq2/d;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lp2/c;->a:Lp2/D;

    iget-object v0, v0, Lp2/D;->f:Lp2/B;

    invoke-virtual {v0}, Lp2/B;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Lo2/p;->m(Ljava/lang/String;)Z

    move-result v1

    iget-object v4, p1, Lo2/j;->h:Lp2/E;

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lo2/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v4, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, v0}, Lo2/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lp2/E;->f:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid xmlns attribute [%s] on tag [%s]"

    invoke-virtual {p0, v1, v0}, Lp2/c;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lp2/c;->d:Lo2/g;

    :goto_2
    iget-boolean v1, p0, Lp2/c;->x:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    iget-object v1, v1, Lp2/E;->g:Ljava/lang/String;

    sget-object v4, Lp2/b;->I:[Ljava/lang/String;

    invoke-static {v1, v4}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lp2/c;->p(Ljava/lang/String;)Lo2/j;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    iget-object v5, v0, Lo2/p;->e:Lo2/j;

    if-eqz v5, :cond_9

    move v6, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v0}, Lp2/c;->a(Lo2/j;)Lo2/j;

    move-result-object v5

    :goto_3
    move v6, v4

    goto :goto_4

    :cond_a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo2/j;

    goto :goto_3

    :goto_4
    if-eqz v6, :cond_14

    invoke-static {v0}, LS1/e;->r(Ljava/lang/Object;)V

    iget-object v5, v0, Lo2/p;->e:Lo2/j;

    invoke-static {v5}, LS1/e;->r(Ljava/lang/Object;)V

    iget-object v5, p1, Lo2/p;->e:Lo2/j;

    iget-object v6, v0, Lo2/p;->e:Lo2/j;

    if-ne v5, v6, :cond_b

    invoke-virtual {p1}, Lo2/p;->z()V

    :cond_b
    iget-object v5, v0, Lo2/p;->e:Lo2/j;

    invoke-virtual {v0}, Lo2/p;->C()I

    move-result v0

    new-array v6, v1, [Lo2/p;

    aput-object p1, v6, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v7, v6, v4

    if-eqz v7, :cond_13

    invoke-virtual {v5, v7}, Lo2/p;->E(Lo2/p;)V

    invoke-virtual {v5}, Lo2/j;->k()Ljava/util/List;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v8}, Lo2/p;->x()Lo2/j;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v9, v8, Lo2/j;->i:Lo2/i;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ne v9, v1, :cond_11

    invoke-virtual {v8}, Lo2/j;->k()Ljava/util/List;

    move-result-object v9

    move v10, v1

    :goto_5
    add-int/lit8 v11, v10, -0x1

    if-lez v10, :cond_d

    aget-object v10, v6, v11

    move-object v12, v9

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eq v10, v12, :cond_c

    goto :goto_8

    :cond_c
    move v10, v11

    goto :goto_5

    :cond_d
    iget-object v9, v8, Lo2/j;->i:Lo2/i;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    move v10, v4

    :goto_6
    if-ge v10, v9, :cond_e

    iget-object v11, v8, Lo2/j;->i:Lo2/i;

    invoke-virtual {v11, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo2/p;

    iput-object v2, v11, Lo2/p;->e:Lo2/j;

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_e
    iget-object v2, v8, Lo2/j;->i:Lo2/i;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_7
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_10

    aget-object v1, v6, v0

    iget-object v2, v1, Lo2/p;->e:Lo2/j;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Lo2/p;->A(Lo2/p;)V

    :cond_f
    iput-object v5, v1, Lo2/p;->e:Lo2/j;

    move v1, v0

    goto :goto_7

    :cond_10
    iget-object v0, v5, Lo2/j;->i:Lo2/i;

    iput-boolean v4, v0, Lo2/i;->e:Z

    goto :goto_9

    :cond_11
    :goto_8
    aget-object v1, v6, v4

    iget-object v2, v1, Lo2/p;->e:Lo2/j;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v1}, Lo2/p;->A(Lo2/p;)V

    :cond_12
    iput-object v5, v1, Lo2/p;->e:Lo2/j;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v0, v5, Lo2/j;->i:Lo2/i;

    iput-boolean v4, v0, Lo2/i;->e:Z

    goto :goto_9

    :cond_13
    new-instance p1, Lm2/g;

    const-string v0, "Array must not contain any null objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-virtual {v5, p1}, Lo2/j;->F(Lo2/p;)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0, p1}, Lo2/j;->F(Lo2/p;)V

    :goto_9
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lp2/c;->t:LW0/c;

    if-eqz v0, :cond_5

    iget-object v0, v0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Lo2/j;

    iget-object v1, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {p0, v0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p0}, Lp2/c;->R()V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_3

    iget-object v0, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {p0, v0}, Lp2/c;->m(Lp2/A;)V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lp2/c;->R()V

    return-void

    :cond_5
    new-instance v0, Lm2/g;

    const-string v1, "Bug: noscript fallback closed with no island state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs l(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lp2/c;->a:Lp2/D;

    iget-object v0, v0, Lp2/D;->f:Lp2/B;

    invoke-virtual {v0}, Lp2/B;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LW0/c;

    iget-object v2, p0, Lp2/c;->b:Lp2/a;

    invoke-direct {v1, v2, p1, p2}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final m(Lp2/A;)V
    .locals 5

    iget-object v0, p0, Lp2/c;->a:Lp2/D;

    iget-object v0, v0, Lp2/D;->f:Lp2/B;

    invoke-virtual {v0}, Lp2/B;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp2/c;->a:Lp2/D;

    iget-object v0, v0, Lp2/D;->f:Lp2/B;

    new-instance v1, LW0/c;

    iget-object v2, p0, Lp2/c;->b:Lp2/a;

    iget-object v3, p0, Lp2/c;->f:Lp2/Q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lp2/c;->f:Lp2/Q;

    filled-new-array {v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Unexpected %s token [%s] when in state [%s]"

    invoke-direct {v1, v2, v3, p1}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v0, v0, Lo2/j;->h:Lp2/E;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lp2/E;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, p1, v0}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    iget-object v0, v0, Lo2/j;->h:Lp2/E;

    invoke-virtual {v0, p1}, Lp2/E;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    goto :goto_0
.end method

.method public final p(Ljava/lang/String;)Lo2/j;
    .locals 5

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/j;

    iget-object v3, v2, Lo2/j;->h:Lp2/E;

    iget-object v4, v3, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lp2/E;->e:Ljava/lang/String;

    const-string v4, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    iget-object v4, v3, Lo2/j;->h:Lp2/E;

    iget-object v4, v4, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lp2/E;->b(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final s(ILjava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    iget-object v4, v3, Lo2/j;->h:Lp2/E;

    const-string v5, "http://www.w3.org/1999/xhtml"

    iget-object v6, v4, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, v3, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {v4, p1}, Lp2/E;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final t(Lp2/I;Z)V
    .locals 5

    iget-object v0, p1, Lp2/I;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const p2, 0xfffd

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lp2/I;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0}, LW0/c;->y()V

    iput-object p2, v0, LW0/c;->g:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lp2/c;->d:Lo2/g;

    :goto_2
    invoke-virtual {p0, p1, p2}, Lp2/c;->u(Lp2/I;Lo2/j;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp2/c;->f:Lp2/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/c;->m:Lp2/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lp2/I;Lo2/j;)V
    .locals 2

    iget-object v0, p1, Lp2/I;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object v0

    instance-of p1, p1, Lp2/H;

    if-eqz p1, :cond_0

    new-instance p1, Lo2/c;

    invoke-direct {p1, v0}, Lo2/o;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lo2/j;->h:Lp2/E;

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Lp2/E;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lo2/e;

    invoke-direct {p1, v0}, Lo2/o;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lo2/x;

    invoke-direct {p1, v0}, Lo2/o;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p1}, Lo2/j;->F(Lo2/p;)V

    return-void
.end method

.method public final v(Lp2/J;)V
    .locals 1

    invoke-virtual {p0}, Lp2/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lp2/c;->h()Lo2/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp2/c;->d:Lo2/g;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lp2/c;->w(Lp2/J;Lo2/j;)V

    return-void
.end method

.method public final w(Lp2/J;Lo2/j;)V
    .locals 1

    new-instance v0, Lo2/d;

    iget-object p1, p1, Lp2/J;->d:LW0/c;

    invoke-virtual {p1}, LW0/c;->B()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo2/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo2/j;->F(Lo2/p;)V

    return-void
.end method

.method public final x(Lp2/N;)Lo2/j;
    .locals 6

    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lp2/c;->g(Lp2/N;Ljava/lang/String;Z)Lo2/j;

    move-result-object v0

    iget-object v1, v0, Lo2/j;->h:Lp2/E;

    invoke-virtual {p0, v0}, Lp2/c;->j(Lo2/j;)V

    iget-boolean p1, p1, Lp2/O;->f:Z

    if-eqz p1, :cond_2

    iget p1, v1, Lp2/E;->h:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v1, Lp2/E;->h:I

    invoke-virtual {v1}, Lp2/E;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v1, Lp2/E;->h:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lp2/E;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lp2/c;->c:Lp2/T;

    sget-object v2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    iget-object p1, p0, Lp2/c;->c:Lp2/T;

    iget-object v2, p0, Lp2/c;->v:Lp2/M;

    invoke-virtual {v2}, Lp2/O;->n()Lp2/O;

    iget-object v3, v1, Lp2/E;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lp2/O;->k(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lp2/T;->g(Lp2/Q;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lp2/c;->c:Lp2/T;

    iget-object v2, v1, Lp2/E;->g:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lp2/T;->b:Lp2/B;

    invoke-virtual {v3}, Lp2/B;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, LW0/c;

    iget-object p1, p1, Lp2/T;->a:Lp2/a;

    const-string v5, "Tag [%s] cannot be self-closing; not a void tag"

    invoke-direct {v4, p1, v5, v2}, LW0/c;-><init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lp2/E;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    :cond_3
    return-object v0
.end method

.method public final y(Lp2/N;)Lo2/j;
    .locals 2

    const-string v0, "http://www.w3.org/1999/xhtml"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lp2/c;->g(Lp2/N;Ljava/lang/String;Z)Lo2/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/c;->j(Lo2/j;)V

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    return-object p1
.end method

.method public final z(Lp2/N;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lp2/c;->g(Lp2/N;Ljava/lang/String;Z)Lo2/j;

    move-result-object p2

    invoke-virtual {p0, p2}, Lp2/c;->j(Lo2/j;)V

    iget-boolean p1, p1, Lp2/O;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p2, Lo2/j;->h:Lp2/E;

    iget p2, p1, Lp2/E;->h:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p1, Lp2/E;->h:I

    invoke-virtual {p0}, Lp2/c;->E()Lo2/j;

    :cond_0
    return-void
.end method
