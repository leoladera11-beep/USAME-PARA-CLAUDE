.class public final Ls/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final a(III[I[I)Z
    .locals 6

    iget-boolean v0, p0, Ls/e;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p3}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_9

    aput v1, p5, v1

    aput v1, p5, v2

    return v1

    :cond_2
    :goto_0
    iget-object v3, p0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p5, :cond_3

    invoke-virtual {v3, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p5, v1

    aget v5, p5, v2

    goto :goto_1

    :cond_3
    move v4, v1

    move v5, v4

    :goto_1
    if-nez p4, :cond_5

    iget-object p4, p0, Ls/e;->e:[I

    if-nez p4, :cond_4

    const/4 p4, 0x2

    new-array p4, p4, [I

    iput-object p4, p0, Ls/e;->e:[I

    :cond_4
    iget-object p4, p0, Ls/e;->e:[I

    :cond_5
    aput v1, p4, v1

    aput v1, p4, v2

    if-nez p3, :cond_6

    :try_start_0
    invoke-static {v0, v3, p1, p2, p4}, Ls/y;->c(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ViewParentCompat"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    if-eqz p5, :cond_7

    invoke-virtual {v3, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p5, v1

    sub-int/2addr p1, v4

    aput p1, p5, v1

    aget p1, p5, v2

    sub-int/2addr p1, v5

    aput p1, p5, v2

    :cond_7
    aget p1, p4, v1

    if-nez p1, :cond_8

    aget p1, p4, v2

    if-eqz p1, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    :goto_3
    return v1
.end method

.method public final b(IIII[II[I)Z
    .locals 12

    move-object/from16 v1, p5

    move/from16 v0, p6

    iget-boolean v2, p0, Ls/e;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_8

    aput v3, v1, v3

    aput v3, v1, v2

    return v3

    :cond_2
    :goto_0
    iget-object v5, p0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v1, v3

    aget v7, v1, v2

    move v10, v6

    move v11, v7

    goto :goto_1

    :cond_3
    move v10, v3

    move v11, v10

    :goto_1
    if-nez p7, :cond_5

    iget-object v6, p0, Ls/e;->e:[I

    if-nez v6, :cond_4

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Ls/e;->e:[I

    :cond_4
    iget-object v6, p0, Ls/e;->e:[I

    aput v3, v6, v3

    aput v3, v6, v2

    goto :goto_2

    :cond_5
    move-object/from16 v6, p7

    :goto_2
    aget v7, v6, v3

    add-int/2addr v7, p3

    aput v7, v6, v3

    aget v7, v6, v2

    add-int v7, v7, p4

    aput v7, v6, v2

    if-nez v0, :cond_6

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    :try_start_0
    invoke-static/range {v4 .. v9}, Ls/y;->d(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " does not implement interface method onNestedScroll"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ViewParentCompat"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, v1, v3

    sub-int/2addr p1, v10

    aput p1, v1, v3

    aget p1, v1, v2

    sub-int/2addr p1, v11

    aput p1, v1, v2

    :cond_7
    return v2

    :cond_8
    :goto_4
    return v3
.end method

.method public final c(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Ls/e;->b:Landroid/view/ViewParent;

    return-object p1

    :cond_1
    iget-object p1, p0, Ls/e;->a:Landroid/view/ViewParent;

    return-object p1
.end method

.method public final d(II)Z
    .locals 10

    invoke-virtual {p0, p2}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Ls/e;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    :goto_0
    if-eqz v3, :cond_7

    const-string v5, "ViewParent "

    const-string v6, "ViewParentCompat"

    if-nez p2, :cond_1

    :try_start_0
    invoke-static {v3, v4, v0, p1}, Ls/y;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " does not implement interface method onStartNestedScroll"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v7, v2

    :goto_1
    if-eqz v7, :cond_5

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_2

    :cond_2
    iput-object v3, p0, Ls/e;->b:Landroid/view/ViewParent;

    goto :goto_2

    :cond_3
    iput-object v3, p0, Ls/e;->a:Landroid/view/ViewParent;

    :goto_2
    if-nez p2, :cond_4

    :try_start_1
    invoke-static {v3, v4, v0, p1}, Ls/y;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return v1

    :cond_5
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_6

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    :cond_6
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_7
    return v2
.end method

.method public final e(I)V
    .locals 4

    invoke-virtual {p0, p1}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {v0, v1}, Ls/y;->g(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewParent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Ls/e;->b:Landroid/view/ViewParent;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Ls/e;->a:Landroid/view/ViewParent;

    :cond_3
    :goto_1
    return-void
.end method
