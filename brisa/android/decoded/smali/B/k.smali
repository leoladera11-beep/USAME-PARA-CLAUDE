.class public final LB/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LB/k;->e:I

    iput-object p1, p0, LB/k;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v1, p0

    iget v0, v1, LB/k;->e:I

    const/4 v2, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lz/A;

    invoke-virtual {v0, v6}, Lz/A;->y(Z)Z

    return-void

    :pswitch_0
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lz/m;

    iget-object v2, v0, Lz/m;->G:Lz/l;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lz/m;->j()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lz/j;

    iget-object v2, v0, Lz/j;->S:Lz/h;

    iget-object v0, v0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Lz/h;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/VideoActivity;

    iget-object v7, v0, Lcom/brisa/local/VideoActivity;->c:LM0/z;

    if-eqz v7, :cond_12

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v7, v0, Lcom/brisa/local/VideoActivity;->b:Lcom/brisa/local/f;

    iget-object v8, v0, Lcom/brisa/local/VideoActivity;->c:LM0/z;

    invoke-virtual {v8}, LM0/z;->O0()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    const-string v12, "text"

    const-string v13, "end"

    const-string v14, "start"

    iget-object v15, v7, Lcom/brisa/local/f;->b:Lorg/json/JSONArray;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v15

    sub-int/2addr v15, v6

    const/16 v16, -0x1

    move-wide/from16 v17, v10

    move/from16 v11, v16

    const/4 v10, 0x0

    :goto_0
    if-gt v10, v15, :cond_4

    add-int v19, v10, v15

    const/16 v20, 0x2

    div-int/lit8 v4, v19, 0x2

    iget-object v5, v7, Lcom/brisa/local/f;->b:Lorg/json/JSONArray;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v21

    cmpg-double v5, v8, v21

    if-gez v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    move v15, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v4, 0x1

    move v11, v4

    goto :goto_0

    :cond_4
    :goto_1
    if-ltz v11, :cond_5

    iget-object v2, v7, Lcom/brisa/local/f;->b:Lorg/json/JSONArray;

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v4, v8, v4

    if-ltz v4, :cond_6

    move/from16 v11, v16

    :cond_6
    iget-wide v4, v7, Lcom/brisa/local/f;->d:D

    const-wide/16 v15, 0x0

    cmpl-double v10, v4, v15

    move-wide/from16 v20, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v10, :cond_7

    const-wide v22, 0x3fc3333333333333L    # 0.15

    sub-double v22, v20, v22

    cmpg-double v5, v8, v22

    if-ltz v5, :cond_8

    sub-double v20, v8, v20

    cmpl-double v5, v20, v3

    if-lez v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :cond_8
    :goto_2
    iput-wide v8, v7, Lcom/brisa/local/f;->d:D

    iget v5, v7, Lcom/brisa/local/f;->c:I

    const/high16 v10, 0x3f800000    # 1.0f

    if-ne v11, v5, :cond_9

    if-eqz v6, :cond_c

    :cond_9
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iput v11, v7, Lcom/brisa/local/f;->c:I

    if-ltz v11, :cond_c

    :try_start_0
    const-string v5, "words"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v11, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "\n"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    goto :goto_5

    :cond_b
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "color"

    const-string v4, "#ffffff"

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v7, Lcom/brisa/local/f;->a:Landroid/graphics/Typeface;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v11, v3, v10, v10, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/high16 v3, -0x67000000

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v11, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :catch_0
    :cond_c
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v5, v2, :cond_11

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpg-double v6, v8, v11

    if-gez v6, :cond_e

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_e
    iget-boolean v6, v7, Lcom/brisa/local/f;->e:Z

    const v11, 0x102002b

    if-eqz v6, :cond_f

    const-wide v22, 0x3fc999999999999aL    # 0.2

    sub-double v22, v3, v22

    cmpl-double v6, v8, v22

    if-ltz v6, :cond_f

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v2, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v11, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    neg-float v6, v6

    const/high16 v11, 0x41000000    # 8.0f

    mul-float/2addr v6, v11

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sub-double/2addr v3, v8

    mul-double v3, v3, v17

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move-wide/from16 v20, v11

    goto :goto_7

    :cond_f
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-virtual {v2, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/view/View;->setTranslationY(F)V

    :cond_10
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_11
    iget-object v2, v0, Lcom/brisa/local/VideoActivity;->c:LM0/z;

    invoke-virtual {v2}, LM0/z;->I()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, v0, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    :goto_8
    return-void

    :pswitch_3
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lc1/w;

    iget-object v0, v0, Lc1/w;->h:LP/L;

    new-instance v2, La1/a;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, La1/a;-><init>(I)V

    invoke-virtual {v0, v2}, LP/L;->b(La1/a;)V

    return-void

    :pswitch_4
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lc1/o;

    iget-object v0, v0, Lc1/o;->b:Lb1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " disconnecting because it was signed out."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lb1/b;->b(Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lc1/o;

    invoke-virtual {v0}, Lc1/o;->e()V

    return-void

    :pswitch_6
    :try_start_1
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-static {v0}, Lb/h;->c(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_9
    return-void

    :cond_13
    throw v0

    :cond_14
    :goto_a
    :pswitch_7
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LZ1/d;

    monitor-enter v2

    :try_start_2
    invoke-virtual {v2}, LZ1/d;->c()LZ1/a;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    if-nez v3, :cond_15

    return-void

    :cond_15
    iget-object v2, v3, LZ1/a;->c:LZ1/c;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, LZ1/d;

    sget-object v0, LZ1/d;->j:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-string v0, "starting"

    invoke-static {v3, v2, v0}, Landroid/support/v4/media/session/b;->a(LZ1/a;LZ1/c;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const-wide/16 v6, -0x1

    :goto_b
    :try_start_3
    invoke-static {v4, v3}, LZ1/d;->a(LZ1/d;LZ1/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/support/v4/media/session/b;->d(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "finished run in "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Landroid/support/v4/media/session/b;->a(LZ1/a;LZ1/c;Ljava/lang/String;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v4, v4, LZ1/d;->a:La1/g;

    iget-object v4, v4, La1/g;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v5, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/support/v4/media/session/b;->d(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed a run in "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/support/v4/media/session/b;->a(LZ1/a;LZ1/c;Ljava/lang/String;)V

    :cond_17
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_8
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, LX/k;

    check-cast v0, LU/T;

    iget-object v3, v0, LU/T;->z:[LU/Z;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_19

    aget-object v7, v3, v5

    invoke-virtual {v7, v6}, LU/Z;->p(Z)V

    iget-object v8, v7, LU/Z;->h:LQ/h;

    if-eqz v8, :cond_18

    iget-object v9, v7, LU/Z;->e:LQ/k;

    invoke-interface {v8, v9}, LQ/h;->e(LQ/k;)V

    iput-object v2, v7, LU/Z;->h:LQ/h;

    iput-object v2, v7, LU/Z;->g:LG/x;

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_19
    iget-object v0, v0, LU/T;->r:LB/A;

    iget-object v3, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v3, Lb0/n;

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lb0/n;->a()V

    iput-object v2, v0, LB/A;->g:Ljava/lang/Object;

    :cond_1a
    iput-object v2, v0, LB/A;->h:Ljava/lang/Object;

    return-void

    :pswitch_9
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t0()Z

    return-void

    :pswitch_a
    const/16 v20, 0x2

    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v2, :cond_26

    check-cast v2, LR0/i;

    iget-wide v3, v2, LR0/D;->d:J

    iget-object v5, v2, LR0/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    iget-object v8, v2, LR0/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    iget-object v10, v2, LR0/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    iget-object v12, v2, LR0/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v7, :cond_1b

    if-eqz v9, :cond_1b

    if-eqz v13, :cond_1b

    if-eqz v11, :cond_1b

    goto/16 :goto_13

    :cond_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, LR0/T;

    iget-object v6, v15, LR0/T;->a:Landroid/view/View;

    move-object/from16 v18, v5

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    move/from16 v21, v7

    iget-object v7, v2, LR0/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move/from16 v22, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v9, LR0/d;

    invoke-direct {v9, v2, v15, v5, v6}, LR0/d;-><init>(LR0/i;LR0/T;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v5, v18

    move/from16 v7, v21

    move/from16 v9, v22

    const/4 v6, 0x1

    goto :goto_d

    :cond_1c
    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v22, v9

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    if-nez v22, :cond_1e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v2, LR0/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    new-instance v6, LR0/c;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v5, v7}, LR0/c;-><init>(LR0/i;Ljava/util/ArrayList;I)V

    if-nez v21, :cond_1d

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/h;

    iget-object v5, v5, LR0/h;->a:LR0/T;

    iget-object v5, v5, LR0/T;->a:Landroid/view/View;

    sget-object v7, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v5, v6, v3, v4}, Ls/g;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_e

    :cond_1d
    invoke-virtual {v6}, LR0/c;->run()V

    :cond_1e
    :goto_e
    if-nez v11, :cond_20

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v2, LR0/i;->n:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v6, LR0/c;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v5, v7}, LR0/c;-><init>(LR0/i;Ljava/util/ArrayList;I)V

    if-nez v21, :cond_1f

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/g;

    iget-object v5, v5, LR0/g;->a:LR0/T;

    iget-object v5, v5, LR0/T;->a:Landroid/view/View;

    sget-object v7, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v5, v6, v3, v4}, Ls/g;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_f

    :cond_1f
    invoke-virtual {v6}, LR0/c;->run()V

    :cond_20
    :goto_f
    if-nez v13, :cond_26

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v2, LR0/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    new-instance v6, LR0/c;

    move/from16 v7, v20

    invoke-direct {v6, v2, v5, v7}, LR0/c;-><init>(LR0/i;Ljava/util/ArrayList;I)V

    if-eqz v21, :cond_22

    if-eqz v22, :cond_22

    if-nez v11, :cond_21

    goto :goto_10

    :cond_21
    invoke-virtual {v6}, LR0/c;->run()V

    goto :goto_13

    :cond_22
    :goto_10
    const-wide/16 v7, 0x0

    if-nez v21, :cond_23

    goto :goto_11

    :cond_23
    move-wide v3, v7

    :goto_11
    if-nez v22, :cond_24

    iget-wide v9, v2, LR0/D;->e:J

    goto :goto_12

    :cond_24
    move-wide v9, v7

    :goto_12
    if-nez v11, :cond_25

    iget-wide v7, v2, LR0/D;->f:J

    :cond_25
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v7, v3

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR0/T;

    iget-object v3, v3, LR0/T;->a:Landroid/view/View;

    sget-object v4, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v3, v6, v7, v8}, Ls/g;->n(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_14

    :cond_26
    :goto_13
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    return-void

    :pswitch_b
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, LR0/m;

    iget-object v2, v0, LR0/m;->z:Landroid/animation/ValueAnimator;

    iget v3, v0, LR0/m;->A:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_27

    const/4 v7, 0x2

    if-eq v3, v7, :cond_28

    goto :goto_15

    :cond_27
    const/4 v7, 0x2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_28
    const/4 v3, 0x3

    iput v3, v0, LR0/m;->A:I

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v3, v7, [F

    const/16 v19, 0x0

    aput v0, v3, v19

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v15, v3, v16

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_15
    return-void

    :pswitch_c
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, LB/o;

    iget-object v2, v0, LB/o;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v0, LB/o;

    iget-object v0, v0, LB/o;->f:Ljava/lang/Object;

    iget-object v3, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v3, LB/o;

    sget-object v4, LB/o;->k:Ljava/lang/Object;

    iput-object v4, v3, LB/o;->f:Ljava/lang/Object;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v2, v1, LB/k;->f:Ljava/lang/Object;

    check-cast v2, LB/o;

    invoke-virtual {v2, v0}, LB/o;->h(Ljava/lang/Object;)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
