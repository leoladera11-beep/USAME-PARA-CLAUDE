.class public final enum Lp2/U;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "TagName"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 12

    invoke-virtual {p2}, Lp2/a;->e()V

    iget v0, p2, Lp2/a;->h:I

    iget v1, p2, Lp2/a;->i:I

    iget-object v2, p2, Lp2/a;->g:[C

    move v3, v0

    :goto_0
    const/16 v4, 0x3e

    const/16 v5, 0x2f

    const/16 v6, 0x20

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xa

    const/16 v10, 0x9

    if-ge v3, v1, :cond_1

    aget-char v11, v2, v3

    if-eq v11, v10, :cond_0

    if-eq v11, v9, :cond_0

    if-eq v11, v8, :cond_0

    if-eq v11, v7, :cond_0

    if-eq v11, v6, :cond_0

    if-eq v11, v5, :cond_0

    if-eq v11, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, v3}, Lp2/a;->t(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0, v3}, Lp2/a;->t(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {v1, v0}, Lp2/O;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v6, :cond_5

    if-eq p2, v5, :cond_4

    sget-object v0, Lp2/l1;->e:Lp2/e0;

    if-eq p2, v4, :cond_3

    const v1, 0xffff

    if-eq p2, v1, :cond_2

    if-eq p2, v10, :cond_5

    if-eq p2, v9, :cond_5

    if-eq p2, v8, :cond_5

    if-eq p2, v7, :cond_5

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lp2/O;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v0}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_4
    sget-object p2, Lp2/l1;->T:Lp2/D0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    sget-object p2, Lp2/l1;->L:Lp2/u0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_6
    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    sget-object p2, Lp2/l1;->x0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lp2/O;->i(Ljava/lang/String;)V

    return-void
.end method
