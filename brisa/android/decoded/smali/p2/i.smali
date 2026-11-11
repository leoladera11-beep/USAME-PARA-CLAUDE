.class public final enum Lp2/i;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InSelect"

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 13

    iget v0, p1, Lp2/Q;->a:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const-string v2, "template"

    sget-object v3, Lp2/A;->h:Lp2/u;

    const-string v4, "html"

    const/4 v5, 0x1

    const-string v6, "select"

    const-string v7, "optgroup"

    const-string v8, "http://www.w3.org/1999/xhtml"

    const-string v9, "option"

    if-eq v0, v5, :cond_d

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v0, v11, :cond_4

    if-eq v0, v10, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_0
    invoke-virtual {p2, v4, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_1
    return v5

    :cond_2
    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v1}, Lp2/c;->t(Lp2/I;Z)V

    return v5

    :cond_3
    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v5

    :cond_4
    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v12, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v10, v12

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v10, v11

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v10, v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v10, v1

    :cond_8
    :goto_1
    packed-switch v10, :pswitch_data_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :pswitch_0
    invoke-virtual {p2, v9, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp2/c;->a(Lo2/j;)Lo2/j;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp2/c;->a(Lo2/j;)Lo2/j;

    move-result-object p1

    invoke-virtual {p1, v7}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, v9}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_9
    invoke-virtual {p2, v7, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    return v5

    :cond_a
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :pswitch_1
    invoke-virtual {p2, v0}, Lp2/c;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_b
    invoke-virtual {p2, v0}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    return v5

    :pswitch_2
    invoke-virtual {p2, v9, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    return v5

    :cond_c
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v5

    :pswitch_3
    invoke-virtual {v3, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_d
    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object p1, Lp2/A;->j:Lp2/w;

    invoke-virtual {p1, v0, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_e
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p2, v9, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2, v9}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_f
    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v5

    :cond_10
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p2, v9, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p2, v9}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_11
    invoke-virtual {p2, v7, v8}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p2, v7}, Lp2/c;->I(Ljava/lang/String;)Z

    :cond_12
    invoke-virtual {p2, v0}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v5

    :cond_13
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2, v6}, Lp2/c;->I(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_14
    sget-object v4, Lp2/b;->N:[Ljava/lang/String;

    invoke-static {v10, v4}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2, v6}, Lp2/c;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    :cond_15
    invoke-virtual {p2, v6}, Lp2/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/c;->Q()Z

    invoke-virtual {p2, v6}, Lp2/c;->r(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p2, v0}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_16
    const-string v4, "script"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_2

    :cond_17
    const-string p1, "noscript"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p2, v0}, Lp2/c;->S(Lp2/N;)V

    return v5

    :cond_18
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_19
    :goto_2
    invoke-virtual {v3, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_1a
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_3
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
