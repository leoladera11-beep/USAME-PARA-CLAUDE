.class public final enum Lp2/f1;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "DoctypeInternalSubset"

    const/16 v1, 0x43

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 11

    iget-object v0, p1, Lp2/T;->m:Lp2/K;

    iget-object v0, v0, Lp2/K;->h:LW0/c;

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v3

    if-eqz v3, :cond_f

    const/16 v4, 0x22

    if-eq v3, v4, :cond_d

    const/16 v4, 0x27

    if-eq v3, v4, :cond_b

    const/16 v4, 0x2d

    const/4 v5, 0x3

    if-eq v3, v4, :cond_a

    const/16 v4, 0x3c

    const/4 v6, 0x4

    const/16 v7, 0x3f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x3e

    if-eq v3, v7, :cond_7

    const/16 v5, 0x5d

    sget-object v6, Lp2/l1;->e:Lp2/e0;

    if-eq v3, v5, :cond_2

    const v4, 0xffff

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1}, Lp2/T;->i()V

    invoke-virtual {p1, v6}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    if-nez v2, :cond_6

    invoke-virtual {p2}, Lp2/a;->e()V

    iget v5, p2, Lp2/a;->h:I

    iget v7, p2, Lp2/a;->i:I

    iget-object v8, p2, Lp2/a;->g:[C

    move v9, v5

    :goto_2
    if-ge v9, v7, :cond_3

    aget-char v10, v8, v9

    invoke-static {v10}, Ln2/e;->i(I)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    iput v9, p2, Lp2/a;->h:I

    if-le v9, v5, :cond_4

    iget-object v7, p2, Lp2/a;->g:[C

    iget-object v8, p2, Lp2/a;->e:[Ljava/lang/String;

    sub-int/2addr v9, v5

    invoke-static {v7, v8, v5, v9}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const-string v5, ""

    :goto_3
    invoke-virtual {p2, v4}, Lp2/a;->B(C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lp2/a;->c()V

    invoke-virtual {p1}, Lp2/T;->i()V

    invoke-virtual {p1, v6}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    invoke-virtual {v0, v5}, LW0/c;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    if-ne v2, v6, :cond_0

    invoke-virtual {p2, v4}, Lp2/a;->B(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lp2/a;->c()V

    invoke-virtual {v0, v4}, LW0/c;->c(C)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    if-nez v2, :cond_0

    const-string v3, "!--"

    invoke-virtual {p2, v3}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v3}, LW0/c;->d(Ljava/lang/String;)V

    move v2, v5

    goto/16 :goto_1

    :cond_9
    const-string v3, "?"

    invoke-virtual {p2, v3}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v7}, LW0/c;->c(C)V

    move v2, v6

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    if-ne v2, v5, :cond_0

    const-string v3, "->"

    invoke-virtual {p2, v3}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, LW0/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    const/4 v3, 0x1

    if-nez v2, :cond_c

    :goto_4
    move v2, v3

    goto/16 :goto_1

    :cond_c
    if-ne v2, v3, :cond_0

    :goto_5
    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    const/4 v3, 0x2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_f
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    const v3, 0xfffd

    invoke-virtual {v0, v3}, LW0/c;->c(C)V

    goto/16 :goto_1
.end method
