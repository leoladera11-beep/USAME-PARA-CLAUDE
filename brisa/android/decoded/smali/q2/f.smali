.class public final Lq2/f;
.super Lq2/o;
.source "SourceFile"


# static fields
.field public static b:Z = false


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq2/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lq2/f;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lq2/o;->a()I

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const/4 v0, -0x1

    return v0

    :sswitch_2
    const/4 v0, 0x1

    return v0

    :sswitch_3
    const/16 v0, 0xa

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lo2/j;Lo2/j;)Z
    .locals 8

    iget v0, p0, Lq2/f;->a:I

    packed-switch v0, :pswitch_data_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    instance-of p1, p2, Lo2/s;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const-class p1, Lo2/x;

    invoke-virtual {p2, p1}, Lo2/j;->N(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/x;

    new-instance v2, Lo2/s;

    iget-object v3, p2, Lo2/j;->h:Lp2/E;

    iget-object v4, v3, Lp2/E;->f:Ljava/lang/String;

    iget-object v3, v3, Lp2/E;->e:Ljava/lang/String;

    new-instance v5, Lp2/G;

    sget-object v6, Lp2/G;->d:Lp2/G;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lp2/G;-><init>(Lp2/G;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v4, v7, v3, v0}, Lp2/G;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lp2/E;

    move-result-object v3

    invoke-virtual {p2}, Lo2/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lo2/j;->e()Lo2/b;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lo2/j;-><init>(Lp2/E;Ljava/lang/String;Lo2/b;)V

    invoke-virtual {v1, v2}, Lo2/p;->B(Lo2/j;)V

    invoke-virtual {v2, v1}, Lo2/j;->F(Lo2/p;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_1
    instance-of v0, p1, Lo2/g;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo2/j;->O()Lo2/j;

    move-result-object p1

    :cond_3
    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    return p1

    :pswitch_2
    iget-object p1, p2, Lo2/p;->e:Lo2/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    instance-of v1, p1, Lo2/g;

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {p1}, Lo2/j;->O()Lo2/j;

    move-result-object p1

    move v1, v0

    :goto_4
    const/4 v2, 0x1

    if-eqz p1, :cond_8

    iget-object v3, p1, Lo2/j;->h:Lp2/E;

    iget-object v3, v3, Lp2/E;->g:Ljava/lang/String;

    iget-object v4, p2, Lo2/j;->h:Lp2/E;

    iget-object v4, v4, Lp2/E;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-le v1, v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lo2/p;->p()Lo2/j;

    move-result-object p1

    goto :goto_4

    :cond_8
    :goto_5
    if-ne v1, v2, :cond_9

    move v0, v2

    :cond_9
    :goto_6
    return v0

    :pswitch_3
    iget-object p1, p2, Lo2/p;->e:Lo2/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    instance-of v1, p1, Lo2/g;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    if-nez p1, :cond_a

    new-instance p1, Lq2/d;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_8

    :cond_a
    invoke-virtual {p1}, Lo2/j;->J()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lq2/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/j;

    if-eq v3, p2, :cond_b

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move-object p1, v2

    :goto_8
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    move v0, v1

    :cond_d
    return v0

    :pswitch_4
    iget-object p1, p2, Lo2/p;->e:Lo2/j;

    if-eqz p1, :cond_10

    instance-of v0, p1, Lo2/g;

    if-nez v0, :cond_10

    iget-object v0, p1, Lo2/j;->i:Lo2/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    if-ltz v0, :cond_f

    iget-object v2, p1, Lo2/j;->i:Lo2/i;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/p;

    instance-of v3, v2, Lo2/j;

    if-eqz v3, :cond_e

    check-cast v2, Lo2/j;

    goto :goto_a

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-ne p2, v2, :cond_10

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    :goto_b
    return v1

    :pswitch_5
    iget-object p1, p2, Lo2/p;->e:Lo2/j;

    if-eqz p1, :cond_11

    instance-of v0, p1, Lo2/g;

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lo2/j;->O()Lo2/j;

    move-result-object p1

    if-ne p2, p1, :cond_11

    const/4 p1, 0x1

    goto :goto_c

    :cond_11
    const/4 p1, 0x0

    :goto_c
    return p1

    :pswitch_6
    invoke-virtual {p2}, Lo2/p;->l()Lo2/p;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_14

    instance-of p2, p1, Lo2/x;

    if-eqz p2, :cond_12

    move-object p2, p1

    check-cast p2, Lo2/x;

    invoke-virtual {p2}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ln2/e;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_e

    :cond_12
    instance-of p2, p1, Lo2/d;

    if-nez p2, :cond_13

    instance-of p2, p1, Lo2/h;

    if-nez p2, :cond_13

    :goto_e
    const/4 p1, 0x0

    goto :goto_f

    :cond_13
    invoke-virtual {p1}, Lo2/p;->q()Lo2/p;

    move-result-object p1

    goto :goto_d

    :cond_14
    const/4 p1, 0x1

    :goto_f
    return p1

    :pswitch_7
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lq2/f;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ">"

    return-object v0

    :pswitch_0
    const-string v0, ":matchText"

    return-object v0

    :pswitch_1
    const-string v0, ":root"

    return-object v0

    :pswitch_2
    const-string v0, ":only-of-type"

    return-object v0

    :pswitch_3
    const-string v0, ":only-child"

    return-object v0

    :pswitch_4
    const-string v0, ":last-child"

    return-object v0

    :pswitch_5
    const-string v0, ":first-child"

    return-object v0

    :pswitch_6
    const-string v0, ":empty"

    return-object v0

    :pswitch_7
    const-string v0, "*"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
