.class public Landroidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final A0:[Ljava/lang/Class;

.field public static final B0:LR0/w;

.field public static final C0:LR0/P;

.field public static final w0:[I

.field public static final x0:F

.field public static final y0:Z

.field public static final z0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:LR0/C;

.field public F:Landroid/widget/EdgeEffect;

.field public G:Landroid/widget/EdgeEffect;

.field public H:Landroid/widget/EdgeEffect;

.field public I:Landroid/widget/EdgeEffect;

.field public J:LR0/D;

.field public K:I

.field public L:I

.field public M:Landroid/view/VelocityTracker;

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public final S:I

.field public final T:I

.field public final U:F

.field public final V:F

.field public W:Z

.field public final a:F

.field public final a0:LR0/S;

.field public final b:Lcom/brisa/local/j;

.field public b0:LR0/p;

.field public final c:LM0/s0;

.field public final c0:LJ/f;

.field public d:LR0/N;

.field public final d0:LR0/O;

.field public final e:LC2/b;

.field public e0:LR0/I;

.field public final f:LB/A;

.field public f0:Ljava/util/ArrayList;

.field public final g:LN0/O;

.field public g0:Z

.field public h:Z

.field public h0:Z

.field public final i:Landroid/graphics/Rect;

.field public final i0:LR0/y;

.field public final j:Landroid/graphics/Rect;

.field public j0:Z

.field public final k:Landroid/graphics/RectF;

.field public k0:LR0/V;

.field public l:LR0/z;

.field public final l0:[I

.field public m:LR0/F;

.field public m0:Ls/e;

.field public final n:Ljava/util/ArrayList;

.field public final n0:[I

.field public final o:Ljava/util/ArrayList;

.field public final o0:[I

.field public final p:Ljava/util/ArrayList;

.field public final p0:[I

.field public q:LR0/m;

.field public final q0:Ljava/util/ArrayList;

.field public r:Z

.field public final r0:LB/k;

.field public s:Z

.field public s0:Z

.field public t:Z

.field public t0:I

.field public u:I

.field public u0:I

.field public v:Z

.field public final v0:LR0/x;

.field public w:Z

.field public x:Z

.field public y:I

.field public final z:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x1010436

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->w0:[I

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroidx/recyclerview/widget/RecyclerView;->x0:F

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->y0:Z

    sput-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    const-class v0, Landroid/util/AttributeSet;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2, v0, v1, v1}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->A0:[Ljava/lang/Class;

    new-instance v0, LR0/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->B0:LR0/w;

    new-instance v0, LR0/P;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView;->C0:LR0/P;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    const v9, 0x7f040033

    invoke-direct {v1, v2, v4, v9}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/brisa/local/j;

    const/16 v3, 0x12

    invoke-direct {v0, v3}, Lcom/brisa/local/j;-><init>(I)V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->b:Lcom/brisa/local/j;

    new-instance v0, LM0/s0;

    invoke-direct {v0, v1}, LM0/s0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    new-instance v0, LN0/O;

    const/16 v3, 0x1b

    invoke-direct {v0, v3}, LN0/O;-><init>(I)V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    const/4 v10, 0x0

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->u:I

    iput-boolean v10, v1, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    iput-boolean v10, v1, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->C:I

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->D:I

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->C0:LR0/P;

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    new-instance v0, LR0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    iput-object v11, v0, LR0/D;->a:LR0/y;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/D;->b:Ljava/util/ArrayList;

    const-wide/16 v5, 0x78

    iput-wide v5, v0, LR0/D;->c:J

    iput-wide v5, v0, LR0/D;->d:J

    const-wide/16 v5, 0xfa

    iput-wide v5, v0, LR0/D;->e:J

    iput-wide v5, v0, LR0/D;->f:J

    const/4 v12, 0x1

    iput-boolean v12, v0, LR0/i;->g:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->h:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->i:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->j:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->k:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->l:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->m:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->n:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->o:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->p:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->q:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LR0/i;->r:Ljava/util/ArrayList;

    iput-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->K:I

    const/4 v0, -0x1

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView;->L:I

    const/4 v3, 0x1

    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView;->U:F

    iput v3, v1, Landroidx/recyclerview/widget/RecyclerView;->V:F

    iput-boolean v12, v1, Landroidx/recyclerview/widget/RecyclerView;->W:Z

    new-instance v3, LR0/S;

    invoke-direct {v3, v1}, LR0/S;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v3, :cond_0

    new-instance v3, LJ/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:LJ/f;

    new-instance v3, LR0/O;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v10, v3, LR0/O;->a:I

    iput v10, v3, LR0/O;->b:I

    iput v12, v3, LR0/O;->c:I

    iput v10, v3, LR0/O;->d:I

    iput-boolean v10, v3, LR0/O;->e:Z

    iput-boolean v10, v3, LR0/O;->f:Z

    iput-boolean v10, v3, LR0/O;->g:Z

    iput-boolean v10, v3, LR0/O;->h:Z

    iput-boolean v10, v3, LR0/O;->i:Z

    iput-boolean v10, v3, LR0/O;->j:Z

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iput-boolean v10, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    iput-boolean v10, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    new-instance v3, LR0/y;

    invoke-direct {v3, v1}, LR0/y;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->i0:LR0/y;

    iput-boolean v10, v1, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    const/4 v13, 0x2

    new-array v5, v13, [I

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->l0:[I

    new-array v5, v13, [I

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    new-array v5, v13, [I

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    new-array v5, v13, [I

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    new-instance v5, LB/k;

    invoke-direct {v5, v1, v13}, LB/k;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->r0:LB/k;

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->t0:I

    iput v10, v1, Landroidx/recyclerview/widget/RecyclerView;->u0:I

    new-instance v5, LR0/x;

    invoke-direct {v5, v1}, LR0/x;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->v0:LR0/x;

    invoke-virtual {v1, v12}, Landroid/view/View;->setScrollContainer(Z)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->R:I

    invoke-static {v5}, Ls/v;->a(Landroid/view/ViewConfiguration;)F

    move-result v6

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->U:F

    invoke-static {v5}, Ls/v;->b(Landroid/view/ViewConfiguration;)F

    move-result v6

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->V:F

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    iput v6, v1, Landroidx/recyclerview/widget/RecyclerView;->S:I

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView;->T:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43200000    # 160.0f

    mul-float/2addr v5, v6

    const v6, 0x43c10b3d

    mul-float/2addr v5, v6

    const v6, 0x3f570a3d    # 0.84f

    mul-float/2addr v5, v6

    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView;->a:F

    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v5

    if-ne v5, v13, :cond_1

    move v5, v12

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    iput-object v3, v5, LR0/D;->a:LR0/y;

    new-instance v3, LC2/b;

    new-instance v5, LR0/x;

    invoke-direct {v5, v1}, LR0/x;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v3, v5}, LC2/b;-><init>(LR0/x;)V

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    new-instance v3, LB/A;

    new-instance v5, LR0/y;

    invoke-direct {v5, v1}, LR0/y;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v3, v5}, LB/A;-><init>(LR0/y;)V

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    sget-object v3, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ls/n;->b(Landroid/view/View;)I

    move-result v3

    const/16 v8, 0x8

    if-nez v3, :cond_2

    invoke-static {v1, v8}, Ls/n;->l(Landroid/view/View;I)V

    :cond_2
    invoke-static {v1}, Ls/g;->c(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v12}, Ls/g;->s(Landroid/view/View;I)V

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->z:Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, LR0/V;

    invoke-direct {v3, v1}, LR0/V;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(LR0/V;)V

    sget-object v3, LQ0/a;->a:[I

    invoke-virtual {v2, v4, v3, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1d

    if-lt v6, v14, :cond_4

    const v6, 0x7f040033

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Ls/q;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_4
    move-object v15, v2

    move-object v2, v5

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2, v13, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v0, :cond_5

    const/high16 v0, 0x40000

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_5
    invoke-virtual {v2, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_7

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v17, v0

    new-instance v0, LR0/m;

    const v4, 0x7f06002a

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move/from16 v19, v13

    const v13, 0x7f06002c

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f06002b

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    move-object v14, v6

    move v6, v4

    move-object v4, v14

    move-object v14, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    move v7, v13

    move/from16 v18, v17

    move-object/from16 v13, p2

    move/from16 v17, v9

    const/4 v9, 0x4

    invoke-direct/range {v0 .. v8}, LR0/m;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to set fast scroller without both required drawables."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move/from16 v18, v0

    move-object v14, v2

    move/from16 v17, v9

    move/from16 v19, v13

    move-object/from16 v13, p2

    move v9, v4

    :goto_2
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, ": Could not instantiate the LayoutManager: "

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v3, v0

    goto :goto_4

    :cond_8
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_5
    invoke-static {v3, v10, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v4, LR0/F;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->A0:[Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v15, v5, v10

    aput-object v13, v5, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v18
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v5, v0

    :try_start_2
    invoke-virtual {v4, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    :try_start_3
    invoke-virtual {v0, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/F;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LR0/F;)V

    goto/16 :goto_c

    :catch_6
    move-exception v0

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Error creating LayoutManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_7
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Class is not a LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Cannot access non-public constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_9
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :goto_a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :goto_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Unable to find LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    :goto_c
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->w0:[I

    move/from16 v2, v17

    invoke-virtual {v15, v13, v3, v2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_c

    const v6, 0x7f040033

    const/4 v7, 0x0

    move-object v4, v13

    move-object v2, v15

    invoke-static/range {v1 .. v7}, Ls/q;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_c
    invoke-virtual {v5, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const v0, 0x7f090073

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->B(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static F(Landroid/view/View;)LR0/T;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, LR0/G;

    iget-object p0, p0, LR0/G;->a:LR0/T;

    return-object p0
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic c(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public static g(LR0/T;)V
    .locals 3

    iget-object v0, p0, LR0/T;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, LR0/T;->a:Landroid/view/View;

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, LR0/T;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    :goto_1
    return-void
.end method

.method private getScrollingChildHelper()Ls/e;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Ls/e;

    if-nez v0, :cond_0

    new-instance v0, Ls/e;

    invoke-direct {v0, p0}, Ls/e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Ls/e;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m0:Ls/e;

    return-object v0
.end method

.method public static j(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-lez p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    neg-int p2, p0

    int-to-float p2, p2

    mul-float/2addr p2, v2

    int-to-float v1, p3

    div-float/2addr p2, v1

    neg-int p3, p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    invoke-static {p1, p2, v0}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move-result p2

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eq p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    sub-int/2addr p0, p2

    return p0

    :cond_1
    if-gez p0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p2}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    int-to-float p1, p0

    mul-float/2addr p1, v2

    int-to-float p3, p3

    div-float/2addr p1, p3

    div-float/2addr p3, v2

    invoke-static {p2, p1, v0}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eq p1, p0, :cond_2

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->finish()V

    :cond_2
    sub-int/2addr p0, p1

    :cond_3
    return p0
.end method


# virtual methods
.method public final A([I)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v0}, LB/A;->y()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    aput v0, p1, v2

    aput v0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v6, v5}, LB/A;->x(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v6

    invoke-virtual {v6}, LR0/T;->n()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, LR0/T;->b()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    aput v3, p1, v2

    aput v4, p1, v1

    return-void
.end method

.method public final C(I)LR0/T;
    .locals 5

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v0}, LB/A;->F()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v3, v2}, LB/A;->E(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, LR0/T;->g()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->D(LR0/T;)I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object v1, v3, LR0/T;->a:Landroid/view/View;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v4, v4, LB/A;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final D(LR0/T;)I
    .locals 7

    iget v0, p1, LR0/T;->i:I

    and-int/lit16 v0, v0, 0x20c

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, LR0/T;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p1, LR0/T;->c:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v0, v0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/a;

    iget v5, v4, LR0/a;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    iget v5, v4, LR0/a;->b:I

    if-ne v5, p1, :cond_3

    iget p1, v4, LR0/a;->c:I

    goto :goto_2

    :cond_3
    if-ge v5, p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    iget v4, v4, LR0/a;->c:I

    if-gt v4, p1, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    iget v5, v4, LR0/a;->b:I

    if-gt v5, p1, :cond_8

    iget v4, v4, LR0/a;->c:I

    add-int/2addr v5, v4

    if-le v5, p1, :cond_6

    :goto_1
    return v1

    :cond_6
    sub-int/2addr p1, v4

    goto :goto_2

    :cond_7
    iget v5, v4, LR0/a;->b:I

    if-gt v5, p1, :cond_8

    iget v4, v4, LR0/a;->c:I

    add-int/2addr p1, v4

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return p1
.end method

.method public final E(Landroid/view/View;)LR0/T;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object p1

    return-object p1
.end method

.method public final G(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    iget-boolean v1, v0, LR0/G;->c:Z

    iget-object v2, v0, LR0/G;->b:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget-boolean v1, v1, LR0/O;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, LR0/G;->a:LR0/T;

    invoke-virtual {v1}, LR0/T;->j()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LR0/G;->a:LR0/T;

    invoke-virtual {v1}, LR0/T;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LR0/m;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, LR0/G;

    iget-object v7, v7, LR0/G;->a:LR0/T;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v6

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, v0, LR0/G;->c:Z

    return-object v2
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v0, v0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final I()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final J()V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v0}, LB/A;->F()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v4, v2}, LB/A;->E(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LR0/G;

    iput-boolean v3, v4, LR0/G;->c:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v0, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/T;

    iget-object v4, v4, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LR0/G;

    if-eqz v4, :cond_1

    iput-boolean v3, v4, LR0/G;->c:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final K(IIZ)V
    .locals 9

    add-int v0, p1, p2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v1}, LB/A;->F()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v5, v2}, LB/A;->E(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, LR0/T;->n()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v5, LR0/T;->c:I

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    if-lt v6, v0, :cond_0

    neg-int v3, p2

    invoke-virtual {v5, v3, p3}, LR0/T;->k(IZ)V

    iput-boolean v4, v7, LR0/O;->e:Z

    goto :goto_1

    :cond_0
    if-lt v6, p1, :cond_1

    add-int/lit8 v6, p1, -0x1

    neg-int v8, p2

    invoke-virtual {v5, v3}, LR0/T;->a(I)V

    invoke-virtual {v5, v8, p3}, LR0/T;->k(IZ)V

    iput v6, v5, LR0/T;->c:I

    iput-boolean v4, v7, LR0/O;->e:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v2, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/T;

    if-eqz v4, :cond_4

    iget v6, v4, LR0/T;->c:I

    if-lt v6, v0, :cond_3

    neg-int v6, p2

    invoke-virtual {v4, v6, p3}, LR0/T;->k(IZ)V

    goto :goto_3

    :cond_3
    if-lt v6, p1, :cond_4

    invoke-virtual {v4, v3}, LR0/T;->a(I)V

    invoke-virtual {v1, v5}, LM0/s0;->i(I)V

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final L()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    return-void
.end method

.method public final M(Z)V
    .locals 6

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    if-eqz p1, :cond_4

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->z:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v0, p1}, Lt/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/T;

    iget-object v2, v1, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_2

    invoke-virtual {v1}, LR0/T;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, LR0/T;->p:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v4, v1, LR0/T;->a:Landroid/view/View;

    sget-object v5, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v4, v2}, Ls/g;->s(Landroid/view/View;I)V

    iput v3, v1, LR0/T;->p:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void
.end method

.method public final N(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    :cond_1
    return-void
.end method

.method public final O()V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    if-eqz v0, :cond_0

    sget-object v0, Ls/u;->a:Ljava/lang/reflect/Field;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:LB/k;

    invoke-static {p0, v0}, Ls/g;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    :cond_0
    return-void
.end method

.method public final P(LR0/T;LE0/e;)V
    .locals 4

    iget v0, p1, LR0/T;->i:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p1, LR0/T;->i:I

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget-boolean v0, v0, LR0/O;->g:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR0/T;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR0/T;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LR0/T;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, LR0/T;->c:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, p1}, LN0/O;->G(JLR0/T;)V

    :cond_0
    iget-object v0, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Lh/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/c0;

    if-nez v1, :cond_1

    invoke-static {}, LR0/c0;->a()LR0/c0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p2, v1, LR0/c0;->b:LE0/e;

    iget p1, v1, LR0/c0;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v1, LR0/c0;->a:I

    return-void
.end method

.method public final Q(FI)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    neg-float p2, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, p2, v2}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-static {v0, p2, p1}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final R(FI)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    neg-float p2, p2

    invoke-static {v0, p2, p1}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    invoke-static {v0}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, p2, v2}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-static {p2}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_4
    move v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final S(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, LR0/G;

    if-eqz v1, :cond_1

    check-cast v0, LR0/G;

    iget-boolean v1, v0, LR0/G;->c:Z

    if-nez v1, :cond_1

    iget-object v0, v0, LR0/G;->b:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->left:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    move v10, v1

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, LR0/F;->g0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public final T()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ls/g;->k(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final U(IILandroid/view/MotionEvent;I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    aput v11, v7, v11

    aput v11, v7, v10

    invoke-virtual {v0, v7, v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->V([III)V

    aget v1, v7, v11

    aget v2, v7, v10

    sub-int v3, v8, v1

    sub-int v4, v9, v2

    goto :goto_0

    :cond_0
    move v1, v11

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    aput v11, v7, v11

    aput v11, v7, v10

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->q(IIII[II[I)V

    aget v5, v7, v11

    sub-int/2addr v3, v5

    aget v6, v7, v10

    sub-int/2addr v4, v6

    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v11

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v10

    :goto_2
    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    aget v12, v7, v11

    sub-int/2addr v6, v12

    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    aget v7, v7, v10

    sub-int/2addr v6, v7

    iput v6, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    aget v13, v6, v11

    add-int/2addr v13, v12

    aput v13, v6, v11

    aget v12, v6, v10

    add-int/2addr v12, v7

    aput v12, v6, v10

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_c

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    const/16 v7, 0x2002

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    :cond_4
    move/from16 v16, v10

    goto/16 :goto_7

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v3, v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v4, v4

    const/4 v12, 0x0

    cmpg-float v13, v3, v12

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v13, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    neg-float v15, v3

    move/from16 v16, v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v15, v10

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    sub-float v7, v14, v7

    invoke-static {v13, v15, v7}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    :goto_3
    move/from16 v7, v16

    goto :goto_4

    :cond_6
    move/from16 v16, v10

    cmpl-float v10, v3, v12

    if-lez v10, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->u()V

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v3, v13

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v7, v15

    invoke-static {v10, v13, v7}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_7
    move v7, v11

    :goto_4
    cmpg-float v10, v4, v12

    if-gez v10, :cond_8

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->v()V

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    neg-float v10, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v10, v13

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    invoke-static {v7, v10, v6}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    :goto_5
    move/from16 v7, v16

    goto :goto_6

    :cond_8
    cmpl-float v10, v4, v12

    if-lez v10, :cond_9

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->s()V

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v4, v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    sub-float/2addr v14, v6

    invoke-static {v7, v10, v14}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    goto :goto_5

    :cond_9
    :goto_6
    if-nez v7, :cond_a

    cmpl-float v3, v3, v12

    if-nez v3, :cond_a

    cmpl-float v3, v4, v12

    if-eqz v3, :cond_b

    :cond_a
    sget-object v3, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ls/g;->k(Landroid/view/View;)V

    :cond_b
    :goto_7
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->i(II)V

    goto :goto_8

    :cond_c
    move/from16 v16, v10

    :goto_8
    if-nez v1, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->r(II)V

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_f
    if-nez v5, :cond_11

    if-nez v1, :cond_11

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    return v11

    :cond_11
    :goto_9
    return v16
.end method

.method public final V([III)V
    .locals 9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()V

    sget v0, Lp/e;->a:I

    const-string v0, "RV Scroll"

    invoke-static {v0}, Lp/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->x(LR0/O;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3, p2, v1, v0}, LR0/F;->i0(ILM0/s0;LR0/O;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    if-eqz p3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3, p3, v1, v0}, LR0/F;->j0(ILM0/s0;LR0/O;)I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_1
    invoke-static {}, Lp/d;->b()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v0}, LB/A;->y()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, LB/A;->x(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)LR0/T;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v5, LR0/T;->h:LR0/T;

    if-eqz v5, :cond_3

    iget-object v5, v5, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v4, v7, :cond_3

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->M(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    if-eqz p1, :cond_5

    aput p2, p1, v2

    aput p3, p1, v0

    :cond_5
    return-void
.end method

.method public final W(Landroid/widget/EdgeEffect;II)Z
    .locals 7

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result p1

    int-to-float p3, p3

    mul-float/2addr p1, p3

    neg-int p2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3eb33333    # 0.35f

    mul-float/2addr p2, p3

    const p3, 0x3c75c28f    # 0.015f

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a:F

    mul-float/2addr v0, p3

    div-float/2addr p2, v0

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    sget v1, Landroidx/recyclerview/widget/RecyclerView;->x0:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, v3

    float-to-double v5, v0

    div-double/2addr v1, v3

    mul-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double/2addr p2, v5

    double-to-float p2, p2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final X(IIZ)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, LR0/F;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, p1

    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {p1}, LR0/F;->d()Z

    move-result p1

    if-nez p1, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    if-nez v5, :cond_5

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    const/4 p1, 0x1

    if-eqz p3, :cond_8

    if-eqz v5, :cond_6

    move p2, p1

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    if-eqz v6, :cond_7

    or-int/lit8 p2, p2, 0x2

    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Ls/e;->d(II)Z

    :cond_8
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    iget-object p3, p2, LR0/S;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_9

    move v3, p1

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    if-eqz v3, :cond_a

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_6

    :cond_a
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_6
    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    int-to-float v0, v0

    int-to-float v2, v4

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v0, p2, LR0/S;->h:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->B0:LR0/w;

    if-eq v0, v2, :cond_c

    iput-object v2, p2, LR0/S;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p2, LR0/S;->g:Landroid/widget/OverScroller;

    :cond_c
    iput v1, p2, LR0/S;->f:I

    iput v1, p2, LR0/S;->e:I

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v2, p2, LR0/S;->g:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-boolean p3, p2, LR0/S;->i:Z

    if-eqz p3, :cond_d

    iput-boolean p1, p2, LR0/S;->j:Z

    return-void

    :cond_d
    iget-object p1, p2, LR0/S;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object p3, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p1, p2}, Ls/g;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Y()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    :cond_0
    return-void
.end method

.method public final Z(Z)V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-nez v2, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    :cond_2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-nez p1, :cond_3

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    :cond_3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    return-void
.end method

.method public final a0(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls/e;->e(I)V

    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, LR0/G;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    check-cast p1, LR0/G;

    invoke-virtual {v0, p1}, LR0/F;->e(LR0/G;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/F;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v0, v1}, LR0/F;->i(LR0/O;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/F;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v0, v1}, LR0/F;->j(LR0/O;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/F;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v0, v1}, LR0/F;->k(LR0/O;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/F;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v0, v1}, LR0/F;->l(LR0/O;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/F;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v0, v1}, LR0/F;->m(LR0/O;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/F;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v0, v1}, LR0/F;->n(LR0/O;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    iget-boolean v1, v0, Ls/e;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    :try_start_0
    invoke-static {v1, v0, p1, p2, p3}, Ls/y;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " does not implement interface method onNestedFling"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ViewParentCompat"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v2
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    iget-boolean v1, v0, Ls/e;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    :try_start_0
    invoke-static {v1, v0, p1, p2}, Ls/y;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ViewParent "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedPreFling"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewParentCompat"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v2
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ls/e;->a(III[I[I)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Ls/e;->b(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LR0/m;

    iget v7, v6, LR0/m;->q:I

    iget-object v8, v6, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_3

    iget v7, v6, LR0/m;->r:I

    iget-object v8, v6, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v7, v6, LR0/m;->A:I

    if-eqz v7, :cond_4

    iget-boolean v7, v6, LR0/m;->t:Z

    if-eqz v7, :cond_2

    iget v7, v6, LR0/m;->q:I

    iget v8, v6, LR0/m;->e:I

    sub-int/2addr v7, v8

    iget v9, v6, LR0/m;->l:I

    iget v10, v6, LR0/m;->k:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v9, v11

    iget-object v11, v6, LR0/m;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v11, v2, v2, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v10, v6, LR0/m;->d:Landroid/graphics/drawable/Drawable;

    iget v12, v6, LR0/m;->f:I

    iget v13, v6, LR0/m;->r:I

    invoke-virtual {v10, v2, v2, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v12, v6, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v13, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v12}, Ls/h;->d(Landroid/view/View;)I

    move-result v12

    if-ne v12, v5, :cond_1

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v5, v8

    int-to-float v7, v9

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v5, v8

    int-to-float v5, v5

    neg-int v7, v9

    int-to-float v7, v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    int-to-float v5, v7

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v5, v9

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v5, v7

    int-to-float v5, v5

    neg-int v7, v9

    int-to-float v7, v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_1
    iget-boolean v5, v6, LR0/m;->u:Z

    if-eqz v5, :cond_4

    iget v5, v6, LR0/m;->r:I

    iget v7, v6, LR0/m;->i:I

    sub-int/2addr v5, v7

    iget v8, v6, LR0/m;->o:I

    iget v9, v6, LR0/m;->n:I

    div-int/lit8 v10, v9, 0x2

    sub-int/2addr v8, v10

    iget-object v10, v6, LR0/m;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v10, v2, v2, v9, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, v6, LR0/m;->h:Landroid/graphics/drawable/Drawable;

    iget v9, v6, LR0/m;->q:I

    iget v6, v6, LR0/m;->j:I

    invoke-virtual {v7, v2, v2, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v6, v5

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v6, v8

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v4, v8

    int-to-float v4, v4

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v4, v6, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v6, LR0/m;->q:I

    iget-object v4, v6, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v6, LR0/m;->r:I

    invoke-virtual {v6, v2}, LR0/m;->d(I)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v3, v6

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_6

    :cond_8
    move v3, v2

    :goto_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_a

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_7

    :cond_a
    move v4, v2

    :goto_7
    or-int/2addr v3, v4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-boolean v6, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    goto :goto_8

    :cond_c
    move v6, v2

    :goto_8
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v6, v6

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_d

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    goto :goto_9

    :cond_d
    move v4, v2

    :goto_9
    or-int/2addr v3, v4

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v4, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_a
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_10

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v2, v5

    :cond_10
    or-int/2addr v3, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    if-nez v3, :cond_12

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_12

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {p1}, LR0/D;->f()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_b

    :cond_12
    move v5, v3

    :goto_b
    if-eqz v5, :cond_13

    sget-object p1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ls/g;->k(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final e(LR0/T;)V
    .locals 5

    iget-object v0, p1, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)LR0/T;

    move-result-object v4

    invoke-virtual {v3, v4}, LM0/s0;->n(LR0/T;)V

    invoke-virtual {p1}, LR0/T;->i()Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1, v2}, LB/A;->r(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {p1, v0, v3, v2}, LB/A;->q(Landroid/view/View;IZ)V

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v1, p1, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LR0/y;

    iget-object v1, v1, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v2, p1, LB/A;->g:Ljava/lang/Object;

    check-cast v2, LR0/b;

    invoke-virtual {v2, v1}, LR0/b;->r(I)V

    invoke-virtual {p1, v0}, LB/A;->H(Landroid/view/View;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    const/16 v9, 0x11

    const/16 v11, 0x21

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v3, :cond_b

    if-eq v2, v14, :cond_1

    if-ne v2, v4, :cond_b

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, LR0/F;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v2, v14, :cond_2

    const/16 v3, 0x82

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-nez v3, :cond_8

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v15}, LR0/F;->c()Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v3, v3, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v15, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v3}, Ls/h;->d(Landroid/view/View;)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    if-ne v2, v14, :cond_5

    move v15, v4

    goto :goto_4

    :cond_5
    move v15, v5

    :goto_4
    xor-int/2addr v3, v15

    if-eqz v3, :cond_6

    const/16 v3, 0x42

    goto :goto_5

    :cond_6
    move v3, v9

    :goto_5
    invoke-virtual {v6, v0, v1, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_6

    :cond_7
    move v3, v5

    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3, v1, v2, v8, v7}, LR0/F;->N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    :cond_a
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    goto :goto_8

    :cond_b
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->k()V

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_c

    :goto_7
    return-object v13

    :cond_c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3, v1, v2, v8, v7}, LR0/F;->N(Landroid/view/View;ILM0/s0;LR0/O;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    goto :goto_8

    :cond_d
    move-object v3, v6

    :goto_8
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_e
    invoke-virtual {v0, v3, v13}, Landroidx/recyclerview/widget/RecyclerView;->S(Landroid/view/View;Landroid/view/View;)V

    return-object v1

    :cond_f
    if-eqz v3, :cond_1d

    if-eq v3, v0, :cond_1d

    if-ne v3, v1, :cond_10

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_11

    move v4, v5

    goto/16 :goto_d

    :cond_11
    if-nez v1, :cond_12

    goto/16 :goto_d

    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_13

    goto/16 :goto_d

    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v13, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v6, v6, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v7, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v6}, Ls/h;->d(Landroid/view/View;)I

    move-result v6

    if-ne v6, v4, :cond_14

    const/4 v6, -0x1

    goto :goto_9

    :cond_14
    move v6, v4

    :goto_9
    iget v15, v8, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    if-lt v15, v5, :cond_15

    iget v7, v8, Landroid/graphics/Rect;->right:I

    if-gt v7, v5, :cond_16

    :cond_15
    iget v7, v8, Landroid/graphics/Rect;->right:I

    iget v12, v13, Landroid/graphics/Rect;->right:I

    if-ge v7, v12, :cond_16

    move v5, v4

    goto :goto_a

    :cond_16
    iget v7, v8, Landroid/graphics/Rect;->right:I

    iget v12, v13, Landroid/graphics/Rect;->right:I

    if-gt v7, v12, :cond_17

    if-lt v15, v12, :cond_18

    :cond_17
    if-le v15, v5, :cond_18

    const/4 v5, -0x1

    goto :goto_a

    :cond_18
    const/4 v5, 0x0

    :goto_a
    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v12, v13, Landroid/graphics/Rect;->top:I

    if-lt v7, v12, :cond_19

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v15, v12, :cond_1a

    :cond_19
    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v15, v10, :cond_1a

    move v7, v4

    goto :goto_b

    :cond_1a
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v10, :cond_1b

    if-lt v7, v10, :cond_1c

    :cond_1b
    if-le v7, v12, :cond_1c

    const/4 v7, -0x1

    goto :goto_b

    :cond_1c
    const/4 v7, 0x0

    :goto_b
    if-eq v2, v4, :cond_23

    if-eq v2, v14, :cond_22

    if-eq v2, v9, :cond_21

    if-eq v2, v11, :cond_20

    const/16 v6, 0x42

    if-eq v2, v6, :cond_1f

    const/16 v6, 0x82

    if-ne v2, v6, :cond_1e

    if-lez v7, :cond_1d

    goto :goto_d

    :cond_1d
    :goto_c
    const/4 v4, 0x0

    goto :goto_d

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid direction: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    if-lez v5, :cond_1d

    goto :goto_d

    :cond_20
    if-gez v7, :cond_1d

    goto :goto_d

    :cond_21
    if-gez v5, :cond_1d

    goto :goto_d

    :cond_22
    if-gtz v7, :cond_24

    if-nez v7, :cond_1d

    mul-int/2addr v5, v6

    if-lez v5, :cond_1d

    goto :goto_d

    :cond_23
    if-ltz v7, :cond_24

    if-nez v7, :cond_1d

    mul-int/2addr v5, v6

    if-gez v5, :cond_1d

    :cond_24
    :goto_d
    if-eqz v4, :cond_25

    return-object v3

    :cond_25
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR0/F;->q()LR0/G;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LR0/F;->r(Landroid/content/Context;Landroid/util/AttributeSet;)LR0/G;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, LR0/F;->s(Landroid/view/ViewGroup$LayoutParams;)LR0/G;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    return-object v0
.end method

.method public getAdapter()LR0/z;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()LR0/V;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->k0:LR0/V;

    return-object v0
.end method

.method public getEdgeEffectFactory()LR0/C;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    return-object v0
.end method

.method public getItemAnimator()LR0/D;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()LR0/F;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->T:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()LR0/H;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Z

    return v0
.end method

.method public getRecycledViewPool()LR0/K;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v0}, LM0/s0;->e()LR0/K;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    return v0
.end method

.method public final h()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v0}, LB/A;->F()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v4, v2}, LB/A;->E(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v4

    invoke-virtual {v4}, LR0/T;->n()Z

    move-result v5

    if-nez v5, :cond_0

    iput v3, v4, LR0/T;->d:I

    iput v3, v4, LR0/T;->f:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v2, v0, LM0/s0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, v0, LM0/s0;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LR0/T;

    iput v3, v7, LR0/T;->d:I

    iput v3, v7, LR0/T;->f:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LR0/T;

    iput v3, v6, LR0/T;->d:I

    iput v3, v6, LR0/T;->f:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, LM0/s0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v4, v0, LM0/s0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/T;

    iput v3, v4, LR0/T;->d:I

    iput v3, v4, LR0/T;->f:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls/e;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final i(II)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    sget-object p1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ls/g;->k(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    return v0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    iget-boolean v0, v0, Ls/e;->d:Z

    return v0
.end method

.method public final k()V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v2, v0, LC2/b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lp/e;->a:I

    invoke-static {v1}, Lp/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    invoke-static {}, Lp/d;->b()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget v0, Lp/e;->a:I

    invoke-static {v1}, Lp/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    invoke-static {}, Lp/d;->b()V

    return-void
.end method

.method public final l(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    sget-object v0, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ls/g;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v1, v0}, LR0/F;->f(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0}, Ls/g;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v1, v0}, LR0/F;->f(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final m()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v1, :cond_1

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    const/4 v3, 0x0

    iput-boolean v3, v1, LR0/O;->h:Z

    iget-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_2

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eq v4, v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->t0:I

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:I

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->s0:Z

    iget v6, v1, LR0/O;->c:I

    if-ne v6, v5, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->n()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v4, v0}, LR0/F;->k0(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    goto :goto_2

    :cond_4
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v7, v6, LC2/b;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v6, v6, LC2/b;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    if-nez v4, :cond_7

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget v4, v4, LR0/F;->m:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_7

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget v4, v4, LR0/F;->n:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eq v4, v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v4, v0}, LR0/F;->k0(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v4, v0}, LR0/F;->k0(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    :goto_2
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, LR0/O;->a(I)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()V

    iput v5, v1, LR0/O;->c:I

    iget-boolean v6, v1, LR0/O;->i:Z

    const/4 v7, 0x0

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    if-eqz v6, :cond_23

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v6}, LB/A;->y()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_3
    if-ltz v6, :cond_17

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v10, v6}, LB/A;->x(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v10

    invoke-virtual {v10}, LR0/T;->n()Z

    move-result v11

    if-eqz v11, :cond_8

    move/from16 v16, v5

    goto/16 :goto_8

    :cond_8
    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, LR0/T;->c:I

    int-to-long v11, v11

    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, LE0/e;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v13, v10}, LE0/e;->b(LR0/T;)V

    iget-object v14, v9, LN0/O;->g:Ljava/lang/Object;

    check-cast v14, Lh/h;

    iget-object v15, v9, LN0/O;->f:Ljava/lang/Object;

    check-cast v15, Lh/j;

    move/from16 v16, v5

    iget-object v5, v14, Lh/h;->f:[J

    iget v3, v14, Lh/h;->h:I

    invoke-static {v5, v3, v11, v12}, Lh/g;->b([JIJ)I

    move-result v3

    if-ltz v3, :cond_9

    iget-object v5, v14, Lh/h;->g:[Ljava/lang/Object;

    aget-object v3, v5, v3

    sget-object v5, Lh/h;->i:Ljava/lang/Object;

    if-ne v3, v5, :cond_a

    :cond_9
    move-object v3, v7

    :cond_a
    check-cast v3, LR0/T;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, LR0/T;->n()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v15, v3, v7}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/c0;

    if-eqz v5, :cond_b

    iget v5, v5, LR0/c0;->a:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    move/from16 v5, v16

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v15, v10, v7}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LR0/c0;

    if-eqz v14, :cond_c

    iget v14, v14, LR0/c0;->a:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_c

    move/from16 v14, v16

    goto :goto_5

    :cond_c
    const/4 v14, 0x0

    :goto_5
    if-eqz v5, :cond_d

    if-ne v3, v10, :cond_d

    invoke-virtual {v9, v10, v13}, LN0/O;->H(LR0/T;LE0/e;)V

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v9, v3, v4}, LN0/O;->c0(LR0/T;I)LE0/e;

    move-result-object v15

    invoke-virtual {v9, v10, v13}, LN0/O;->H(LR0/T;LE0/e;)V

    const/16 v13, 0x8

    invoke-virtual {v9, v10, v13}, LN0/O;->c0(LR0/T;I)LE0/e;

    move-result-object v13

    if-nez v15, :cond_11

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v5}, LB/A;->y()I

    move-result v5

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_10

    iget-object v14, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v14, v13}, LB/A;->x(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v14

    if-ne v14, v10, :cond_e

    move/from16 v18, v5

    goto :goto_7

    :cond_e
    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, LR0/T;->c:I

    move/from16 v18, v5

    int-to-long v4, v15

    cmp-long v4, v4, v11

    if-eqz v4, :cond_f

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v18

    const/4 v4, 0x4

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n View Holder 2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be found but it is necessary for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LR0/T;->m(Z)V

    if-eqz v5, :cond_12

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->e(LR0/T;)V

    :cond_12
    if-eq v3, v10, :cond_14

    if-eqz v14, :cond_13

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->e(LR0/T;)V

    :cond_13
    iput-object v10, v3, LR0/T;->g:LR0/T;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->e(LR0/T;)V

    invoke-virtual {v8, v3}, LM0/s0;->n(LR0/T;)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, LR0/T;->m(Z)V

    iput-object v3, v10, LR0/T;->h:LR0/T;

    :cond_14
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {v4, v3, v10, v15, v13}, LR0/D;->a(LR0/T;LR0/T;LE0/e;LE0/e;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    goto :goto_8

    :cond_15
    invoke-virtual {v9, v10, v13}, LN0/O;->H(LR0/T;LE0/e;)V

    :cond_16
    :goto_8
    add-int/lit8 v6, v6, -0x1

    move/from16 v5, v16

    const/4 v3, 0x0

    const/4 v4, 0x4

    goto/16 :goto_3

    :cond_17
    move/from16 v16, v5

    iget-object v2, v9, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, Lh/j;

    iget v3, v2, Lh/j;->g:I

    add-int/lit8 v3, v3, -0x1

    :goto_9
    if-ltz v3, :cond_24

    invoke-virtual {v2, v3}, Lh/j;->g(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, LR0/T;

    invoke-virtual {v2, v3}, Lh/j;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/c0;

    iget v5, v4, LR0/c0;->a:I

    and-int/lit8 v6, v5, 0x3

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->v0:LR0/x;

    const/4 v12, 0x3

    if-ne v6, v12, :cond_19

    iget-object v5, v10, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v10, v11, LR0/T;->a:Landroid/view/View;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v6, v10, v5}, LR0/F;->e0(Landroid/view/View;LM0/s0;)V

    :goto_a
    move-object v6, v7

    :cond_18
    :goto_b
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_19
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_1b

    iget-object v5, v4, LR0/c0;->b:LE0/e;

    if-nez v5, :cond_1a

    iget-object v5, v10, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v10, v11, LR0/T;->a:Landroid/view/View;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v6, v10, v5}, LR0/F;->e0(Landroid/view/View;LM0/s0;)V

    goto :goto_a

    :cond_1a
    iget-object v6, v4, LR0/c0;->c:LE0/e;

    invoke-virtual {v10, v11, v5, v6}, LR0/x;->g(LR0/T;LE0/e;LE0/e;)V

    goto :goto_a

    :cond_1b
    and-int/lit8 v6, v5, 0xe

    const/16 v12, 0xe

    if-ne v6, v12, :cond_1c

    iget-object v5, v4, LR0/c0;->b:LE0/e;

    iget-object v6, v4, LR0/c0;->c:LE0/e;

    invoke-virtual {v10, v11, v5, v6}, LR0/x;->f(LR0/T;LE0/e;LE0/e;)V

    goto :goto_a

    :cond_1c
    and-int/lit8 v6, v5, 0xc

    const/16 v12, 0xc

    if-ne v6, v12, :cond_21

    iget-object v5, v4, LR0/c0;->b:LE0/e;

    iget-object v6, v4, LR0/c0;->c:LE0/e;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, LR0/T;->m(Z)V

    iget-object v10, v10, LR0/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v12, v10, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-eqz v12, :cond_1d

    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {v12, v11, v11, v5, v6}, LR0/D;->a(LR0/T;LR0/T;LE0/e;LE0/e;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    goto :goto_e

    :cond_1d
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    check-cast v12, LR0/i;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v5, LE0/e;->a:I

    iget v14, v6, LE0/e;->a:I

    if-ne v13, v14, :cond_1f

    iget v15, v5, LE0/e;->b:I

    iget v7, v6, LE0/e;->b:I

    if-eq v15, v7, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-virtual {v12, v11}, LR0/D;->c(LR0/T;)V

    move-object v5, v10

    const/4 v6, 0x0

    goto :goto_d

    :cond_1f
    :goto_c
    iget v5, v5, LE0/e;->b:I

    iget v15, v6, LE0/e;->b:I

    move/from16 v19, v13

    move v13, v5

    move-object v5, v10

    move-object v10, v12

    move/from16 v12, v19

    invoke-virtual/range {v10 .. v15}, LR0/i;->g(LR0/T;IIII)Z

    move-result v6

    :goto_d
    if-eqz v6, :cond_20

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->O()V

    :cond_20
    :goto_e
    const/4 v6, 0x0

    goto :goto_b

    :cond_21
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_22

    iget-object v5, v4, LR0/c0;->b:LE0/e;

    const/4 v6, 0x0

    invoke-virtual {v10, v11, v5, v6}, LR0/x;->g(LR0/T;LE0/e;LE0/e;)V

    goto/16 :goto_b

    :cond_22
    const/4 v6, 0x0

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_18

    iget-object v5, v4, LR0/c0;->b:LE0/e;

    iget-object v7, v4, LR0/c0;->c:LE0/e;

    invoke-virtual {v10, v11, v5, v7}, LR0/x;->f(LR0/T;LE0/e;LE0/e;)V

    goto/16 :goto_b

    :goto_f
    iput v12, v4, LR0/c0;->a:I

    iput-object v6, v4, LR0/c0;->b:LE0/e;

    iput-object v6, v4, LR0/c0;->c:LE0/e;

    sget-object v5, LR0/c0;->d:LJ/u;

    invoke-virtual {v5, v4}, LJ/u;->i(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_23
    move/from16 v16, v5

    :cond_24
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v2, v8}, LR0/F;->d0(LM0/s0;)V

    iget v2, v1, LR0/O;->d:I

    iput v2, v1, LR0/O;->a:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iput-boolean v4, v1, LR0/O;->i:Z

    iput-boolean v4, v1, LR0/O;->j:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iput-boolean v4, v2, LR0/F;->e:Z

    iget-object v2, v8, LM0/s0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_25
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-boolean v3, v2, LR0/F;->j:Z

    if-eqz v3, :cond_26

    iput v4, v2, LR0/F;->i:I

    iput-boolean v4, v2, LR0/F;->j:Z

    invoke-virtual {v8}, LM0/s0;->o()V

    :cond_26
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v2, v1}, LR0/F;->Y(LR0/O;)V

    move/from16 v2, v16

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->M(Z)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    iget-object v2, v9, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, Lh/j;

    invoke-virtual {v2}, Lh/j;->clear()V

    iget-object v2, v9, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Lh/h;

    iget v3, v2, Lh/h;->h:I

    iget-object v4, v2, Lh/h;->g:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_27

    const/16 v17, 0x0

    aput-object v17, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_27
    const/4 v12, 0x0

    const/16 v17, 0x0

    iput v12, v2, Lh/h;->h:I

    iput-boolean v12, v2, Lh/h;->e:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:[I

    aget v3, v2, v12

    const/16 v16, 0x1

    aget v4, v2, v16

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->A([I)V

    aget v5, v2, v12

    if-ne v5, v3, :cond_29

    aget v2, v2, v16

    if-eq v2, v4, :cond_28

    goto :goto_11

    :cond_28
    move v4, v12

    goto :goto_12

    :cond_29
    :goto_11
    const/4 v4, 0x1

    :goto_12
    if-eqz v4, :cond_2a

    invoke-virtual {v0, v12, v12}, Landroidx/recyclerview/widget/RecyclerView;->r(II)V

    :cond_2a
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->W:Z

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_36

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v6, 0x60000

    if-eq v2, v6, :cond_36

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v6, 0x20000

    if-ne v2, v6, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto/16 :goto_19

    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v6, v6, LB/A;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_19

    :cond_2c
    iget-wide v6, v1, LR0/O;->l:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_2d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2d
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v2}, LB/A;->y()I

    move-result v2

    if-lez v2, :cond_34

    iget v2, v1, LR0/O;->k:I

    if-eq v2, v5, :cond_2e

    goto :goto_13

    :cond_2e
    move v2, v12

    :goto_13
    invoke-virtual {v1}, LR0/O;->b()I

    move-result v6

    move v7, v2

    :goto_14
    if-ge v7, v6, :cond_31

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->C(I)LR0/T;

    move-result-object v8

    if-nez v8, :cond_2f

    goto :goto_15

    :cond_2f
    iget-object v8, v8, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-eqz v9, :cond_30

    move-object v7, v8

    goto :goto_18

    :cond_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_31
    :goto_15
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_34

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->C(I)LR0/T;

    move-result-object v6

    if-nez v6, :cond_32

    goto :goto_17

    :cond_32
    iget-object v6, v6, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_33

    move-object v7, v6

    goto :goto_18

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_34
    :goto_17
    move-object/from16 v7, v17

    :goto_18
    if-eqz v7, :cond_36

    iget v2, v1, LR0/O;->m:I

    int-to-long v8, v2

    cmp-long v6, v8, v3

    if-eqz v6, :cond_35

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_35

    move-object v7, v2

    :cond_35
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_36
    :goto_19
    iput-wide v3, v1, LR0/O;->l:J

    iput v5, v1, LR0/O;->k:I

    iput v5, v1, LR0/O;->m:I

    return-void
.end method

.method public final n()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LR0/O;->a(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->x(LR0/O;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, LR0/O;->h:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    iget-object v5, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v5, Lh/j;

    iget-object v6, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v6, Lh/j;

    invoke-virtual {v5}, Lh/j;->clear()V

    iget-object v5, v4, LN0/O;->g:Ljava/lang/Object;

    check-cast v5, Lh/h;

    iget v7, v5, Lh/h;->h:I

    iget-object v8, v5, Lh/h;->g:[Ljava/lang/Object;

    move v9, v3

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v7, :cond_0

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iput v3, v5, Lh/h;->h:I

    iput-boolean v3, v5, Lh/h;->e:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()V

    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v7, v5, LC2/b;->g:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, LC2/b;->p(Ljava/util/ArrayList;)V

    iget-object v7, v5, LC2/b;->h:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, LC2/b;->p(Ljava/util/ArrayList;)V

    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v5}, LR0/F;->T()V

    :cond_1
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v5, :cond_39

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v5}, LR0/F;->s0()Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v7, v5, LC2/b;->i:Ljava/lang/Object;

    check-cast v7, LR0/x;

    iget-object v8, v5, LC2/b;->j:Ljava/lang/Object;

    check-cast v8, La1/g;

    iget-object v9, v5, LC2/b;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v14, 0x0

    :goto_2
    const/16 v15, 0x8

    const/4 v13, -0x1

    if-ltz v11, :cond_4

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, LR0/a;

    iget v2, v2, LR0/a;->a:I

    if-ne v2, v15, :cond_2

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_2
    move v14, v12

    :cond_3
    add-int/lit8 v11, v11, -0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v11, v13

    :goto_3
    const/4 v2, 0x2

    if-eq v11, v13, :cond_24

    add-int/lit8 v15, v11, 0x1

    iget-object v13, v8, La1/g;->e:Ljava/lang/Object;

    check-cast v13, LC2/b;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, LR0/a;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, LR0/a;

    iget v14, v3, LR0/a;->a:I

    if-eq v14, v12, :cond_1e

    const/16 v17, 0x0

    if-eq v14, v2, :cond_c

    const/4 v2, 0x4

    if-eq v14, v2, :cond_5

    move-object/from16 v20, v8

    goto/16 :goto_10

    :cond_5
    iget v2, v10, LR0/a;->c:I

    iget v14, v3, LR0/a;->b:I

    if-ge v2, v14, :cond_6

    add-int/lit8 v14, v14, -0x1

    iput v14, v3, LR0/a;->b:I

    goto :goto_4

    :cond_6
    iget v12, v3, LR0/a;->c:I

    add-int/2addr v14, v12

    if-ge v2, v14, :cond_7

    add-int/lit8 v12, v12, -0x1

    iput v12, v3, LR0/a;->c:I

    iget v2, v10, LR0/a;->b:I

    const/4 v12, 0x4

    const/4 v14, 0x1

    invoke-virtual {v13, v12, v2, v14}, LC2/b;->n(III)LR0/a;

    move-result-object v2

    goto :goto_5

    :cond_7
    :goto_4
    move-object/from16 v2, v17

    :goto_5
    iget v12, v10, LR0/a;->b:I

    iget v14, v3, LR0/a;->b:I

    if-gt v12, v14, :cond_8

    add-int/lit8 v14, v14, 0x1

    iput v14, v3, LR0/a;->b:I

    move-object/from16 v20, v8

    goto :goto_6

    :cond_8
    move-object/from16 v20, v8

    iget v8, v3, LR0/a;->c:I

    add-int/2addr v14, v8

    if-ge v12, v14, :cond_9

    sub-int/2addr v14, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x4

    invoke-virtual {v13, v8, v12, v14}, LC2/b;->n(III)LR0/a;

    move-result-object v17

    iget v8, v3, LR0/a;->c:I

    sub-int/2addr v8, v14

    iput v8, v3, LR0/a;->c:I

    :cond_9
    :goto_6
    move-object/from16 v8, v17

    invoke-virtual {v9, v15, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v10, v3, LR0/a;->c:I

    if-lez v10, :cond_a

    invoke-virtual {v9, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v10, v13, LC2/b;->f:Ljava/lang/Object;

    check-cast v10, LJ/u;

    invoke-virtual {v10, v3}, LJ/u;->i(Ljava/lang/Object;)V

    :goto_7
    if-eqz v2, :cond_b

    invoke-virtual {v9, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    if-eqz v8, :cond_23

    invoke-virtual {v9, v11, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_c
    move-object/from16 v20, v8

    iget v2, v10, LR0/a;->b:I

    iget v8, v10, LR0/a;->c:I

    if-ge v2, v8, :cond_e

    iget v12, v3, LR0/a;->b:I

    if-ne v12, v2, :cond_d

    iget v12, v3, LR0/a;->c:I

    sub-int v2, v8, v2

    if-ne v12, v2, :cond_d

    const/4 v2, 0x0

    :goto_8
    const/16 v16, 0x1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_9
    const/16 v16, 0x0

    goto :goto_a

    :cond_e
    iget v12, v3, LR0/a;->b:I

    add-int/lit8 v14, v8, 0x1

    if-ne v12, v14, :cond_f

    iget v12, v3, LR0/a;->c:I

    sub-int/2addr v2, v8

    if-ne v12, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x1

    goto :goto_9

    :goto_a
    iget v12, v3, LR0/a;->b:I

    if-ge v8, v12, :cond_10

    add-int/lit8 v12, v12, -0x1

    iput v12, v3, LR0/a;->b:I

    goto :goto_b

    :cond_10
    iget v14, v3, LR0/a;->c:I

    add-int/2addr v12, v14

    if-ge v8, v12, :cond_11

    add-int/lit8 v14, v14, -0x1

    iput v14, v3, LR0/a;->c:I

    const/4 v2, 0x2

    iput v2, v10, LR0/a;->a:I

    const/4 v14, 0x1

    iput v14, v10, LR0/a;->c:I

    iget v2, v3, LR0/a;->c:I

    if-nez v2, :cond_23

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, v13, LC2/b;->f:Ljava/lang/Object;

    check-cast v2, LJ/u;

    invoke-virtual {v2, v3}, LJ/u;->i(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_11
    :goto_b
    iget v8, v10, LR0/a;->b:I

    iget v12, v3, LR0/a;->b:I

    if-gt v8, v12, :cond_12

    add-int/lit8 v12, v12, 0x1

    iput v12, v3, LR0/a;->b:I

    goto :goto_c

    :cond_12
    iget v14, v3, LR0/a;->c:I

    add-int/2addr v12, v14

    if-ge v8, v12, :cond_13

    sub-int/2addr v12, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x2

    invoke-virtual {v13, v14, v8, v12}, LC2/b;->n(III)LR0/a;

    move-result-object v17

    iget v8, v10, LR0/a;->b:I

    iget v12, v3, LR0/a;->b:I

    sub-int/2addr v8, v12

    iput v8, v3, LR0/a;->c:I

    :cond_13
    :goto_c
    move-object/from16 v8, v17

    if-eqz v16, :cond_14

    invoke-virtual {v9, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, v13, LC2/b;->f:Ljava/lang/Object;

    check-cast v2, LJ/u;

    invoke-virtual {v2, v10}, LJ/u;->i(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_14
    if-eqz v2, :cond_18

    if-eqz v8, :cond_16

    iget v2, v10, LR0/a;->b:I

    iget v12, v8, LR0/a;->b:I

    if-le v2, v12, :cond_15

    iget v12, v8, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->b:I

    :cond_15
    iget v2, v10, LR0/a;->c:I

    iget v12, v8, LR0/a;->b:I

    if-le v2, v12, :cond_16

    iget v12, v8, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->c:I

    :cond_16
    iget v2, v10, LR0/a;->b:I

    iget v12, v3, LR0/a;->b:I

    if-le v2, v12, :cond_17

    iget v12, v3, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->b:I

    :cond_17
    iget v2, v10, LR0/a;->c:I

    iget v12, v3, LR0/a;->b:I

    if-le v2, v12, :cond_1c

    iget v12, v3, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->c:I

    goto :goto_d

    :cond_18
    if-eqz v8, :cond_1a

    iget v2, v10, LR0/a;->b:I

    iget v12, v8, LR0/a;->b:I

    if-lt v2, v12, :cond_19

    iget v12, v8, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->b:I

    :cond_19
    iget v2, v10, LR0/a;->c:I

    iget v12, v8, LR0/a;->b:I

    if-lt v2, v12, :cond_1a

    iget v12, v8, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->c:I

    :cond_1a
    iget v2, v10, LR0/a;->b:I

    iget v12, v3, LR0/a;->b:I

    if-lt v2, v12, :cond_1b

    iget v12, v3, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->b:I

    :cond_1b
    iget v2, v10, LR0/a;->c:I

    iget v12, v3, LR0/a;->b:I

    if-lt v2, v12, :cond_1c

    iget v12, v3, LR0/a;->c:I

    sub-int/2addr v2, v12

    iput v2, v10, LR0/a;->c:I

    :cond_1c
    :goto_d
    invoke-virtual {v9, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, v10, LR0/a;->b:I

    iget v3, v10, LR0/a;->c:I

    if-eq v2, v3, :cond_1d

    invoke-virtual {v9, v15, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1d
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_e
    if-eqz v8, :cond_23

    invoke-virtual {v9, v11, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_10

    :cond_1e
    move-object/from16 v20, v8

    iget v2, v10, LR0/a;->c:I

    iget v8, v3, LR0/a;->b:I

    if-ge v2, v8, :cond_1f

    const/4 v13, -0x1

    goto :goto_f

    :cond_1f
    const/4 v13, 0x0

    :goto_f
    iget v12, v10, LR0/a;->b:I

    if-ge v12, v8, :cond_20

    add-int/lit8 v13, v13, 0x1

    :cond_20
    if-gt v8, v12, :cond_21

    iget v8, v3, LR0/a;->c:I

    add-int/2addr v12, v8

    iput v12, v10, LR0/a;->b:I

    :cond_21
    iget v8, v3, LR0/a;->b:I

    if-gt v8, v2, :cond_22

    iget v12, v3, LR0/a;->c:I

    add-int/2addr v2, v12

    iput v2, v10, LR0/a;->c:I

    :cond_22
    add-int/2addr v8, v13

    iput v8, v3, LR0/a;->b:I

    invoke-virtual {v9, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v15, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_10
    move-object/from16 v8, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_24
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_38

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LR0/a;

    iget v10, v8, LR0/a;->a:I

    const/4 v14, 0x1

    if-eq v10, v14, :cond_37

    const/4 v14, 0x2

    if-eq v10, v14, :cond_2e

    const/4 v12, 0x4

    if-eq v10, v12, :cond_26

    if-eq v10, v15, :cond_25

    :goto_12
    const/4 v15, 0x2

    const/16 v19, 0x1

    goto/16 :goto_21

    :cond_25
    invoke-virtual {v5, v8}, LC2/b;->o(LR0/a;)V

    goto :goto_12

    :cond_26
    iget v10, v8, LR0/a;->b:I

    iget v11, v8, LR0/a;->c:I

    add-int/2addr v11, v10

    move v12, v10

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_13
    if-ge v10, v11, :cond_2b

    invoke-virtual {v7, v10}, LR0/x;->b(I)LR0/T;

    move-result-object v20

    if-nez v20, :cond_27

    invoke-virtual {v5, v10}, LC2/b;->d(I)Z

    move-result v20

    if-eqz v20, :cond_28

    :cond_27
    const/4 v15, 0x4

    goto :goto_16

    :cond_28
    const/4 v15, 0x1

    if-ne v14, v15, :cond_29

    const/4 v15, 0x4

    invoke-virtual {v5, v15, v12, v13}, LC2/b;->n(III)LR0/a;

    move-result-object v12

    invoke-virtual {v5, v12}, LC2/b;->o(LR0/a;)V

    move v12, v10

    const/4 v13, 0x0

    goto :goto_14

    :cond_29
    const/4 v15, 0x4

    :goto_14
    const/4 v14, 0x0

    :goto_15
    const/16 v19, 0x1

    goto :goto_17

    :goto_16
    if-nez v14, :cond_2a

    invoke-virtual {v5, v15, v12, v13}, LC2/b;->n(III)LR0/a;

    move-result-object v12

    invoke-virtual {v5, v12}, LC2/b;->h(LR0/a;)V

    move v12, v10

    const/4 v13, 0x0

    :cond_2a
    const/4 v14, 0x1

    goto :goto_15

    :goto_17
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v10, v10, 0x1

    const/16 v15, 0x8

    goto :goto_13

    :cond_2b
    iget v10, v8, LR0/a;->c:I

    if-eq v13, v10, :cond_2c

    iget-object v10, v5, LC2/b;->f:Ljava/lang/Object;

    check-cast v10, LJ/u;

    invoke-virtual {v10, v8}, LJ/u;->i(Ljava/lang/Object;)V

    const/4 v15, 0x4

    invoke-virtual {v5, v15, v12, v13}, LC2/b;->n(III)LR0/a;

    move-result-object v8

    goto :goto_18

    :cond_2c
    const/4 v15, 0x4

    :goto_18
    if-nez v14, :cond_2d

    invoke-virtual {v5, v8}, LC2/b;->h(LR0/a;)V

    goto :goto_12

    :cond_2d
    invoke-virtual {v5, v8}, LC2/b;->o(LR0/a;)V

    goto :goto_12

    :cond_2e
    const/4 v15, 0x4

    iget v10, v8, LR0/a;->b:I

    iget v11, v8, LR0/a;->c:I

    add-int/2addr v11, v10

    move v12, v10

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_19
    if-ge v12, v11, :cond_34

    invoke-virtual {v7, v12}, LR0/x;->b(I)LR0/T;

    move-result-object v18

    if-nez v18, :cond_2f

    invoke-virtual {v5, v12}, LC2/b;->d(I)Z

    move-result v18

    if-eqz v18, :cond_30

    :cond_2f
    const/4 v15, 0x2

    goto :goto_1b

    :cond_30
    const/4 v15, 0x1

    if-ne v14, v15, :cond_31

    const/4 v15, 0x2

    invoke-virtual {v5, v15, v10, v13}, LC2/b;->n(III)LR0/a;

    move-result-object v14

    invoke-virtual {v5, v14}, LC2/b;->o(LR0/a;)V

    const/4 v14, 0x1

    goto :goto_1a

    :cond_31
    const/4 v15, 0x2

    const/4 v14, 0x0

    :goto_1a
    const/4 v15, 0x0

    goto :goto_1d

    :goto_1b
    if-nez v14, :cond_32

    invoke-virtual {v5, v15, v10, v13}, LC2/b;->n(III)LR0/a;

    move-result-object v14

    invoke-virtual {v5, v14}, LC2/b;->h(LR0/a;)V

    const/4 v14, 0x1

    goto :goto_1c

    :cond_32
    const/4 v14, 0x0

    :goto_1c
    const/4 v15, 0x1

    :goto_1d
    if-eqz v14, :cond_33

    sub-int/2addr v12, v13

    sub-int/2addr v11, v13

    const/4 v13, 0x1

    :goto_1e
    const/16 v19, 0x1

    goto :goto_1f

    :cond_33
    add-int/lit8 v14, v13, 0x1

    move v13, v14

    goto :goto_1e

    :goto_1f
    add-int/lit8 v12, v12, 0x1

    move v14, v15

    const/4 v15, 0x4

    goto :goto_19

    :cond_34
    const/16 v19, 0x1

    iget v11, v8, LR0/a;->c:I

    if-eq v13, v11, :cond_35

    iget-object v11, v5, LC2/b;->f:Ljava/lang/Object;

    check-cast v11, LJ/u;

    invoke-virtual {v11, v8}, LJ/u;->i(Ljava/lang/Object;)V

    const/4 v15, 0x2

    invoke-virtual {v5, v15, v10, v13}, LC2/b;->n(III)LR0/a;

    move-result-object v8

    goto :goto_20

    :cond_35
    const/4 v15, 0x2

    :goto_20
    if-nez v14, :cond_36

    invoke-virtual {v5, v8}, LC2/b;->h(LR0/a;)V

    goto :goto_21

    :cond_36
    invoke-virtual {v5, v8}, LC2/b;->o(LR0/a;)V

    goto :goto_21

    :cond_37
    move/from16 v19, v14

    const/4 v15, 0x2

    invoke-virtual {v5, v8}, LC2/b;->o(LR0/a;)V

    :goto_21
    add-int/lit8 v3, v3, 0x1

    const/16 v15, 0x8

    goto/16 :goto_11

    :cond_38
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_22

    :cond_39
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    invoke-virtual {v2}, LC2/b;->f()V

    :goto_22
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_3b

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    if-eqz v2, :cond_3a

    goto :goto_23

    :cond_3a
    move v2, v5

    goto :goto_24

    :cond_3b
    :goto_23
    move v2, v3

    :goto_24
    iget-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    if-eqz v7, :cond_3e

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v7, :cond_3e

    iget-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v7, :cond_3c

    if-nez v2, :cond_3c

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-boolean v8, v8, LR0/F;->e:Z

    if-eqz v8, :cond_3e

    :cond_3c
    if-eqz v7, :cond_3d

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_25

    :cond_3d
    move v7, v3

    goto :goto_26

    :cond_3e
    :goto_25
    move v7, v5

    :goto_26
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iput-boolean v7, v8, LR0/O;->i:Z

    if-eqz v7, :cond_3f

    if-eqz v2, :cond_3f

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-nez v2, :cond_3f

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v2, :cond_3f

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v2}, LR0/F;->s0()Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_27

    :cond_3f
    move v3, v5

    :goto_27
    iput-boolean v3, v8, LR0/O;->j:Z

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->W:Z

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    goto :goto_28

    :cond_40
    const/4 v2, 0x0

    :goto_28
    if-nez v2, :cond_41

    :goto_29
    const/4 v2, 0x0

    goto :goto_2a

    :cond_41
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->y(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_42

    goto :goto_29

    :cond_42
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)LR0/T;

    move-result-object v2

    :goto_2a
    const-wide/16 v7, -0x1

    const/4 v3, -0x1

    if-nez v2, :cond_43

    iput-wide v7, v1, LR0/O;->l:J

    iput v3, v1, LR0/O;->k:I

    iput v3, v1, LR0/O;->m:I

    goto :goto_2e

    :cond_43
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v7, v1, LR0/O;->l:J

    iget-boolean v5, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    if-eqz v5, :cond_44

    :goto_2b
    move v5, v3

    goto :goto_2c

    :cond_44
    invoke-virtual {v2}, LR0/T;->g()Z

    move-result v5

    if-eqz v5, :cond_45

    iget v5, v2, LR0/T;->d:I

    goto :goto_2c

    :cond_45
    iget-object v5, v2, LR0/T;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_46

    goto :goto_2b

    :cond_46
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->D(LR0/T;)I

    move-result v5

    :goto_2c
    iput v5, v1, LR0/O;->k:I

    iget-object v2, v2, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    :cond_47
    :goto_2d
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-nez v7, :cond_48

    instance-of v7, v2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_48

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_48

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v7, v3, :cond_47

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    goto :goto_2d

    :cond_48
    iput v5, v1, LR0/O;->m:I

    :goto_2e
    iget-boolean v2, v1, LR0/O;->i:Z

    if-eqz v2, :cond_49

    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    if-eqz v2, :cond_49

    const/4 v2, 0x1

    goto :goto_2f

    :cond_49
    const/4 v2, 0x0

    :goto_2f
    iput-boolean v2, v1, LR0/O;->g:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:Z

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Z

    iget-boolean v2, v1, LR0/O;->j:Z

    iput-boolean v2, v1, LR0/O;->f:Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v2}, LR0/z;->a()I

    move-result v2

    iput v2, v1, LR0/O;->d:I

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:[I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->A([I)V

    iget-boolean v2, v1, LR0/O;->i:Z

    if-eqz v2, :cond_4d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v2}, LB/A;->y()I

    move-result v2

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v2, :cond_4d

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v7, v5}, LB/A;->x(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v7

    invoke-virtual {v7}, LR0/T;->n()Z

    move-result v8

    if-nez v8, :cond_4c

    invoke-virtual {v7}, LR0/T;->e()Z

    move-result v8

    if-eqz v8, :cond_4a

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_31

    :cond_4a
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-static {v7}, LR0/D;->b(LR0/T;)V

    invoke-virtual {v7}, LR0/T;->c()Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LE0/e;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v7}, LE0/e;->b(LR0/T;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LR0/c0;

    if-nez v10, :cond_4b

    invoke-static {}, LR0/c0;->a()LR0/c0;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iput-object v8, v10, LR0/c0;->b:LE0/e;

    iget v8, v10, LR0/c0;->a:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v10, LR0/c0;->a:I

    iget-boolean v8, v1, LR0/O;->g:Z

    if-eqz v8, :cond_4c

    invoke-virtual {v7}, LR0/T;->j()Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-virtual {v7}, LR0/T;->g()Z

    move-result v8

    if-nez v8, :cond_4c

    invoke-virtual {v7}, LR0/T;->n()Z

    move-result v8

    if-nez v8, :cond_4c

    invoke-virtual {v7}, LR0/T;->e()Z

    move-result v8

    if-nez v8, :cond_4c

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, LR0/T;->c:I

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9, v7}, LN0/O;->G(JLR0/T;)V

    :cond_4c
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4d
    iget-boolean v2, v1, LR0/O;->j:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_56

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v2}, LB/A;->F()I

    move-result v2

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v2, :cond_4f

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v7, v5}, LB/A;->E(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v7

    invoke-virtual {v7}, LR0/T;->n()Z

    move-result v8

    if-nez v8, :cond_4e

    iget v8, v7, LR0/T;->d:I

    if-ne v8, v3, :cond_4e

    iget v8, v7, LR0/T;->c:I

    iput v8, v7, LR0/T;->d:I

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_4f
    iget-boolean v2, v1, LR0/O;->e:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, LR0/O;->e:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v3, v5, v1}, LR0/F;->X(LM0/s0;LR0/O;)V

    iput-boolean v2, v1, LR0/O;->e:Z

    const/4 v2, 0x0

    :goto_33
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v3}, LB/A;->y()I

    move-result v3

    if-ge v2, v3, :cond_55

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v3, v2}, LB/A;->x(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v3

    invoke-virtual {v3}, LR0/T;->n()Z

    move-result v5

    if-eqz v5, :cond_50

    :goto_34
    const/4 v9, 0x0

    goto :goto_36

    :cond_50
    const/4 v9, 0x0

    invoke-virtual {v6, v3, v9}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/c0;

    if-eqz v5, :cond_51

    iget v5, v5, LR0/c0;->a:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_51

    goto :goto_34

    :cond_51
    invoke-static {v3}, LR0/D;->b(LR0/T;)V

    iget v5, v3, LR0/T;->i:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_52

    const/4 v5, 0x1

    goto :goto_35

    :cond_52
    const/4 v5, 0x0

    :goto_35
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    invoke-virtual {v3}, LR0/T;->c()Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LE0/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v3}, LE0/e;->b(LR0/T;)V

    if-eqz v5, :cond_53

    invoke-virtual {v0, v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->P(LR0/T;LE0/e;)V

    goto :goto_34

    :cond_53
    const/4 v9, 0x0

    invoke-virtual {v6, v3, v9}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/c0;

    if-nez v5, :cond_54

    invoke-static {}, LR0/c0;->a()LR0/c0;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget v3, v5, LR0/c0;->a:I

    or-int/2addr v3, v4

    iput v3, v5, LR0/c0;->a:I

    iput-object v7, v5, LR0/c0;->b:LE0/e;

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_55
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->h()V

    :goto_37
    const/4 v2, 0x1

    goto :goto_38

    :cond_56
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->h()V

    goto :goto_37

    :goto_38
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->M(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    iput v4, v1, LR0/O;->c:I

    return-void
.end method

.method public final o()V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->L()V

    const/4 v0, 0x6

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    invoke-virtual {v1, v0}, LR0/O;->a(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    invoke-virtual {v0}, LC2/b;->f()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v0}, LR0/z;->a()I

    move-result v0

    iput v0, v1, LR0/O;->d:I

    const/4 v0, 0x0

    iput v0, v1, LR0/O;->b:I

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->d:LR0/N;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    iget v4, v2, LR0/z;->b:I

    invoke-static {v4}, Lz/K;->b(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    const/4 v2, 0x2

    if-eq v4, v2, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LR0/z;->a()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->d:LR0/N;

    iget-object v2, v2, LR0/N;->g:Landroid/os/Parcelable;

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v4, v2}, LR0/F;->Z(Landroid/os/Parcelable;)V

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->d:LR0/N;

    :cond_2
    iput-boolean v0, v1, LR0/O;->f:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v2, v4, v1}, LR0/F;->X(LM0/s0;LR0/O;)V

    iput-boolean v0, v1, LR0/O;->e:Z

    iget-boolean v2, v1, LR0/O;->i:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    iput-boolean v2, v1, LR0/O;->i:Z

    const/4 v2, 0x4

    iput v2, v1, LR0/O;->c:I

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->M(Z)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->C:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    iget-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {v2}, LM0/s0;->f()V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v2, :cond_1

    iput-boolean v1, v2, LR0/F;->f:Z

    :cond_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->j0:Z

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v0, :cond_4

    sget-object v0, LR0/p;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/p;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    if-nez v1, :cond_3

    new-instance v1, LR0/p;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, LR0/p;->e:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, LR0/p;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    sget-object v1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ls/h;->b(Landroid/view/View;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x42700000    # 60.0f

    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v1

    float-to-long v3, v3

    iput-wide v3, v2, LR0/p;->g:J

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    iget-object v0, v0, LR0/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR0/D;->e()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    iget-object v2, v1, LR0/S;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, LR0/S;->g:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v1, :cond_1

    iput-boolean v0, v1, LR0/F;->f:Z

    invoke-virtual {v1, p0}, LR0/F;->M(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->r0:LB/k;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->g:LN0/O;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object v1, LR0/c0;->d:LJ/u;

    invoke-virtual {v1}, LJ/u;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v2, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/T;

    iget-object v4, v4, LR0/T;->a:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, v1, LM0/s0;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v1, v2, v0}, LM0/s0;->g(LR0/z;Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    const v2, 0x7f090083

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/a;

    if-nez v3, :cond_4

    new-instance v3, Lv/a;

    invoke-direct {v3}, Lv/a;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_4
    iget-object v0, v3, Lv/a;->a:Ljava/util/ArrayList;

    const-string v2, "<this>"

    invoke-static {v0, v2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-lt v3, v2, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_7
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    if-eqz v0, :cond_8

    iget-object v0, v0, LR0/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    :cond_8
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v1}, LR0/F;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, LR0/F;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/high16 v3, 0x400000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const/16 v1, 0x1a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, LR0/F;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    neg-float v1, v1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, LR0/F;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v2

    move v3, v1

    :goto_2
    cmpl-float v4, v1, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_12

    :cond_7
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView;->U:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView;->V:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v3, :cond_8

    const-string v1, "RecyclerView"

    const-string v2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz v4, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    aput v6, v7, v6

    const/4 v8, 0x1

    aput v6, v7, v8

    invoke-virtual {v3}, LR0/F;->c()Z

    move-result v9

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, LR0/F;->d()Z

    move-result v10

    if-eqz v10, :cond_a

    or-int/lit8 v3, v9, 0x2

    goto :goto_3

    :cond_a
    move v3, v9

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0, v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->Q(FI)I

    move-result v4

    sub-int v11, v2, v4

    invoke-virtual {p0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->R(FI)I

    move-result v2

    sub-int v12, v1, v2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ls/e;->d(II)Z

    if-eqz v9, :cond_b

    move v1, v11

    goto :goto_4

    :cond_b
    move v1, v6

    :goto_4
    move v3, v2

    if-eqz v10, :cond_c

    move v2, v12

    goto :goto_5

    :cond_c
    move v2, v6

    :goto_5
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->p(III[I[I)Z

    move-result v1

    if-eqz v1, :cond_d

    aget v1, v7, v6

    sub-int/2addr v11, v1

    aget v1, v7, v8

    sub-int/2addr v12, v1

    :cond_d
    if-eqz v9, :cond_e

    move v1, v11

    goto :goto_6

    :cond_e
    move v1, v6

    :goto_6
    if-eqz v10, :cond_f

    move v2, v12

    goto :goto_7

    :cond_f
    move v2, v6

    :goto_7
    invoke-virtual {p0, v1, v2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->U(IILandroid/view/MotionEvent;I)Z

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    if-eqz v1, :cond_11

    if-nez v11, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    invoke-virtual {v1, p0, v11, v12}, LR0/p;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_11
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    :cond_12
    :goto_8
    return v6
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->q:LR0/m;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->z(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, LR0/F;->c()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v3}, LR0/F;->d()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_b

    if-eq v4, v6, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_2

    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    if-eq v4, v2, :cond_15

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    sub-int v4, v5, v4

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    if-le v0, v4, :cond_9

    iput v5, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    if-eqz v3, :cond_a

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    if-le v3, v4, :cond_a

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    move v0, v2

    :cond_a
    if-eqz v0, :cond_15

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_2

    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    goto/16 :goto_2

    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v4, :cond_d

    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v4, p0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_e

    invoke-static {v4}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v4

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_e

    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float v9, v5, v9

    invoke-static {v4, v8, v9}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move v4, v2

    goto :goto_1

    :cond_e
    move v4, v1

    :goto_1
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_f

    invoke-static {v9}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v9

    cmpl-float v9, v9, v8

    if-eqz v9, :cond_f

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v4, v8, v9}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move v4, v2

    :cond_f
    iget-object v9, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_10

    invoke-static {v9}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v9

    cmpl-float v9, v9, v8

    if-eqz v9, :cond_10

    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    invoke-static {v4, v8, v7}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move v4, v2

    :cond_10
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_11

    invoke-static {v7}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v7

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_11

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr p1, v7

    sub-float/2addr v5, p1

    invoke-static {v4, v8, v5}, Le/a;->h(Landroid/widget/EdgeEffect;FF)F

    move v4, v2

    :cond_11
    if-nez v4, :cond_12

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    if-ne p1, v6, :cond_13

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->a0(I)V

    :cond_13
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_14

    or-int/lit8 v0, v0, 0x2

    :cond_14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ls/e;->d(II)Z

    :cond_15
    :goto_2
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    if-ne p1, v2, :cond_16

    return v2

    :cond_16
    :goto_3
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    sget p1, Lp/e;->a:I

    const-string p1, "RV OnLayout"

    invoke-static {p1}, Lp/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->m()V

    invoke-static {}, Lp/d;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, LR0/F;->G()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v4, v4, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    move v1, v5

    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->s0:Z

    if-nez v1, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, v2, LR0/O;->c:I

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->n()V

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v0, p1, p2}, LR0/F;->l0(II)V

    iput-boolean v5, v2, LR0/O;->h:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v0, p1, p2}, LR0/F;->n0(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v0}, LR0/F;->q0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, LR0/F;->l0(II)V

    iput-boolean v5, v2, LR0/O;->h:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v0, p1, p2}, LR0/F;->n0(II)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t0:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:I

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v0, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    return-void

    :cond_7
    iget-boolean v0, v2, LR0/O;->j:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, LR0/z;->a()I

    move-result v0

    iput v0, v2, LR0/O;->d:I

    goto :goto_1

    :cond_9
    iput v1, v2, LR0/O;->d:I

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->Y()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v0, v0, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->l(II)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->Z(Z)V

    iput-boolean v1, v2, LR0/O;->f:Z

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, LR0/N;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, LR0/N;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d:LR0/N;

    iget-object p1, p1, Lw/b;->e:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, LR0/N;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lw/b;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->d:LR0/N;

    if-eqz v1, :cond_0

    iget-object v1, v1, LR0/N;->g:Landroid/os/Parcelable;

    iput-object v1, v0, LR0/N;->g:Landroid/os/Parcelable;

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LR0/F;->a0()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, LR0/N;->g:Landroid/os/Parcelable;

    return-object v0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, LR0/N;->g:Landroid/os/Parcelable;

    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    const/4 v7, 0x0

    if-nez v1, :cond_42

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    if-eqz v1, :cond_0

    goto/16 :goto_17

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->q:LR0/m;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v7

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->z(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_3

    :cond_2
    iget v5, v1, LR0/m;->b:I

    iget v9, v1, LR0/m;->v:I

    if-nez v9, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v1, v5, v9}, LR0/m;->b(FF)Z

    move-result v5

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v1, v9, v10}, LR0/m;->a(FF)Z

    move-result v9

    if-nez v5, :cond_4

    if-eqz v9, :cond_e

    :cond_4
    if-eqz v9, :cond_5

    iput v8, v1, LR0/m;->w:I

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v1, LR0/m;->p:F

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    iput v3, v1, LR0/m;->w:I

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v1, LR0/m;->m:F

    :cond_6
    :goto_0
    invoke-virtual {v1, v3}, LR0/m;->d(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v8, :cond_8

    iget v9, v1, LR0/m;->v:I

    if-ne v9, v3, :cond_8

    iput v4, v1, LR0/m;->m:F

    iput v4, v1, LR0/m;->p:F

    invoke-virtual {v1, v8}, LR0/m;->d(I)V

    iput v7, v1, LR0/m;->w:I

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v3, :cond_e

    iget v9, v1, LR0/m;->v:I

    if-ne v9, v3, :cond_e

    invoke-virtual {v1}, LR0/m;->e()V

    iget v9, v1, LR0/m;->w:I

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v9, v8, :cond_b

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v13, v1, LR0/m;->y:[I

    aput v5, v13, v7

    iget v11, v1, LR0/m;->q:I

    sub-int/2addr v11, v5

    aput v11, v13, v8

    int-to-float v12, v5

    int-to-float v11, v11

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget v9, v1, LR0/m;->o:I

    int-to-float v9, v9

    sub-float/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    goto :goto_1

    :cond_9
    iget v11, v1, LR0/m;->p:F

    iget-object v9, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v14

    iget-object v9, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v15

    iget v9, v1, LR0/m;->q:I

    move/from16 v16, v9

    invoke-static/range {v11 .. v16}, LR0/m;->c(FF[IIII)I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v11, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_a
    iput v12, v1, LR0/m;->p:F

    :cond_b
    :goto_1
    iget v9, v1, LR0/m;->w:I

    if-ne v9, v3, :cond_e

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v13, v1, LR0/m;->x:[I

    aput v5, v13, v7

    iget v11, v1, LR0/m;->r:I

    sub-int/2addr v11, v5

    aput v11, v13, v8

    int-to-float v5, v5

    int-to-float v11, v11

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget v5, v1, LR0/m;->l:I

    int-to-float v5, v5

    sub-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_c

    goto :goto_2

    :cond_c
    iget v11, v1, LR0/m;->m:F

    iget-object v5, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v14

    iget-object v5, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v15

    iget v5, v1, LR0/m;->r:I

    move/from16 v16, v5

    invoke-static/range {v11 .. v16}, LR0/m;->c(FF[IIII)I

    move-result v5

    if-eqz v5, :cond_d

    iget-object v9, v1, LR0/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_d
    iput v12, v1, LR0/m;->m:F

    :cond_e
    :goto_2
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_f

    if-ne v1, v8, :cond_10

    :cond_f
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->q:LR0/m;

    :cond_10
    move v1, v8

    :goto_3
    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return v8

    :cond_11
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v1, :cond_12

    goto/16 :goto_17

    :cond_12
    invoke-virtual {v1}, LR0/F;->c()Z

    move-result v9

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v1}, LR0/F;->d()Z

    move-result v10

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    if-nez v1, :cond_13

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    :cond_13
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    iget-object v11, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:[I

    if-nez v1, :cond_14

    aput v7, v11, v8

    aput v7, v11, v7

    :cond_14
    invoke-static {v6}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    aget v13, v11, v7

    int-to-float v13, v13

    aget v14, v11, v8

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v13, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3f

    const-string v14, "RecyclerView"

    if-eq v1, v8, :cond_26

    if-eq v1, v3, :cond_18

    if-eq v1, v2, :cond_17

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    const/4 v2, 0x6

    if-eq v1, v2, :cond_15

    goto/16 :goto_15

    :cond_15
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    :cond_16
    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    goto/16 :goto_15

    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_15

    :cond_18
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_19
    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v13

    float-to-int v14, v2

    invoke-virtual {v6, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v13

    float-to-int v13, v1

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    sub-int/2addr v1, v14

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    sub-int/2addr v2, v13

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    if-eq v3, v8, :cond_1e

    if-eqz v9, :cond_1b

    if-lez v1, :cond_1a

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    sub-int/2addr v1, v3

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :cond_1a
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    add-int/2addr v1, v3

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_4
    if-eqz v1, :cond_1b

    move v3, v8

    goto :goto_5

    :cond_1b
    move v3, v7

    :goto_5
    if-eqz v10, :cond_1d

    if-lez v2, :cond_1c

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    sub-int/2addr v2, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_6

    :cond_1c
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    add-int/2addr v2, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_6
    if-eqz v2, :cond_1d

    move v3, v8

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_1e
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    if-ne v3, v8, :cond_41

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    aput v7, v15, v7

    aput v7, v15, v8

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->Q(FI)I

    move-result v3

    sub-int v16, v1, v3

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->R(FI)I

    move-result v1

    sub-int v17, v2, v1

    if-eqz v9, :cond_1f

    move/from16 v1, v16

    goto :goto_7

    :cond_1f
    move v1, v7

    :goto_7
    if-eqz v10, :cond_20

    move/from16 v2, v17

    goto :goto_8

    :cond_20
    move v2, v7

    :goto_8
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->p0:[I

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->p(III[I[I)Z

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:[I

    if-eqz v1, :cond_21

    aget v1, v15, v7

    sub-int v16, v16, v1

    aget v1, v15, v8

    sub-int v17, v17, v1

    aget v1, v11, v7

    aget v3, v2, v7

    add-int/2addr v1, v3

    aput v1, v11, v7

    aget v1, v11, v8

    aget v3, v2, v8

    add-int/2addr v1, v3

    aput v1, v11, v8

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_21
    move/from16 v1, v16

    move/from16 v3, v17

    aget v4, v2, v7

    sub-int/2addr v14, v4

    iput v14, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    aget v2, v2, v8

    sub-int/2addr v13, v2

    iput v13, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    if-eqz v9, :cond_22

    move v2, v1

    goto :goto_9

    :cond_22
    move v2, v7

    :goto_9
    if-eqz v10, :cond_23

    move v4, v3

    goto :goto_a

    :cond_23
    move v4, v7

    :goto_a
    invoke-virtual {v0, v2, v4, v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->U(IILandroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_24
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->b0:LR0/p;

    if-eqz v2, :cond_41

    if-nez v1, :cond_25

    if-eqz v3, :cond_41

    :cond_25
    invoke-virtual {v2, v0, v1, v3}, LR0/p;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_15

    :cond_26
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView;->T:I

    int-to-float v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v9, :cond_27

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_b

    :cond_27
    move v1, v4

    :goto_b
    if-eqz v10, :cond_28

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_c

    :cond_28
    move v2, v4

    :goto_c
    cmpl-float v5, v1, v4

    if-nez v5, :cond_29

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_3d

    :cond_29
    float-to-int v1, v1

    float-to-int v2, v2

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v5, :cond_2a

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_2a
    iget-boolean v6, v0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz v6, :cond_2b

    goto/16 :goto_13

    :cond_2b
    invoke-virtual {v5}, LR0/F;->c()Z

    move-result v5

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v6}, LR0/F;->d()Z

    move-result v6

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView;->S:I

    if-eqz v5, :cond_2c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v9, :cond_2d

    :cond_2c
    move v1, v7

    :cond_2d
    if-eqz v6, :cond_2e

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v9, :cond_2f

    :cond_2e
    move v2, v7

    :cond_2f
    if-nez v1, :cond_30

    if-nez v2, :cond_30

    goto/16 :goto_13

    :cond_30
    if-eqz v1, :cond_33

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_32

    invoke-static {v9}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v9

    cmpl-float v9, v9, v4

    if-eqz v9, :cond_32

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    neg-int v10, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v0, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/widget/EdgeEffect;II)Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v10}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_d
    move v1, v7

    :cond_31
    move v9, v1

    move v1, v7

    goto :goto_e

    :cond_32
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_33

    invoke-static {v9}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v9

    cmpl-float v9, v9, v4

    if-eqz v9, :cond_33

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v0, v9, v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/widget/EdgeEffect;II)Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_d

    :cond_33
    move v9, v7

    :goto_e
    if-eqz v2, :cond_36

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_35

    invoke-static {v10}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v10

    cmpl-float v10, v10, v4

    if-eqz v10, :cond_35

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    neg-int v10, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {v0, v4, v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/widget/EdgeEffect;II)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, v10}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_f
    move v2, v7

    :cond_34
    move v4, v7

    goto :goto_10

    :cond_35
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_36

    invoke-static {v10}, Le/a;->e(Landroid/widget/EdgeEffect;)F

    move-result v10

    cmpl-float v4, v10, v4

    if-eqz v4, :cond_36

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0, v4, v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->W(Landroid/widget/EdgeEffect;II)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_f

    :cond_36
    move v4, v2

    move v2, v7

    :goto_10
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    if-nez v9, :cond_37

    if-eqz v2, :cond_38

    :cond_37
    neg-int v11, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v10, v9, v2}, LR0/S;->a(II)V

    :cond_38
    if-nez v1, :cond_39

    if-nez v4, :cond_39

    if-nez v9, :cond_3e

    if-eqz v2, :cond_3d

    goto :goto_14

    :cond_39
    int-to-float v2, v1

    int-to-float v9, v4

    invoke-virtual {v0, v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v11

    if-nez v11, :cond_3d

    if-nez v5, :cond_3b

    if-eqz v6, :cond_3a

    goto :goto_11

    :cond_3a
    move v11, v7

    goto :goto_12

    :cond_3b
    :goto_11
    move v11, v8

    :goto_12
    invoke-virtual {v0, v2, v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    if-eqz v11, :cond_3d

    if-eqz v6, :cond_3c

    or-int/lit8 v5, v5, 0x2

    :cond_3c
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Ls/e;->d(II)Z

    neg-int v2, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v10, v1, v2}, LR0/S;->a(II)V

    goto :goto_14

    :cond_3d
    :goto_13
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_3e
    :goto_14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->T()V

    goto :goto_16

    :cond_3f
    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->L:I

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->P:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:I

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v13

    float-to-int v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:I

    if-eqz v10, :cond_40

    or-int/lit8 v9, v9, 0x2

    :cond_40
    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v1

    invoke-virtual {v1, v9, v7}, Ls/e;->d(II)Z

    :cond_41
    :goto_15
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :goto_16
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_42
    :goto_17
    return v7
.end method

.method public final p(III[I[I)Z
    .locals 6

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ls/e;->a(III[I[I)Z

    move-result p1

    return p1
.end method

.method public final q(IIII[II[I)V
    .locals 8

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Ls/e;->b(IIII[II[I)Z

    return-void
.end method

.method public final r(II)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int p1, v0, p1

    sub-int p2, v1, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:LR0/I;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, LR0/I;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LR0/I;

    invoke-virtual {p2, p0}, LR0/I;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->D:I

    return-void
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LR0/T;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, LR0/T;->i:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, LR0/T;->i:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LR0/T;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->S(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, LR0/F;->g0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LR0/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->u:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    check-cast v0, LR0/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LR0/F;->c()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v1}, LR0/F;->d()Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move p2, v2

    :goto_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->U(IILandroid/view/MotionEvent;I)Z

    return-void
.end method

.method public final scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lt/b;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->y:I

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(LR0/V;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->k0:LR0/V;

    invoke-static {p0, p1}, Ls/u;->b(Landroid/view/View;Ls/c;)V

    return-void
.end method

.method public setAdapter(LR0/z;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->b:Lcom/brisa/local/j;

    if-eqz v1, :cond_0

    iget-object v1, v1, LR0/z;->a:LR0/A;

    invoke-virtual {v1, v2}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LR0/D;->e()V

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, LR0/F;->c0(LM0/s0;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v1, v3}, LR0/F;->d0(LM0/s0;)V

    :cond_2
    iget-object v1, v3, LM0/s0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, LM0/s0;->h()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->e:LC2/b;

    iget-object v4, v1, LC2/b;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, LC2/b;->p(Ljava/util/ArrayList;)V

    iget-object v4, v1, LC2/b;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, LC2/b;->p(Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz p1, :cond_3

    iget-object p1, p1, LR0/z;->a:LR0/A;

    invoke-virtual {p1, v2}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LR0/F;->L()V

    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    iget-object v2, v3, LM0/s0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, LM0/s0;->h()V

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, LM0/s0;->g(LR0/z;Z)V

    invoke-virtual {v3}, LM0/s0;->e()LR0/K;

    move-result-object v4

    if-eqz v1, :cond_5

    iget v1, v4, LR0/K;->b:I

    sub-int/2addr v1, v2

    iput v1, v4, LR0/K;->b:I

    :cond_5
    iget v1, v4, LR0/K;->b:I

    if-nez v1, :cond_7

    iget-object v1, v4, LR0/K;->a:Landroid/util/SparseArray;

    move v5, v0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LR0/J;

    iget-object v7, v6, LR0/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LR0/T;

    iget-object v8, v8, LR0/T;->a:Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v6, v6, LR0/J;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    iget p1, v4, LR0/K;->b:I

    add-int/2addr p1, v2

    iput p1, v4, LR0/K;->b:I

    :cond_8
    invoke-virtual {v3}, LM0/s0;->f()V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->d0:LR0/O;

    iput-boolean v2, p1, LR0/O;->e:Z

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView;->A:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {p1}, LB/A;->F()I

    move-result p1

    move v1, v0

    :goto_2
    const/4 v2, 0x6

    if-ge v1, p1, :cond_a

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    invoke-virtual {v4, v1}, LB/A;->E(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, LR0/T;->n()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v2}, LR0/T;->a(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->J()V

    iget-object p1, v3, LM0/s0;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LR0/T;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v2}, LR0/T;->a(I)V

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, LR0/T;->a(I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v3}, LM0/s0;->h()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(LR0/B;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(LR0/C;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->I:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    return-void
.end method

.method public setItemAnimator(LR0/D;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR0/D;->e()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    const/4 v1, 0x0

    iput-object v1, v0, LR0/D;->a:LR0/y;

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->i0:LR0/y;

    iput-object v0, p1, LR0/D;->a:LR0/y;

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iput p1, v0, LM0/s0;->a:I

    invoke-virtual {v0}, LM0/s0;->o()V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    return-void
.end method

.method public setLayoutManager(LR0/F;)V
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    iget-object v2, v1, LR0/S;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, LR0/S;->g:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->J:LR0/D;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LR0/D;->e()V

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v1, v2}, LR0/F;->c0(LM0/s0;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v1, v2}, LR0/F;->d0(LM0/s0;)V

    iget-object v1, v2, LM0/s0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, LM0/s0;->h()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iput-boolean v0, v1, LR0/F;->f:Z

    invoke-virtual {v1, p0}, LR0/F;->M(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LR0/F;->o0(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    goto :goto_0

    :cond_3
    iget-object v1, v2, LM0/s0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, LM0/s0;->h()V

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:LB/A;

    iget-object v3, v1, LB/A;->f:Ljava/lang/Object;

    check-cast v3, LR0/y;

    iget-object v3, v3, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v1, LB/A;->g:Ljava/lang/Object;

    check-cast v4, LR0/b;

    invoke-virtual {v4}, LR0/b;->q()V

    iget-object v1, v1, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v7, v6, LR0/T;->o:I

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v8

    if-eqz v8, :cond_4

    iput v7, v6, LR0/T;->p:I

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v8, v6, LR0/T;->a:Landroid/view/View;

    sget-object v9, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v8, v7}, Ls/g;->s(Landroid/view/View;I)V

    :goto_2
    iput v0, v6, LR0/T;->o:I

    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_7

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz p1, :cond_9

    iget-object v0, p1, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_8

    invoke-virtual {p1, p0}, LR0/F;->o0(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    iput-boolean v5, p1, LR0/F;->f:Z

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LR0/F;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    invoke-virtual {v2}, LM0/s0;->o()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    iget-boolean v1, v0, Ls/e;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Ls/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ls/l;->z(Landroid/view/View;)V

    :cond_0
    iput-boolean p1, v0, Ls/e;->d:Z

    return-void
.end method

.method public setOnFlingListener(LR0/H;)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(LR0/I;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->e0:LR0/I;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->W:Z

    return-void
.end method

.method public setRecycledViewPool(LR0/K;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    iget-object v1, v0, LM0/s0;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, LM0/s0;->g(LR0/z;Z)V

    iget-object v2, v0, LM0/s0;->g:Ljava/lang/Object;

    check-cast v2, LR0/K;

    if-eqz v2, :cond_0

    iget v3, v2, LR0/K;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, LR0/K;->b:I

    :cond_0
    iput-object p1, v0, LM0/s0;->g:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()LR0/z;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, v0, LM0/s0;->g:Ljava/lang/Object;

    check-cast p1, LR0/K;

    iget v1, p1, LR0/K;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, LR0/K;->b:I

    :cond_1
    invoke-virtual {v0}, LM0/s0;->f()V

    return-void
.end method

.method public setRecyclerListener(LR0/L;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->K:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    iget-object v1, v0, LR0/S;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, LR0/S;->g:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, LR0/F;->b0(I)V

    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView;->R:I

    return-void
.end method

.method public setViewCacheExtension(LR0/Q;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->c:LM0/s0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ls/e;->d(II)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ls/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls/e;->e(I)V

    return-void
.end method

.method public final suppressLayout(Z)V
    .locals 9

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->w:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    iget-object v0, p1, LR0/S;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p1, LR0/S;->g:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_2
    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    check-cast v0, LR0/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->F:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    check-cast v0, LR0/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->H:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->E:LR0/C;

    check-cast v0, LR0/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->G:Landroid/widget/EdgeEffect;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->l:LR0/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:LR0/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(LR0/O;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->a0:LR0/S;

    iget-object v0, v0, LR0/S;->g:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final y(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final z(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/m;

    iget v6, v5, LR0/m;->v:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v5, v6, v9}, LR0/m;->b(FF)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v5, v9, v10}, LR0/m;->a(FF)Z

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    if-nez v6, :cond_0

    if-eqz v9, :cond_4

    :cond_0
    if-eqz v9, :cond_1

    iput v7, v5, LR0/m;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, LR0/m;->p:F

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    iput v8, v5, LR0/m;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, LR0/m;->m:F

    :cond_2
    :goto_1
    invoke-virtual {v5, v8}, LR0/m;->d(I)V

    goto :goto_2

    :cond_3
    if-ne v6, v8, :cond_4

    :goto_2
    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    iput-object v5, p0, Landroidx/recyclerview/widget/RecyclerView;->q:LR0/m;

    return v7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method
