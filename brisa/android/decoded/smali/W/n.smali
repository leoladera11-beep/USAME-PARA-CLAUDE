.class public final LW/n;
.super LW/m;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:Z

.field public final D:Ljava/lang/String;

.field public final i:Z

.field public final j:LW/j;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:Z

.field public final v:I

.field public final w:Z

.field public final x:I

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(ILG/r0;ILW/j;ILjava/lang/String;IZ)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, LW/m;-><init>(ILG/r0;I)V

    iput-object p4, p0, LW/n;->j:LW/j;

    iget-boolean p1, p4, LW/j;->x0:Z

    iget-object p2, p4, LG/w0;->m:Lu1/P;

    iget-object p3, p4, LG/w0;->o:Lu1/P;

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p7, 0x0

    iput-boolean p7, p0, LW/n;->w:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p8, :cond_5

    iget-object v3, p0, LW/m;->h:LG/x;

    iget v4, v3, LG/x;->w:I

    if-eq v4, v1, :cond_1

    iget v5, p4, LG/w0;->a:I

    if-gt v4, v5, :cond_5

    :cond_1
    iget v4, v3, LG/x;->x:I

    if-eq v4, v1, :cond_2

    iget v5, p4, LG/w0;->b:I

    if-gt v4, v5, :cond_5

    :cond_2
    iget v4, v3, LG/x;->B:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_3

    iget v5, p4, LG/w0;->c:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    :cond_3
    iget v3, v3, LG/x;->k:I

    if-eq v3, v1, :cond_4

    iget v4, p4, LG/w0;->d:I

    if-gt v3, v4, :cond_5

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v3, p7

    :goto_1
    iput-boolean v3, p0, LW/n;->i:Z

    if-eqz p8, :cond_a

    iget-object p8, p0, LW/m;->h:LG/x;

    iget v3, p8, LG/x;->w:I

    if-eq v3, v1, :cond_6

    iget v4, p4, LG/w0;->e:I

    if-lt v3, v4, :cond_a

    :cond_6
    iget v3, p8, LG/x;->x:I

    if-eq v3, v1, :cond_7

    iget v4, p4, LG/w0;->f:I

    if-lt v3, v4, :cond_a

    :cond_7
    iget v3, p8, LG/x;->B:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_8

    iget v4, p4, LG/w0;->g:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    :cond_8
    iget p8, p8, LG/x;->k:I

    if-eq p8, v1, :cond_9

    iget v3, p4, LG/w0;->h:I

    if-lt p8, v3, :cond_a

    :cond_9
    move p8, v2

    goto :goto_2

    :cond_a
    move p8, p7

    :goto_2
    iput-boolean p8, p0, LW/n;->k:Z

    invoke-static {p5, p7}, LN/a;->n(IZ)Z

    move-result p8

    iput-boolean p8, p0, LW/n;->l:Z

    iget-object p8, p0, LW/m;->h:LG/x;

    iget v3, p8, LG/x;->B:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    move v0, p7

    :goto_3
    iput-boolean v0, p0, LW/n;->m:Z

    iget v0, p8, LG/x;->k:I

    iput v0, p0, LW/n;->n:I

    iget v0, p8, LG/x;->w:I

    if-eq v0, v1, :cond_d

    iget p8, p8, LG/x;->x:I

    if-ne p8, v1, :cond_c

    goto :goto_4

    :cond_c
    mul-int/2addr v0, p8

    goto :goto_5

    :cond_d
    :goto_4
    move v0, v1

    :goto_5
    iput v0, p0, LW/n;->o:I

    move p8, p7

    :goto_6
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const v3, 0x7fffffff

    if-ge p8, v0, :cond_f

    iget-object v0, p0, LW/m;->h:LG/x;

    invoke-interface {p3, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4, p7}, LW/o;->h(LG/x;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p8, p8, 0x1

    goto :goto_6

    :cond_f
    move v0, p7

    move p8, v3

    :goto_7
    iput p8, p0, LW/n;->q:I

    iput v0, p0, LW/n;->r:I

    iget-object p3, p0, LW/m;->h:LG/x;

    iget p3, p3, LG/x;->f:I

    iget p8, p4, LG/w0;->p:I

    sget-object v0, LW/o;->k:Lu1/y0;

    if-eqz p3, :cond_10

    if-ne p3, p8, :cond_10

    move p3, v3

    goto :goto_8

    :cond_10
    and-int/2addr p3, p8

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_8
    iput p3, p0, LW/n;->s:I

    iget-object p3, p0, LW/m;->h:LG/x;

    iget p3, p3, LG/x;->f:I

    if-eqz p3, :cond_12

    and-int/2addr p3, v2

    if-eqz p3, :cond_11

    goto :goto_9

    :cond_11
    move p3, p7

    goto :goto_a

    :cond_12
    :goto_9
    move p3, v2

    :goto_a
    iput-boolean p3, p0, LW/n;->u:Z

    invoke-static {p6}, LW/o;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_13

    move p3, v2

    goto :goto_b

    :cond_13
    move p3, p7

    :goto_b
    iget-object p8, p0, LW/m;->h:LG/x;

    invoke-static {p8, p6, p3}, LW/o;->h(LG/x;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, LW/n;->v:I

    iget-object p3, p0, LW/m;->h:LG/x;

    iget-object p6, p3, LG/x;->p:Ljava/lang/String;

    and-int/lit16 p8, p5, 0x180

    const/16 v0, 0x100

    if-ne p8, v0, :cond_14

    invoke-static {p3}, LS/w;->c(LG/x;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_14

    move-object p6, p3

    :cond_14
    move p3, p7

    :goto_c
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge p3, v4, :cond_16

    if-eqz p6, :cond_15

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v3, p3

    goto :goto_d

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    iput v3, p0, LW/n;->p:I

    iget-object p2, p0, LW/m;->h:LG/x;

    iget-object p3, p4, LG/w0;->n:Lu1/P;

    invoke-static {p2, p3}, LW/o;->b(LG/x;Lu1/P;)I

    move-result p2

    iput p2, p0, LW/n;->t:I

    const/16 p2, 0x80

    if-eq p8, p2, :cond_18

    if-ne p8, v0, :cond_17

    goto :goto_e

    :cond_17
    move p3, p7

    goto :goto_f

    :cond_18
    :goto_e
    move p3, v2

    :goto_f
    iput-boolean p3, p0, LW/n;->y:Z

    if-ne p8, p2, :cond_19

    move p2, v2

    goto :goto_10

    :cond_19
    move p2, p7

    :goto_10
    iput-boolean p2, p0, LW/n;->z:Z

    and-int/lit8 p3, p5, 0x40

    const/16 p4, 0x40

    if-ne p3, p4, :cond_1a

    move p3, v2

    goto :goto_11

    :cond_1a
    move p3, p7

    :goto_11
    iput-boolean p3, p0, LW/n;->A:Z

    iput-object p6, p0, LW/n;->D:Ljava/lang/String;

    const/4 p3, 0x2

    if-nez p6, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {p6}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p8, 0x4

    const/4 v0, 0x3

    sparse-switch p4, :sswitch_data_0

    :goto_12
    move p4, v1

    goto :goto_13

    :sswitch_0
    const-string p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1c

    goto :goto_12

    :cond_1c
    move p4, p8

    goto :goto_13

    :sswitch_1
    const-string p4, "video/avc"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1d

    goto :goto_12

    :cond_1d
    move p4, v0

    goto :goto_13

    :sswitch_2
    const-string p4, "video/hevc"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1e

    goto :goto_12

    :cond_1e
    move p4, p3

    goto :goto_13

    :sswitch_3
    const-string p4, "video/av01"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1f

    goto :goto_12

    :cond_1f
    move p4, v2

    goto :goto_13

    :sswitch_4
    const-string p4, "video/dolby-vision"

    invoke-virtual {p6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_20

    goto :goto_12

    :cond_20
    move p4, p7

    :goto_13
    packed-switch p4, :pswitch_data_0

    :goto_14
    move p8, p7

    goto :goto_15

    :pswitch_0
    move p8, p3

    goto :goto_15

    :pswitch_1
    move p8, v2

    goto :goto_15

    :pswitch_2
    move p8, v0

    goto :goto_15

    :pswitch_3
    const/4 p8, 0x5

    :goto_15
    :pswitch_4
    iput p8, p0, LW/n;->B:I

    if-eqz p2, :cond_23

    iget-object p2, p0, LW/m;->h:LG/x;

    iget-object p2, p2, LG/x;->H:LG/n;

    if-eqz p2, :cond_22

    iget p2, p2, LG/n;->c:I

    const/4 p4, 0x7

    if-eq p2, p4, :cond_21

    const/4 p4, 0x6

    if-ne p2, p4, :cond_23

    :cond_21
    move p2, v2

    goto :goto_16

    :cond_22
    sget-object p2, LG/n;->h:LG/n;

    :cond_23
    move p2, p7

    :goto_16
    iput-boolean p2, p0, LW/n;->C:Z

    iget-boolean p2, p0, LW/n;->i:Z

    iget-object p4, p0, LW/n;->j:LW/j;

    iget-object p6, p0, LW/m;->h:LG/x;

    iget p8, p6, LG/x;->f:I

    and-int/lit16 p8, p8, 0x4000

    if-eqz p8, :cond_24

    goto :goto_17

    :cond_24
    iget-boolean p8, p4, LW/j;->B0:Z

    invoke-static {p5, p8}, LN/a;->n(IZ)Z

    move-result p8

    if-nez p8, :cond_25

    goto :goto_17

    :cond_25
    if-nez p2, :cond_26

    iget-boolean p8, p4, LW/j;->w0:Z

    if-nez p8, :cond_26

    goto :goto_17

    :cond_26
    invoke-static {p5, p7}, LN/a;->n(IZ)Z

    move-result p7

    if-eqz p7, :cond_27

    iget-boolean p7, p0, LW/n;->k:Z

    if-eqz p7, :cond_27

    if-eqz p2, :cond_27

    iget p2, p6, LG/x;->k:I

    if-eq p2, v1, :cond_27

    iget-boolean p2, p4, LG/w0;->G:Z

    if-nez p2, :cond_27

    iget-boolean p2, p4, LG/w0;->F:Z

    if-nez p2, :cond_27

    and-int/2addr p1, p5

    if-eqz p1, :cond_27

    move p7, p3

    goto :goto_17

    :cond_27
    move p7, v2

    :goto_17
    iput p7, p0, LW/n;->x:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(LW/n;LW/n;)I
    .locals 4

    iget-boolean v0, p0, LW/n;->l:Z

    iget-boolean v1, p1, LW/n;->l:Z

    sget-object v2, Lu1/A;->a:Lu1/y;

    invoke-virtual {v2, v0, v1}, Lu1/y;->c(ZZ)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/n;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, LW/n;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lu1/v0;->g:Lu1/v0;

    invoke-virtual {v0, v1, v2, v3}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/n;->r:I

    iget v2, p1, LW/n;->r:I

    invoke-virtual {v0, v1, v2}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/n;->s:I

    iget v2, p1, LW/n;->s:I

    invoke-virtual {v0, v1, v2}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/n;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, LW/n;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/n;->u:Z

    iget-boolean v2, p1, LW/n;->u:Z

    invoke-virtual {v0, v1, v2}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/n;->v:I

    iget v2, p1, LW/n;->v:I

    invoke-virtual {v0, v1, v2}, Lu1/A;->a(II)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/n;->m:Z

    iget-boolean v2, p1, LW/n;->m:Z

    invoke-virtual {v0, v1, v2}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/n;->i:Z

    iget-boolean v2, p1, LW/n;->i:Z

    invoke-virtual {v0, v1, v2}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/n;->k:Z

    iget-boolean v2, p1, LW/n;->k:Z

    invoke-virtual {v0, v1, v2}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v0

    iget v1, p0, LW/n;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, LW/n;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lu1/A;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/n;->y:Z

    iget-boolean v2, p1, LW/n;->y:Z

    invoke-virtual {v0, v1, v2}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object v0

    iget-boolean p0, p0, LW/n;->A:Z

    iget-boolean p1, p1, LW/n;->A:Z

    invoke-virtual {v0, p0, p1}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object p0

    invoke-virtual {p0}, Lu1/A;->e()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LW/n;->x:I

    return v0
.end method

.method public final b(LW/m;)Z
    .locals 2

    check-cast p1, LW/n;

    iget-boolean v0, p0, LW/n;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LW/n;->D:Ljava/lang/String;

    iget-object v1, p1, LW/n;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LW/n;->j:LW/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, LW/n;->y:Z

    iget-boolean v1, p1, LW/n;->y:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, LW/n;->A:Z

    iget-boolean p1, p1, LW/n;->A:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
