.class public final synthetic LH0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LH0/d;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget v0, p0, LH0/d;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lz0/d;

    check-cast p2, Lz0/d;

    iget p2, p2, Lz0/d;->b:I

    iget p1, p1, Lz0/d;->b:I

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, [B

    check-cast p2, [B

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    sub-int p1, v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    return p1

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_2
    sub-int/2addr p2, p1

    return p2

    :pswitch_2
    check-cast p1, LX/n;

    check-cast p2, LX/n;

    iget p1, p1, LX/n;->c:F

    iget p2, p2, LX/n;->c:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, LX/n;

    check-cast p2, LX/n;

    iget p1, p1, LX/n;->a:I

    iget p2, p2, LX/n;->a:I

    sub-int/2addr p1, p2

    return p1

    :pswitch_4
    check-cast p1, LW/n;

    check-cast p2, LW/n;

    iget-boolean v0, p1, LW/n;->i:Z

    iget v1, p1, LW/n;->n:I

    if-eqz v0, :cond_3

    iget-boolean v0, p1, LW/n;->l:Z

    if-eqz v0, :cond_3

    sget-object v0, LW/o;->k:Lu1/y0;

    goto :goto_3

    :cond_3
    sget-object v0, LW/o;->k:Lu1/y0;

    invoke-virtual {v0}, Lu1/y0;->a()Lu1/y0;

    move-result-object v0

    :goto_3
    iget-object v2, p1, LW/n;->j:LW/j;

    iget-boolean v2, v2, LG/w0;->F:Z

    sget-object v3, Lu1/A;->a:Lu1/y;

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, LW/n;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, LW/o;->k:Lu1/y0;

    invoke-virtual {v5}, Lu1/y0;->a()Lu1/y0;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lu1/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v3

    :cond_4
    iget-boolean v2, p1, LW/n;->C:Z

    iget-boolean v4, p2, LW/n;->C:Z

    invoke-virtual {v3, v2, v4}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v2

    iget v3, p1, LW/n;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, LW/n;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v2

    iget-boolean v3, p1, LW/n;->y:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p1, LW/n;->A:Z

    if-eqz v3, :cond_5

    iget v3, p1, LW/n;->B:I

    iget v4, p2, LW/n;->B:I

    invoke-virtual {v2, v3, v4}, Lu1/A;->a(II)Lu1/A;

    move-result-object v2

    :cond_5
    iget-boolean p1, p1, LW/n;->z:Z

    iget-boolean v3, p2, LW/n;->z:Z

    invoke-virtual {v2, p1, v3}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p2, p2, LW/n;->n:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object p1

    invoke-virtual {p1}, Lu1/A;->e()I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, LW/n;

    check-cast p2, LW/n;

    invoke-static {p1, p2}, LW/n;->c(LW/n;LW/n;)I

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW/k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LW/k;

    invoke-virtual {p1, p2}, LW/k;->c(LW/k;)I

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW/f;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LW/f;

    invoke-virtual {p1, p2}, LW/f;->c(LW/f;)I

    move-result p1

    return p1

    :pswitch_8
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    new-instance v0, LH0/d;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/n;

    new-instance v1, LH0/d;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LH0/d;-><init>(I)V

    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/n;

    invoke-static {v0, v1}, LW/n;->c(LW/n;LW/n;)I

    move-result v0

    invoke-static {v0}, Lu1/y;->f(I)Lu1/A;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    new-instance v1, LH0/d;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LH0/d;-><init>(I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW/n;

    new-instance v1, LH0/d;

    invoke-direct {v1, v2}, LH0/d;-><init>(I)V

    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LW/n;

    new-instance v1, LH0/d;

    invoke-direct {v1, v2}, LH0/d;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object p1

    invoke-virtual {p1}, Lu1/A;->e()I

    move-result p1

    return p1

    :pswitch_9
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LW/g;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LW/g;

    iget p1, p1, LW/g;->j:I

    iget p2, p2, LW/g;->j:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int v1, p1, p2

    :cond_8
    :goto_4
    return v1

    :pswitch_b
    check-cast p1, LG/x;

    check-cast p2, LG/x;

    iget p2, p2, LG/x;->k:I

    iget p1, p1, LG/x;->k:I

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    goto/16 :goto_2

    :pswitch_d
    check-cast p1, LO0/I;

    check-cast p2, LO0/I;

    iget v0, p2, LO0/I;->a:I

    iget v1, p1, LO0/I;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p2, LO0/I;->c:Ljava/lang/String;

    iget-object v1, p1, LO0/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object p2, p2, LO0/I;->d:Ljava/lang/String;

    iget-object p1, p1, LO0/I;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_5
    return v0

    :pswitch_e
    check-cast p1, LO0/I;

    check-cast p2, LO0/I;

    iget v0, p2, LO0/I;->b:I

    iget v1, p1, LO0/I;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, p1, LO0/I;->c:Ljava/lang/String;

    iget-object v1, p2, LO0/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object p1, p1, LO0/I;->d:Ljava/lang/String;

    iget-object p2, p2, LO0/I;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_6
    return v0

    :pswitch_f
    check-cast p1, LL0/h;

    check-cast p2, LL0/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :pswitch_10
    check-cast p1, LH0/c;

    check-cast p2, LH0/c;

    iget-wide v0, p1, LH0/c;->b:J

    iget-wide p1, p2, LH0/c;->b:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :pswitch_11
    check-cast p1, LH0/e;

    check-cast p2, LH0/e;

    iget-object p1, p1, LH0/e;->a:LH0/f;

    iget p1, p1, LH0/f;->b:I

    iget-object p2, p2, LH0/e;->a:LH0/f;

    iget p2, p2, LH0/f;->b:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
