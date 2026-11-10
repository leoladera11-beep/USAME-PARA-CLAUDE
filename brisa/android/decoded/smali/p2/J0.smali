.class public final enum Lp2/J0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Comment"

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 6

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    const v2, 0xffff

    if-eq v0, v2, :cond_2

    iget-object p1, p1, Lp2/T;->n:Lp2/J;

    invoke-virtual {p2}, Lp2/a;->e()V

    iget v0, p2, Lp2/a;->h:I

    iget v2, p2, Lp2/a;->i:I

    iget-object v3, p2, Lp2/a;->g:[C

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v3, v4

    if-eq v5, v1, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2, v0, v4}, Lp2/a;->t(II)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lp2/J;->d:LW0/c;

    invoke-virtual {p1, p2}, LW0/c;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->h()V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    sget-object p2, Lp2/l1;->a0:Lp2/K0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p2}, Lp2/a;->c()V

    iget-object p1, p1, Lp2/T;->n:Lp2/J;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lp2/J;->g(C)V

    return-void
.end method
