.class public final enum Lp2/m;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InFrameset"

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 7

    invoke-static {p1}, Lp2/A;->a(Lp2/Q;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lp2/I;

    invoke-virtual {p2, p1, v2}, Lp2/c;->t(Lp2/I;Z)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lp2/J;

    invoke-virtual {p2, p1}, Lp2/c;->v(Lp2/J;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lp2/Q;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->e()Z

    move-result v0

    const-string v3, "html"

    const-string v4, "frameset"

    if-eqz v0, :cond_7

    check-cast p1, Lp2/N;

    invoke-virtual {p1}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v6, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v6, v2

    :goto_0
    packed-switch v6, :pswitch_data_0

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :pswitch_0
    sget-object v0, Lp2/A;->h:Lp2/u;

    invoke-virtual {v0, p1, p2}, Lp2/u;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p2, p1}, Lp2/c;->y(Lp2/N;)Lo2/j;

    return v1

    :pswitch_2
    sget-object v0, Lp2/A;->j:Lp2/w;

    invoke-virtual {v0, p1, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p2, p1}, Lp2/c;->x(Lp2/N;)Lo2/j;

    return v1

    :cond_7
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result v0

    const-string v5, "http://www.w3.org/1999/xhtml"

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lp2/M;

    invoke-virtual {v0}, Lp2/O;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2, v4, v5}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    :cond_8
    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    invoke-virtual {p2, v4, v5}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lp2/A;->x:Lp2/o;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    return v1

    :cond_9
    invoke-virtual {p1}, Lp2/Q;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2, v3, v5}, Lp2/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    :cond_a
    return v1

    :cond_b
    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x5d2a96d -> :sswitch_1
        0x47177da7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
