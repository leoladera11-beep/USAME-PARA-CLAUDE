.class public final enum Lp2/e;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InColumnGroup"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 10

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v1}, Lp2/c;->t(Lp2/I;Z)V

    return v2

    :cond_0
    iget v0, p1, Lp2/Q;->a:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    if-eqz v0, :cond_c

    const-string v3, "template"

    const-string v4, "html"

    const/4 v5, 0x2

    sget-object v6, Lp2/A;->h:Lp2/u;

    if-eq v0, v2, :cond_8

    const-string v7, "http://www.w3.org/1999/xhtml"

    if-eq v0, v5, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lp2/e;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2, v4, v7}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lp2/e;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_3
    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v2

    :cond_4
    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "colgroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2}, Lp2/e;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p2, v0, v7}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v1

    :cond_6
    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    sget-object p1, Lp2/A;->l:Lp2/y;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v2

    :cond_7
    invoke-virtual {v6, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    return v2

    :cond_8
    move-object v0, p1

    check-cast v0, Lp2/N;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v1, v9

    goto :goto_1

    :sswitch_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "col"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lp2/e;->e(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :pswitch_0
    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p2, v0}, Lp2/c;->y(Lp2/N;)Lo2/j;

    return v2

    :pswitch_2
    invoke-virtual {v6, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    return v2

    :cond_c
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        0x18180 -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lp2/Q;Lp2/c;)Z
    .locals 2

    const-string v0, "colgroup"

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p2, v0, v1}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    sget-object v0, Lp2/A;->l:Lp2/y;

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    const/4 p1, 0x1

    return p1
.end method
