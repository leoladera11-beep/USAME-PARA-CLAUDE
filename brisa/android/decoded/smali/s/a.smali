.class public final Ls/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Ls/c;


# direct methods
.method public constructor <init>(Ls/c;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Ls/a;->a:Ls/c;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2}, Ls/c;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1}, Ls/c;->b(Landroid/view/View;)LZ0/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, LZ0/i;->e:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2}, Ls/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    new-instance v0, Lt/d;

    invoke-direct {v0, p2}, Lt/d;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v1, Ls/u;->a:Ljava/lang/reflect/Field;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_0

    invoke-static {p1}, Ls/p;->d(Landroid/view/View;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_0
    const v5, 0x7f090092

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    check-cast v5, Ljava/lang/Boolean;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    if-lt v1, v4, :cond_3

    invoke-static {p2, v5}, LN0/n;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    or-int/2addr v5, v10

    invoke-virtual {v9, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    if-lt v1, v4, :cond_5

    invoke-static {p1}, Ls/p;->c(Landroid/view/View;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3

    :cond_5
    const v5, 0x7f09008d

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v5

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v6, v7

    :goto_4
    if-lt v1, v4, :cond_8

    invoke-static {p2, v6}, LN0/n;->q(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    goto :goto_6

    :cond_8
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, v8, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, -0x3

    if-eqz v6, :cond_9

    const/4 v6, 0x2

    goto :goto_5

    :cond_9
    move v6, v7

    :goto_5
    or-int/2addr v5, v6

    invoke-virtual {v3, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    :goto_6
    const-class v3, Ljava/lang/CharSequence;

    if-lt v1, v4, :cond_b

    invoke-static {p1}, Ls/p;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_7

    :cond_b
    const v5, 0x7f09008e

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    move-object v5, v2

    :goto_7
    check-cast v5, Ljava/lang/CharSequence;

    if-lt v1, v4, :cond_d

    invoke-static {p2, v5}, LN0/n;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_8
    const/16 v4, 0x1e

    if-lt v1, v4, :cond_e

    invoke-static {p1}, Ls/r;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_9

    :cond_e
    const v5, 0x7f090093

    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v2, v5

    :cond_f
    :goto_9
    check-cast v2, Ljava/lang/CharSequence;

    if-lt v1, v4, :cond_10

    invoke-static {p2, v2}, LG/l;->q(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_10
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_a
    iget-object v1, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v1, p1, v0}, Ls/c;->d(Landroid/view/View;Lt/d;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    const p2, 0x7f09008b

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_11

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_11
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v7, p2, :cond_12

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt/c;

    iget-object p2, p2, Lt/c;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, v0, Lt/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2}, Ls/c;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->f(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2, p3}, Ls/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2}, Ls/c;->h(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Ls/a;->a:Ls/c;

    invoke-virtual {v0, p1, p2}, Ls/c;->i(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
