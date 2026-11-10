.class public final LO0/d;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements LO0/M;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/List;

.field public c:F

.field public d:LO0/e;

.field public e:F


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LO0/d;->a:Ljava/util/ArrayList;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, LO0/d;->b:Ljava/util/List;

    const p1, 0x3d5a511a    # 0.0533f

    iput p1, p0, LO0/d;->c:F

    sget-object p1, LO0/e;->g:LO0/e;

    iput-object p1, p0, LO0/d;->d:LO0/e;

    const p1, 0x3da3d70a    # 0.08f

    iput p1, p0, LO0/d;->e:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;LO0/e;FF)V
    .locals 0

    iput-object p1, p0, LO0/d;->b:Ljava/util/List;

    iput-object p2, p0, LO0/d;->d:LO0/e;

    iput p3, p0, LO0/d;->c:F

    iput p4, p0, LO0/d;->e:F

    :goto_0
    iget-object p2, p0, LO0/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    new-instance p3, LO0/L;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, LO0/L;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LO0/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_29

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v7, v3, v7

    if-le v7, v5, :cond_3a

    if-gt v6, v4, :cond_1

    goto/16 :goto_29

    :cond_1
    sub-int v8, v7, v5

    iget v9, v0, LO0/d;->c:F

    const/4 v10, 0x0

    invoke-static {v10, v9, v3, v8}, LV0/a;->q(IFII)F

    move-result v9

    const/4 v11, 0x0

    cmpg-float v12, v9, v11

    if-gtz v12, :cond_2

    goto/16 :goto_29

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    move v13, v10

    :goto_0
    if-ge v13, v12, :cond_3a

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LI/b;

    iget v15, v14, LI/b;->p:I

    move/from16 v16, v11

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v11, -0x80000000

    if-eq v15, v11, :cond_6

    invoke-virtual {v14}, LI/b;->a()LI/a;

    move-result-object v15

    iget v10, v14, LI/b;->e:F

    move-object/from16 v21, v2

    const v2, -0x800001

    iput v2, v15, LI/a;->h:F

    iput v11, v15, LI/a;->i:I

    const/4 v2, 0x0

    iput-object v2, v15, LI/a;->c:Landroid/text/Layout$Alignment;

    iget v11, v14, LI/b;->f:I

    if-nez v11, :cond_3

    sub-float v10, v17, v10

    iput v10, v15, LI/a;->e:F

    const/4 v11, 0x0

    iput v11, v15, LI/a;->f:I

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    neg-float v10, v10

    sub-float v10, v10, v17

    iput v10, v15, LI/a;->e:F

    const/4 v10, 0x1

    iput v10, v15, LI/a;->f:I

    :goto_1
    iget v10, v14, LI/b;->g:I

    if-eqz v10, :cond_5

    const/4 v14, 0x2

    if-eq v10, v14, :cond_4

    goto :goto_2

    :cond_4
    iput v11, v15, LI/a;->g:I

    goto :goto_2

    :cond_5
    const/4 v14, 0x2

    iput v14, v15, LI/a;->g:I

    :goto_2
    invoke-virtual {v15}, LI/a;->a()LI/b;

    move-result-object v14

    goto :goto_3

    :cond_6
    move-object/from16 v21, v2

    const/4 v2, 0x0

    :goto_3
    iget v10, v14, LI/b;->n:I

    iget v11, v14, LI/b;->o:F

    invoke-static {v10, v11, v3, v8}, LV0/a;->q(IFII)F

    move-result v10

    iget-object v11, v0, LO0/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LO0/L;

    iget-object v15, v0, LO0/d;->d:LO0/e;

    iget v2, v0, LO0/d;->e:F

    iget-object v0, v11, LO0/L;->f:Landroid/text/TextPaint;

    move/from16 v30, v3

    iget-object v3, v14, LI/b;->d:Landroid/graphics/Bitmap;

    move/from16 v31, v8

    iget v8, v14, LI/b;->k:F

    move/from16 v32, v12

    iget v12, v14, LI/b;->j:F

    move/from16 v33, v13

    iget v13, v14, LI/b;->i:I

    move/from16 v22, v2

    iget v2, v14, LI/b;->h:F

    move/from16 v23, v10

    iget v10, v14, LI/b;->g:I

    move/from16 v34, v9

    iget v9, v14, LI/b;->f:I

    move-object/from16 v24, v0

    iget v0, v14, LI/b;->e:F

    move/from16 v25, v8

    iget-object v8, v14, LI/b;->b:Landroid/text/Layout$Alignment;

    move/from16 v26, v12

    iget-object v12, v14, LI/b;->a:Ljava/lang/CharSequence;

    move/from16 v27, v13

    if-nez v3, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_8

    :goto_5
    move v3, v7

    const/4 v15, 0x0

    goto/16 :goto_28

    :cond_8
    move/from16 v28, v2

    iget-boolean v2, v14, LI/b;->l:Z

    if-eqz v2, :cond_9

    iget v2, v14, LI/b;->m:I

    goto :goto_6

    :cond_9
    iget v2, v15, LO0/e;->c:I

    goto :goto_6

    :cond_a
    move/from16 v28, v2

    const/high16 v2, -0x1000000

    :goto_6
    iget-object v14, v11, LO0/L;->i:Ljava/lang/CharSequence;

    if-eq v14, v12, :cond_c

    if-eqz v14, :cond_b

    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v29, v10

    goto/16 :goto_8

    :cond_c
    :goto_7
    iget-object v14, v11, LO0/L;->j:Landroid/text/Layout$Alignment;

    invoke-static {v14, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v11, LO0/L;->k:Landroid/graphics/Bitmap;

    if-ne v14, v3, :cond_b

    iget v14, v11, LO0/L;->l:F

    cmpl-float v14, v14, v0

    if-nez v14, :cond_b

    iget v14, v11, LO0/L;->m:I

    if-ne v14, v9, :cond_b

    iget v14, v11, LO0/L;->n:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v29, v10

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v11, LO0/L;->o:F

    cmpl-float v10, v10, v28

    if-nez v10, :cond_d

    iget v10, v11, LO0/L;->p:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v11, LO0/L;->q:F

    cmpl-float v10, v10, v26

    if-nez v10, :cond_d

    iget v10, v11, LO0/L;->r:F

    cmpl-float v10, v10, v25

    if-nez v10, :cond_d

    iget v10, v11, LO0/L;->s:I

    iget v14, v15, LO0/e;->a:I

    if-ne v10, v14, :cond_d

    iget v10, v11, LO0/L;->t:I

    iget v14, v15, LO0/e;->b:I

    if-ne v10, v14, :cond_d

    iget v10, v11, LO0/L;->u:I

    if-ne v10, v2, :cond_d

    iget v10, v11, LO0/L;->w:I

    iget v14, v15, LO0/e;->d:I

    if-ne v10, v14, :cond_d

    iget v10, v11, LO0/L;->v:I

    iget v14, v15, LO0/e;->e:I

    if-ne v10, v14, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    iget-object v14, v15, LO0/e;->f:Landroid/graphics/Typeface;

    invoke-static {v10, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v11, LO0/L;->x:F

    cmpl-float v10, v10, v34

    if-nez v10, :cond_d

    iget v10, v11, LO0/L;->y:F

    cmpl-float v10, v10, v23

    if-nez v10, :cond_d

    iget v10, v11, LO0/L;->z:F

    cmpl-float v10, v10, v22

    if-nez v10, :cond_d

    iget v10, v11, LO0/L;->A:I

    if-ne v10, v4, :cond_d

    iget v10, v11, LO0/L;->B:I

    if-ne v10, v5, :cond_d

    iget v10, v11, LO0/L;->C:I

    if-ne v10, v6, :cond_d

    iget v10, v11, LO0/L;->D:I

    if-ne v10, v7, :cond_d

    invoke-virtual {v11, v1, v13}, LO0/L;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_5

    :cond_d
    :goto_8
    sget-object v10, LO0/c;->a:LC1/e;

    if-nez v12, :cond_f

    :cond_e
    move/from16 v40, v6

    move/from16 v36, v7

    move/from16 v35, v13

    goto/16 :goto_13

    :cond_f
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v10, :cond_e

    invoke-static {v12, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v35

    move/from16 v36, v10

    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v10

    move/from16 v37, v14

    const/4 v14, 0x1

    if-eq v10, v14, :cond_11

    const/4 v14, 0x2

    if-eq v10, v14, :cond_11

    const/16 v14, 0x10

    if-eq v10, v14, :cond_11

    const/16 v14, 0x11

    if-ne v10, v14, :cond_10

    goto :goto_a

    :cond_10
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v14, v10, v37

    move/from16 v10, v36

    goto :goto_9

    :cond_11
    :goto_a
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v10

    instance-of v14, v12, Landroid/text/Spanned;

    if-eqz v14, :cond_12

    move-object v14, v12

    check-cast v14, Landroid/text/Spanned;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move/from16 v35, v13

    const-class v13, Ljava/lang/Object;

    move/from16 v36, v7

    const/4 v7, 0x0

    invoke-interface {v14, v7, v1, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v7, v1

    new-array v7, v7, [I

    array-length v13, v1

    new-array v13, v13, [I

    move-object/from16 v18, v1

    const/4 v1, -0x1

    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v13, v1}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v1, v18

    move-object/from16 v18, v7

    goto :goto_b

    :cond_12
    move/from16 v36, v7

    move/from16 v35, v13

    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_b
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v37, v13

    const-string v13, "\r\n"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    sget-object v7, LO0/c;->b:LC1/e;

    invoke-virtual {v7, v12}, LC1/e;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    const/4 v12, 0x2

    goto :goto_c

    :cond_13
    sget-object v7, LO0/c;->a:LC1/e;

    invoke-virtual {v7, v12}, LC1/e;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    const/4 v12, 0x1

    :goto_c
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v38, v7

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v39, v7

    const/4 v7, 0x0

    const/16 v38, 0x0

    :goto_d
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_1b

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    move/from16 v41, v12

    move-object/from16 v12, v40

    check-cast v12, Ljava/lang/String;

    move/from16 v40, v6

    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v10, v12, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_1a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v42

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v43

    sub-int v42, v42, v43

    if-lez v42, :cond_14

    add-int/lit8 v38, v38, 0x1

    :cond_14
    move-object/from16 v43, v10

    move-object/from16 v44, v12

    const/4 v10, 0x0

    :goto_e
    array-length v12, v1

    if-ge v10, v12, :cond_18

    aget v12, v18, v10

    if-gez v12, :cond_15

    aget-object v12, v1, v10

    invoke-interface {v14, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    if-lt v12, v7, :cond_15

    aget-object v12, v1, v10

    invoke-interface {v14, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v45

    move/from16 v46, v10

    add-int v10, v45, v7

    if-ge v12, v10, :cond_16

    aput v38, v18, v46

    goto :goto_f

    :cond_15
    move/from16 v46, v10

    :cond_16
    :goto_f
    aget v10, v37, v46

    if-gez v10, :cond_17

    aget-object v10, v1, v46

    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/16 v20, 0x1

    add-int/lit8 v10, v10, -0x1

    if-lt v10, v7, :cond_17

    aget-object v10, v1, v46

    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v7

    if-ge v10, v12, :cond_17

    aput v38, v37, v46

    :cond_17
    add-int/lit8 v10, v46, 0x1

    goto :goto_e

    :cond_18
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v10

    add-int v10, v10, v41

    add-int/2addr v10, v7

    if-lez v42, :cond_19

    add-int/lit8 v38, v38, 0x1

    :cond_19
    move v7, v10

    goto :goto_10

    :cond_1a
    move-object/from16 v43, v10

    :goto_10
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, v40

    move/from16 v12, v41

    move-object/from16 v10, v43

    goto/16 :goto_d

    :cond_1b
    move/from16 v40, v6

    new-instance v12, Landroid/text/SpannableStringBuilder;

    sget-object v6, LO0/c;->c:LK/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10, v7}, LK/a;->b(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1d

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :goto_11
    array-length v7, v1

    if-ge v6, v7, :cond_1d

    aget-object v7, v1, v6

    invoke-interface {v14, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    aget v10, v18, v6

    add-int/2addr v7, v10

    aget-object v10, v1, v6

    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    aget v13, v37, v6

    add-int/2addr v10, v13

    aget-object v13, v1, v6

    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v38, v1

    if-ltz v7, :cond_1c

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-ge v7, v1, :cond_1c

    if-ltz v10, :cond_1c

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-gt v10, v1, :cond_1c

    aget-object v1, v38, v6

    invoke-virtual {v12, v1, v7, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_12

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v13, "Span out of bounds: start="

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",end="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",len="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "BidiUtils"

    invoke-static {v7, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v38

    goto :goto_11

    :cond_1d
    :goto_13
    iput-object v12, v11, LO0/L;->i:Ljava/lang/CharSequence;

    iput-object v8, v11, LO0/L;->j:Landroid/text/Layout$Alignment;

    iput-object v3, v11, LO0/L;->k:Landroid/graphics/Bitmap;

    iput v0, v11, LO0/L;->l:F

    iput v9, v11, LO0/L;->m:I

    move/from16 v0, v29

    iput v0, v11, LO0/L;->n:I

    move/from16 v0, v28

    iput v0, v11, LO0/L;->o:F

    move/from16 v0, v27

    iput v0, v11, LO0/L;->p:I

    move/from16 v0, v26

    iput v0, v11, LO0/L;->q:F

    move/from16 v0, v25

    iput v0, v11, LO0/L;->r:F

    iget v0, v15, LO0/e;->a:I

    iput v0, v11, LO0/L;->s:I

    iget v0, v15, LO0/e;->b:I

    iput v0, v11, LO0/L;->t:I

    iput v2, v11, LO0/L;->u:I

    iget v0, v15, LO0/e;->d:I

    iput v0, v11, LO0/L;->w:I

    iget v0, v15, LO0/e;->e:I

    iput v0, v11, LO0/L;->v:I

    iget-object v0, v15, LO0/e;->f:Landroid/graphics/Typeface;

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, v34

    iput v0, v11, LO0/L;->x:F

    move/from16 v2, v23

    iput v2, v11, LO0/L;->y:F

    move/from16 v2, v22

    iput v2, v11, LO0/L;->z:F

    iput v4, v11, LO0/L;->A:I

    iput v5, v11, LO0/L;->B:I

    move/from16 v6, v40

    iput v6, v11, LO0/L;->C:I

    move/from16 v3, v36

    iput v3, v11, LO0/L;->D:I

    if-eqz v35, :cond_34

    iget-object v2, v11, LO0/L;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v11, LO0/L;->i:Ljava/lang/CharSequence;

    instance-of v7, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_1e

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_14

    :cond_1e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v7, v11, LO0/L;->i:Ljava/lang/CharSequence;

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_14
    iget v7, v11, LO0/L;->C:I

    iget v8, v11, LO0/L;->A:I

    sub-int/2addr v7, v8

    iget v8, v11, LO0/L;->D:I

    iget v9, v11, LO0/L;->B:I

    sub-int/2addr v8, v9

    iget v9, v11, LO0/L;->x:F

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v9, v11, LO0/L;->x:F

    const/high16 v10, 0x3e000000    # 0.125f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    mul-int/lit8 v10, v9, 0x2

    sub-int v12, v7, v10

    iget v13, v11, LO0/L;->q:F

    const v19, -0x800001

    cmpl-float v14, v13, v19

    if-eqz v14, :cond_1f

    int-to-float v12, v12

    mul-float/2addr v12, v13

    float-to-int v12, v12

    :cond_1f
    move/from16 v25, v12

    const-string v12, "SubtitlePainter"

    if-gtz v25, :cond_20

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v12, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v34, v0

    :goto_15
    const/4 v15, 0x0

    goto/16 :goto_21

    :cond_20
    iget v13, v11, LO0/L;->y:F

    cmpl-float v13, v13, v16

    const/high16 v14, 0xff0000

    if-lez v13, :cond_21

    new-instance v13, Landroid/text/style/AbsoluteSizeSpan;

    iget v15, v11, LO0/L;->y:F

    float-to-int v15, v15

    invoke-direct {v13, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    move/from16 v34, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v13, v0, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_16

    :cond_21
    move/from16 v34, v0

    const/4 v0, 0x0

    :goto_16
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v15, v11, LO0/L;->w:I

    const/4 v14, 0x1

    if-ne v15, v14, :cond_22

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const-class v15, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v13, v0, v14, v15}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ForegroundColorSpan;

    array-length v0, v14

    const/4 v15, 0x0

    :goto_17
    if-ge v15, v0, :cond_22

    move/from16 v22, v0

    aget-object v0, v14, v15

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v22

    goto :goto_17

    :cond_22
    iget v0, v11, LO0/L;->t:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_25

    iget v0, v11, LO0/L;->w:I

    if-eqz v0, :cond_23

    const/4 v14, 0x2

    if-ne v0, v14, :cond_24

    :cond_23
    move-object/from16 v24, v1

    const/high16 v1, 0xff0000

    const/4 v15, 0x0

    goto :goto_18

    :cond_24
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v14, v11, LO0/L;->t:I

    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    move-object/from16 v24, v1

    const/high16 v1, 0xff0000

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v15, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    :goto_18
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    iget v14, v11, LO0/L;->t:I

    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    invoke-virtual {v2, v0, v15, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_19

    :cond_25
    move-object/from16 v24, v1

    :goto_19
    iget-object v0, v11, LO0/L;->j:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_26

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_26
    move-object/from16 v26, v0

    new-instance v22, Landroid/text/StaticLayout;

    iget v0, v11, LO0/L;->d:F

    iget v1, v11, LO0/L;->e:F

    const/16 v29, 0x1

    move/from16 v27, v0

    move/from16 v28, v1

    move-object/from16 v23, v2

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v1, v22

    move/from16 v0, v25

    iput-object v1, v11, LO0/L;->E:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget-object v2, v11, LO0/L;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1a
    if-ge v14, v2, :cond_27

    move/from16 v18, v1

    iget-object v1, v11, LO0/L;->E:Landroid/text/StaticLayout;

    invoke-virtual {v1, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    move/from16 v22, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v18

    move/from16 v2, v22

    goto :goto_1a

    :cond_27
    move/from16 v18, v1

    iget v1, v11, LO0/L;->q:F

    const v19, -0x800001

    cmpl-float v1, v1, v19

    if-eqz v1, :cond_28

    if-ge v15, v0, :cond_28

    move/from16 v25, v0

    goto :goto_1b

    :cond_28
    move/from16 v25, v15

    :goto_1b
    add-int v25, v25, v10

    iget v0, v11, LO0/L;->o:F

    cmpl-float v1, v0, v19

    if-eqz v1, :cond_2b

    int-to-float v1, v7

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v11, LO0/L;->A:I

    add-int/2addr v0, v1

    iget v2, v11, LO0/L;->p:I

    const/4 v14, 0x1

    if-eq v2, v14, :cond_2a

    const/4 v14, 0x2

    if-eq v2, v14, :cond_29

    goto :goto_1c

    :cond_29
    sub-int v0, v0, v25

    goto :goto_1c

    :cond_2a
    const/4 v14, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v0, v25

    div-int/2addr v0, v14

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v1, v0, v25

    iget v2, v11, LO0/L;->C:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1d

    :cond_2b
    const/4 v14, 0x2

    sub-int v7, v7, v25

    div-int/2addr v7, v14

    iget v0, v11, LO0/L;->A:I

    add-int/2addr v0, v7

    add-int v1, v0, v25

    :goto_1d
    sub-int v25, v1, v0

    if-gtz v25, :cond_2c

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v12, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_2c
    iget v1, v11, LO0/L;->l:F

    const v19, -0x800001

    cmpl-float v2, v1, v19

    if-eqz v2, :cond_32

    iget v2, v11, LO0/L;->m:I

    if-nez v2, :cond_2f

    int-to-float v2, v8

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v11, LO0/L;->B:I

    add-int/2addr v1, v2

    iget v2, v11, LO0/L;->n:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_2d

    sub-int v1, v1, v18

    goto :goto_1e

    :cond_2d
    const/4 v10, 0x1

    if-ne v2, v10, :cond_2e

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v1, v18

    div-int/2addr v1, v14

    :cond_2e
    :goto_1e
    const/4 v15, 0x0

    goto :goto_1f

    :cond_2f
    iget-object v1, v11, LO0/L;->E:Landroid/text/StaticLayout;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-object v2, v11, LO0/L;->E:Landroid/text/StaticLayout;

    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v11, LO0/L;->l:F

    cmpl-float v7, v2, v16

    if-ltz v7, :cond_30

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v11, LO0/L;->B:I

    add-int/2addr v1, v2

    goto :goto_1f

    :cond_30
    add-float v2, v2, v17

    int-to-float v1, v1

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v11, LO0/L;->D:I

    add-int/2addr v1, v2

    sub-int v1, v1, v18

    :goto_1f
    add-int v2, v1, v18

    iget v7, v11, LO0/L;->D:I

    if-le v2, v7, :cond_31

    sub-int v1, v7, v18

    goto :goto_20

    :cond_31
    iget v2, v11, LO0/L;->B:I

    if-ge v1, v2, :cond_33

    move v1, v2

    goto :goto_20

    :cond_32
    const/4 v15, 0x0

    iget v1, v11, LO0/L;->D:I

    sub-int v1, v1, v18

    int-to-float v2, v8

    iget v7, v11, LO0/L;->z:F

    mul-float/2addr v2, v7

    float-to-int v2, v2

    sub-int/2addr v1, v2

    :cond_33
    :goto_20
    new-instance v22, Landroid/text/StaticLayout;

    iget v2, v11, LO0/L;->d:F

    iget v7, v11, LO0/L;->e:F

    const/16 v29, 0x1

    move/from16 v27, v2

    move/from16 v28, v7

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v22

    iput-object v2, v11, LO0/L;->E:Landroid/text/StaticLayout;

    new-instance v22, Landroid/text/StaticLayout;

    iget v2, v11, LO0/L;->d:F

    iget v7, v11, LO0/L;->e:F

    move/from16 v27, v2

    move/from16 v28, v7

    move-object/from16 v23, v13

    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v2, v22

    iput-object v2, v11, LO0/L;->F:Landroid/text/StaticLayout;

    iput v0, v11, LO0/L;->G:I

    iput v1, v11, LO0/L;->H:I

    iput v9, v11, LO0/L;->I:I

    :goto_21
    move-object/from16 v1, p1

    move/from16 v0, v35

    goto/16 :goto_27

    :cond_34
    move/from16 v34, v0

    const/4 v15, 0x0

    iget-object v0, v11, LO0/L;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v11, LO0/L;->k:Landroid/graphics/Bitmap;

    iget v1, v11, LO0/L;->C:I

    iget v2, v11, LO0/L;->A:I

    sub-int/2addr v1, v2

    iget v7, v11, LO0/L;->D:I

    iget v8, v11, LO0/L;->B:I

    sub-int/2addr v7, v8

    int-to-float v2, v2

    int-to-float v1, v1

    iget v9, v11, LO0/L;->o:F

    mul-float/2addr v9, v1

    add-float/2addr v9, v2

    int-to-float v2, v8

    int-to-float v7, v7

    iget v8, v11, LO0/L;->l:F

    mul-float/2addr v8, v7

    add-float/2addr v8, v2

    iget v2, v11, LO0/L;->q:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v11, LO0/L;->r:F

    const v19, -0x800001

    cmpl-float v10, v2, v19

    if-eqz v10, :cond_35

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_22

    :cond_35
    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_22
    iget v2, v11, LO0/L;->p:I

    const/4 v14, 0x2

    if-ne v2, v14, :cond_36

    int-to-float v2, v1

    :goto_23
    sub-float/2addr v9, v2

    goto :goto_24

    :cond_36
    const/4 v14, 0x1

    if-ne v2, v14, :cond_37

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    goto :goto_23

    :cond_37
    :goto_24
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v7, v11, LO0/L;->n:I

    const/4 v14, 0x2

    if-ne v7, v14, :cond_38

    int-to-float v7, v0

    :goto_25
    sub-float/2addr v8, v7

    goto :goto_26

    :cond_38
    const/4 v14, 0x1

    if-ne v7, v14, :cond_39

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    goto :goto_25

    :cond_39
    :goto_26
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v7

    invoke-direct {v8, v2, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, v11, LO0/L;->J:Landroid/graphics/Rect;

    goto :goto_21

    :goto_27
    invoke-virtual {v11, v1, v0}, LO0/L;->a(Landroid/graphics/Canvas;Z)V

    :goto_28
    add-int/lit8 v13, v33, 0x1

    move-object/from16 v0, p0

    move v7, v3

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v2, v21

    move/from16 v3, v30

    move/from16 v8, v31

    move/from16 v12, v32

    move/from16 v9, v34

    goto/16 :goto_0

    :cond_3a
    :goto_29
    return-void
.end method
