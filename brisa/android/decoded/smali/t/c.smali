.class public final Lt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lt/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x40

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x80

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x100

    const-class v4, Lt/e;

    invoke-direct {v0, v1, v3, v4}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x200

    invoke-direct {v0, v1, v3, v4}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x400

    const-class v4, Lt/f;

    invoke-direct {v0, v1, v3, v4}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x800

    invoke-direct {v0, v1, v3, v4}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x2000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v3, 0x4000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const v3, 0x8000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/high16 v3, 0x10000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/high16 v3, 0x20000

    const-class v4, Lt/j;

    invoke-direct {v0, v1, v3, v4}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/high16 v3, 0x40000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/high16 v3, 0x80000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/high16 v3, 0x100000

    invoke-direct {v0, v1, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/high16 v3, 0x200000

    const-class v4, Lt/k;

    invoke-direct {v0, v1, v3, v4}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020036

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020037

    const-class v6, Lt/h;

    invoke-direct {v0, v4, v5, v6}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020038

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020039

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x102003a

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x102003b

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    invoke-static {}, Lcom/brisa/local/n;->c()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    const v6, 0x1020046

    invoke-direct {v0, v5, v6, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v4, :cond_1

    invoke-static {}, Lcom/brisa/local/n;->n()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    const v6, 0x1020047

    invoke-direct {v0, v5, v6, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v4, :cond_2

    invoke-static {}, Lcom/brisa/local/n;->q()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    const v6, 0x1020048

    invoke-direct {v0, v5, v6, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v4, :cond_3

    invoke-static {}, Lcom/brisa/local/n;->r()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    const v5, 0x1020049

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x102003c

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x102003d

    const-class v6, Lt/i;

    invoke-direct {v0, v4, v5, v6}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020042

    const-class v6, Lt/g;

    invoke-direct {v0, v4, v5, v6}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_4

    invoke-static {}, LN0/n;->i()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    const v6, 0x1020044

    invoke-direct {v0, v5, v6, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v4, :cond_5

    invoke-static {}, LN0/n;->p()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v1

    :goto_5
    const v5, 0x1020045

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_6

    invoke-static {}, LG/l;->i()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v5

    goto :goto_6

    :cond_6
    move-object v5, v1

    :goto_6
    const v6, 0x102004a

    invoke-direct {v0, v5, v6, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v4, :cond_7

    invoke-static {}, LG/l;->t()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    goto :goto_7

    :cond_7
    move-object v4, v1

    :goto_7
    const v5, 0x1020054

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v2, :cond_8

    invoke-static {}, LG/d;->e()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    goto :goto_8

    :cond_8
    move-object v4, v1

    :goto_8
    const v5, 0x1020055

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v2, :cond_9

    invoke-static {}, LG/d;->m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v4

    goto :goto_9

    :cond_9
    move-object v4, v1

    :goto_9
    const v5, 0x1020056

    invoke-direct {v0, v4, v5, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    if-lt v3, v2, :cond_a

    invoke-static {}, LG/d;->o()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    goto :goto_a

    :cond_a
    move-object v2, v1

    :goto_a
    const v4, 0x1020057

    invoke-direct {v0, v2, v4, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    new-instance v0, Lt/c;

    const/16 v2, 0x21

    if-lt v3, v2, :cond_b

    invoke-static {}, LP/a;->d()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    const v3, 0x1020058

    invoke-direct {v0, v2, v3, v1}, Lt/c;-><init>(Ljava/lang/Object;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lt/c;->a:Ljava/lang/Object;

    return-void

    :cond_0
    iput-object p1, p0, Lt/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt/c;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lt/c;

    iget-object p1, p1, Lt/c;->a:Ljava/lang/Object;

    iget-object v1, p0, Lt/c;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    return v0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lt/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
