.class public final LO0/u;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final H0:[F


# instance fields
.field public final A:Landroid/widget/ImageView;

.field public A0:I

.field public final B:Landroid/widget/ImageView;

.field public B0:[J

.field public final C:Landroid/widget/ImageView;

.field public C0:[Z

.field public final D:Landroid/widget/ImageView;

.field public final D0:[J

.field public final E:Landroid/widget/ImageView;

.field public final E0:[Z

.field public final F:Landroid/widget/ImageView;

.field public F0:J

.field public final G:Landroid/view/View;

.field public G0:Z

.field public final H:Landroid/view/View;

.field public final I:Landroid/view/View;

.field public final J:Landroid/widget/TextView;

.field public final K:Landroid/widget/TextView;

.field public final L:LO0/N;

.field public final M:Ljava/lang/StringBuilder;

.field public final N:Ljava/util/Formatter;

.field public final O:LG/n0;

.field public final P:LG/p0;

.field public final Q:LH/a;

.field public final R:Landroid/graphics/drawable/Drawable;

.field public final S:Landroid/graphics/drawable/Drawable;

.field public final T:Landroid/graphics/drawable/Drawable;

.field public final U:Landroid/graphics/drawable/Drawable;

.field public final V:Landroid/graphics/drawable/Drawable;

.field public final W:Ljava/lang/String;

.field public final a:LO0/z;

.field public final a0:Ljava/lang/String;

.field public final b:Landroid/content/res/Resources;

.field public final b0:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public final c0:Landroid/graphics/drawable/Drawable;

.field public final d:LO0/j;

.field public final d0:Landroid/graphics/drawable/Drawable;

.field public final e:Ljava/lang/Class;

.field public final e0:F

.field public final f:Ljava/lang/reflect/Method;

.field public final f0:F

.field public final g:Ljava/lang/reflect/Method;

.field public final g0:Ljava/lang/String;

.field public final h:Ljava/lang/Class;

.field public final h0:Ljava/lang/String;

.field public final i:Ljava/lang/reflect/Method;

.field public final i0:Landroid/graphics/drawable/Drawable;

.field public final j:Ljava/lang/reflect/Method;

.field public final j0:Landroid/graphics/drawable/Drawable;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k0:Ljava/lang/String;

.field public final l:Landroidx/recyclerview/widget/RecyclerView;

.field public final l0:Ljava/lang/String;

.field public final m:LO0/p;

.field public final m0:Landroid/graphics/drawable/Drawable;

.field public final n:LO0/m;

.field public final n0:Landroid/graphics/drawable/Drawable;

.field public final o:LO0/i;

.field public final o0:Ljava/lang/String;

.field public final p:LO0/i;

.field public final p0:Ljava/lang/String;

.field public final q:LZ0/i;

.field public q0:LG/g0;

.field public final r:Landroid/widget/PopupWindow;

.field public r0:Z

.field public final s:I

.field public s0:Z

.field public final t:Landroid/widget/ImageView;

.field public t0:Z

.field public final u:Landroid/widget/ImageView;

.field public u0:Z

.field public final v:Landroid/widget/ImageView;

.field public v0:Z

.field public final w:Landroid/view/View;

.field public w0:Z

.field public final x:Landroid/view/View;

.field public x0:I

.field public final y:Landroid/widget/TextView;

.field public y0:Z

.field public final z:Landroid/widget/TextView;

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.ui"

    invoke-static {v0}, LG/Q;->a(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, LO0/u;->H0:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/brisa/local/VideoActivity;)V
    .locals 12

    const-string v0, "isScrubbingModeEnabled"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "setScrubbingModeEnabled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v5, 0x1

    iput-boolean v5, p0, LO0/u;->u0:Z

    const/16 v6, 0x1388

    iput v6, p0, LO0/u;->x0:I

    iput v4, p0, LO0/u;->A0:I

    const/16 v6, 0xc8

    iput v6, p0, LO0/u;->z0:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0b0005

    invoke-virtual {v6, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v6, 0x40000

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v6, LO0/j;

    invoke-direct {v6, p0}, LO0/j;-><init>(LO0/u;)V

    iput-object v6, p0, LO0/u;->d:LO0/j;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, p0, LO0/u;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, LG/n0;

    invoke-direct {v6}, LG/n0;-><init>()V

    iput-object v6, p0, LO0/u;->O:LG/n0;

    new-instance v6, LG/p0;

    invoke-direct {v6}, LG/p0;-><init>()V

    iput-object v6, p0, LO0/u;->P:LG/p0;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, LO0/u;->M:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v7, p0, LO0/u;->N:Ljava/util/Formatter;

    new-array v6, v4, [J

    iput-object v6, p0, LO0/u;->B0:[J

    new-array v6, v4, [Z

    iput-object v6, p0, LO0/u;->C0:[Z

    new-array v6, v4, [J

    iput-object v6, p0, LO0/u;->D0:[J

    new-array v6, v4, [Z

    iput-object v6, p0, LO0/u;->E0:[Z

    new-instance v6, LH/a;

    const/16 v7, 0xa

    invoke-direct {v6, p0, v7}, LH/a;-><init>(Ljava/lang/Object;I)V

    iput-object v6, p0, LO0/u;->Q:LH/a;

    :try_start_0
    const-class v6, Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-object v7, v3

    goto :goto_0

    :catch_1
    move-object v6, v3

    move-object v7, v6

    :catch_2
    :goto_0
    move-object v8, v3

    :goto_1
    iput-object v6, p0, LO0/u;->e:Ljava/lang/Class;

    iput-object v7, p0, LO0/u;->f:Ljava/lang/reflect/Method;

    iput-object v8, p0, LO0/u;->g:Ljava/lang/reflect/Method;

    :try_start_3
    const-string v6, "androidx.media3.transformer.CompositionPlayer"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_3
    move-object v1, v3

    goto :goto_2

    :catch_4
    move-object v1, v3

    move-object v6, v1

    :catch_5
    :goto_2
    move-object v0, v3

    :goto_3
    iput-object v6, p0, LO0/u;->h:Ljava/lang/Class;

    iput-object v1, p0, LO0/u;->i:Ljava/lang/reflect/Method;

    iput-object v0, p0, LO0/u;->j:Ljava/lang/reflect/Method;

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LO0/u;->J:Landroid/widget/TextView;

    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LO0/u;->K:Landroid/widget/TextView;

    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LO0/u;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LO0/u;->E:Landroid/widget/ImageView;

    new-instance v1, LO0/g;

    invoke-direct {v1, p0, v4}, LO0/g;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0x8

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LO0/u;->F:Landroid/widget/ImageView;

    new-instance v1, LO0/g;

    invoke-direct {v1, p0, v4}, LO0/g;-><init>(Ljava/lang/Object;I)V

    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    const v0, 0x7f09005d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO0/u;->G:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f090055

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO0/u;->H:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO0/u;->I:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, LO0/N;

    const v2, 0x7f090059

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_6

    iput-object v1, p0, LO0/u;->L:LO0/N;

    goto :goto_6

    :cond_6
    if-eqz v2, :cond_7

    new-instance v1, LO0/f;

    invoke-direct {v1, p1}, LO0/f;-><init>(Lcom/brisa/local/VideoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v1, p0, LO0/u;->L:LO0/N;

    goto :goto_6

    :cond_7
    iput-object v3, p0, LO0/u;->L:LO0/N;

    :goto_6
    iget-object v0, p0, LO0/u;->L:LO0/N;

    if-eqz v0, :cond_8

    iget-object v1, p0, LO0/u;->d:LO0/j;

    check-cast v0, LO0/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LO0/f;->x:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v3}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, LO0/u;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, LO0/u;->v:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    iget-object v2, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v1, 0x7f090057

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, LO0/u;->t:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v6, 0x7f070057

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v1, 0x7f09004e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, LO0/u;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v6, 0x7f070052

    invoke-virtual {v0, v6, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    sget v0, Lm/f;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v8, v3

    goto/16 :goto_b

    :cond_c
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const-string v6, "ResourcesCompat"

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1d

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "res/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    :goto_7
    move-object v8, v3

    goto :goto_a

    :cond_d
    iget v8, v0, Landroid/util/TypedValue;->assetCookie:I

    sget-object v9, Ln/c;->b:Lh/i;

    invoke-static {v1, v2, v7, v8}, Ln/c;->b(Landroid/content/res/Resources;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lh/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_e

    goto :goto_a

    :cond_e
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v10, ".xml"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/brisa/local/v;->p(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lm/b;

    move-result-object v8

    if-nez v8, :cond_f

    const-string v0, "Failed to find font-family tag"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_9

    :cond_f
    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {p1, v8, v1, v7, v0}, Ln/c;->a(Lcom/brisa/local/VideoActivity;Lm/b;Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    goto :goto_a

    :cond_10
    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    sget-object v8, Ln/c;->a:Lcom/brisa/local/d0;

    invoke-virtual {v8, p1, v1, v2, v7}, Lcom/brisa/local/d0;->j(Lcom/brisa/local/VideoActivity;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-static {v1, v2, v7, v0}, Ln/c;->b(Landroid/content/res/Resources;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v8}, Lh/i;->c(Ljava/lang/String;Landroid/graphics/Typeface;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :goto_8
    const-string v1, "Failed to read xml resource "

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_9
    const-string v1, "Failed to parse xml resource "

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_11
    :goto_a
    if-eqz v8, :cond_1c

    :goto_b
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09005c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v1, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v6, 0x7f070060

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, LO0/u;->x:Landroid/view/View;

    iput-object v3, p0, LO0/u;->z:Landroid/widget/TextView;

    goto :goto_c

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v1, p0, LO0/u;->z:Landroid/widget/TextView;

    iput-object v1, p0, LO0/u;->x:Landroid/view/View;

    goto :goto_c

    :cond_13
    iput-object v3, p0, LO0/u;->z:Landroid/widget/TextView;

    iput-object v3, p0, LO0/u;->x:Landroid/view/View;

    :goto_c
    iget-object v0, p0, LO0/u;->x:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_15

    iget-object v1, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v6, 0x7f07005f

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, LO0/u;->w:Landroid/view/View;

    iput-object v3, p0, LO0/u;->y:Landroid/widget/TextView;

    goto :goto_d

    :cond_15
    if-eqz v1, :cond_16

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v1, p0, LO0/u;->y:Landroid/widget/TextView;

    iput-object v1, p0, LO0/u;->w:Landroid/view/View;

    goto :goto_d

    :cond_16
    iput-object v3, p0, LO0/u;->y:Landroid/widget/TextView;

    iput-object v3, p0, LO0/u;->w:Landroid/view/View;

    :goto_d
    iget-object v0, p0, LO0/u;->w:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LO0/u;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    iget-object v1, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, LO0/u;->B:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    iget-object v2, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    iget-object v2, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v6, 0x7f0a0002

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    iput v2, p0, LO0/u;->e0:F

    iget-object v2, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v7, 0x7f0a0001

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iput v2, p0, LO0/u;->f0:F

    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LO0/u;->C:Landroid/widget/ImageView;

    if-eqz v2, :cond_1a

    iget-object v6, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070064

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2, v4}, LO0/u;->n(Landroid/view/View;Z)V

    :cond_1a
    new-instance v6, LO0/z;

    invoke-direct {v6, p0}, LO0/z;-><init>(LO0/u;)V

    iput-object v6, p0, LO0/u;->a:LO0/z;

    iput-boolean v5, v6, LO0/z;->D:Z

    iget-object v7, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v8, 0x7f0d0031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v9, 0x7f070061

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v10, 0x7f0d0052

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v10, 0x7f07004d

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    filled-new-array {v8, v9}, [Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, LO0/p;

    invoke-direct {v9, p0, v7, v8}, LO0/p;-><init>(LO0/u;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v9, p0, LO0/u;->m:LO0/p;

    iget-object v7, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v8, 0x7f060017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, LO0/u;->s:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0b0007

    invoke-virtual {v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, LO0/u;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LR0/z;)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LR0/F;)V

    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-direct {v7, v3, v8, v8, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, p0, LO0/u;->r:Landroid/widget/PopupWindow;

    iget-object v3, p0, LO0/u;->d:LO0/j;

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-boolean v5, p0, LO0/u;->G0:Z

    new-instance v3, LZ0/i;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7}, LZ0/i;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, LO0/u;->q:LZ0/i;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070063

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->i0:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070062

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->j0:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v7, 0x7f0d0026

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LO0/u;->k0:Ljava/lang/String;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v7, 0x7f0d0025

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LO0/u;->l0:Ljava/lang/String;

    new-instance v3, LO0/i;

    invoke-direct {v3, p0, v5}, LO0/i;-><init>(LO0/u;I)V

    iput-object v3, p0, LO0/u;->o:LO0/i;

    new-instance v3, LO0/i;

    invoke-direct {v3, p0, v4}, LO0/i;-><init>(LO0/u;I)V

    iput-object v3, p0, LO0/u;->p:LO0/i;

    new-instance v3, LO0/m;

    iget-object v7, p0, LO0/u;->b:Landroid/content/res/Resources;

    const/high16 v8, 0x7f030000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sget-object v8, LO0/u;->H0:[F

    invoke-direct {v3, p0, v7, v8}, LO0/m;-><init>(LO0/u;[Ljava/lang/String;[F)V

    iput-object v3, p0, LO0/u;->n:LO0/m;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070056

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->R:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070055

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->S:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070051

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->m0:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070050

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->n0:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070059

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->T:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f07005a

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->U:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f070058

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->V:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f07005e

    invoke-virtual {v3, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, LO0/u;->c0:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v7, 0x7f07005d

    invoke-virtual {v3, v7, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LO0/u;->d0:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d002a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->o0:Ljava/lang/String;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d0029

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->p0:Ljava/lang/String;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d0034

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->W:Ljava/lang/String;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d0035

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->a0:Ljava/lang/String;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d0033

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->b0:Ljava/lang/String;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d003b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->g0:Ljava/lang/String;

    iget-object p1, p0, LO0/u;->b:Landroid/content/res/Resources;

    const v3, 0x7f0d003a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO0/u;->h0:Ljava/lang/String;

    const p1, 0x7f090039

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v6, p1, v5}, LO0/z;->h(Landroid/view/View;Z)V

    iget-object p1, p0, LO0/u;->w:Landroid/view/View;

    invoke-virtual {v6, p1, v5}, LO0/z;->h(Landroid/view/View;Z)V

    iget-object p1, p0, LO0/u;->x:Landroid/view/View;

    invoke-virtual {v6, p1, v5}, LO0/z;->h(Landroid/view/View;Z)V

    iget-object p1, p0, LO0/u;->t:Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v5}, LO0/z;->h(Landroid/view/View;Z)V

    iget-object p1, p0, LO0/u;->u:Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v5}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {v6, v1, v4}, LO0/z;->h(Landroid/view/View;Z)V

    iget-object p1, p0, LO0/u;->D:Landroid/widget/ImageView;

    invoke-virtual {v6, p1, v4}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {v6, v2, v4}, LO0/z;->h(Landroid/view/View;Z)V

    iget p1, p0, LO0/u;->A0:I

    if-eqz p1, :cond_1b

    goto :goto_e

    :cond_1b
    move v5, v4

    :goto_e
    invoke-virtual {v6, v0, v5}, LO0/z;->h(Landroid/view/View;Z)V

    new-instance p1, LO0/h;

    invoke-direct {p1, p0, v4}, LO0/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_1c
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Font resource ID #0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be retrieved."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resource \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not a Font: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(LO0/u;LG/g0;J)V
    .locals 6

    iget-boolean v0, p0, LO0/u;->v0:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-interface {p1, v0}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    invoke-interface {p1, v0}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, LG/g0;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->o()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LO0/u;->P:LG/p0;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v3

    iget-wide v3, v3, LG/p0;->l:J

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    :goto_1
    invoke-interface {p1, v2, p2, p3}, LG/g0;->t(IJ)V

    goto :goto_2

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-interface {p1, v0}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2, p3}, LG/g0;->y0(J)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, LO0/u;->s()V

    return-void
.end method

.method public static synthetic b(LO0/u;F)V
    .locals 0

    invoke-direct {p0, p1}, LO0/u;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static c(LG/g0;LG/p0;)Z
    .locals 8

    const/16 v0, 0x11

    invoke-interface {p0, v0}, LG/g0;->S0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, LG/g0;->p0()LG/q0;

    move-result-object p0

    invoke-virtual {p0}, LG/q0;->o()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, v5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v4

    iget-wide v4, v4, LG/p0;->l:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 3

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO0/u;->q0:LG/g0;

    invoke-interface {v0}, LG/g0;->g()LG/a0;

    move-result-object v1

    new-instance v2, LG/a0;

    iget v1, v1, LG/a0;->b:F

    invoke-direct {v2, p1, v1}, LG/a0;-><init>(FF)V

    invoke-interface {v0, v2}, LG/g0;->d(LG/a0;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, LO0/u;->q0:LG/g0;

    if-eqz v1, :cond_a

    const/16 v2, 0x58

    const/16 v3, 0x57

    const/16 v4, 0x7f

    const/16 v5, 0x7e

    const/16 v6, 0x4f

    const/16 v7, 0x55

    const/16 v8, 0x59

    const/16 v9, 0x5a

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_9

    if-ne v0, v9, :cond_1

    invoke-interface {v1}, LG/g0;->c()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 p1, 0xc

    invoke-interface {v1, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, LG/g0;->E0()V

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    const/16 v8, 0xb

    invoke-interface {v1, v8}, LG/g0;->S0(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, LG/g0;->H0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_9

    if-eq v0, v6, :cond_7

    if-eq v0, v7, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v1, v11}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, LG/g0;->h0()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, LJ/W;->z(LG/g0;)Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x7

    invoke-interface {v1, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, LG/g0;->M0()V

    goto :goto_0

    :cond_6
    const/16 p1, 0x9

    invoke-interface {v1, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, LG/g0;->C0()V

    goto :goto_0

    :cond_7
    iget-boolean p1, p0, LO0/u;->u0:Z

    invoke-static {v1, p1}, LJ/W;->Q(LG/g0;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v1}, LJ/W;->z(LG/g0;)Z

    goto :goto_0

    :cond_8
    invoke-interface {v1, v11}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, LG/g0;->h0()V

    :cond_9
    :goto_0
    return v11

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, LO0/u;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(LR0/z;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LO0/u;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LR0/z;)V

    invoke-virtual {p0}, LO0/u;->u()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LO0/u;->G0:Z

    iget-object p1, p0, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LO0/u;->G0:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, LO0/u;->s:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    neg-int v2, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, p2, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final f(LG/y0;I)Lu1/C0;
    .locals 11

    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lu1/s;->e(ILjava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p1, LG/y0;->a:Lu1/P;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/x0;

    iget-object v6, v5, LG/x0;->b:LG/r0;

    iget v6, v6, LG/r0;->c:I

    if-eq v6, p2, :cond_0

    goto :goto_4

    :cond_0
    move v6, v2

    :goto_1
    iget v7, v5, LG/x0;->a:I

    if-ge v6, v7, :cond_4

    invoke-virtual {v5, v6}, LG/x0;->a(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v5, LG/x0;->b:LG/r0;

    iget-object v7, v7, LG/r0;->d:[LG/x;

    aget-object v7, v7, v6

    iget v8, v7, LG/x;->e:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    iget-object v8, p0, LO0/u;->q:LZ0/i;

    invoke-virtual {v8, v7}, LZ0/i;->u(LG/x;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LO0/r;

    invoke-direct {v8, p1, v3, v6, v7}, LO0/r;-><init>(LG/y0;IILjava/lang/String;)V

    array-length v7, v0

    add-int/lit8 v9, v4, 0x1

    invoke-static {v7, v9}, Lu1/J;->b(II)I

    move-result v7

    array-length v10, v0

    if-gt v7, v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_2
    aput-object v8, v0, v4

    move v4, v9

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4, v0}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget v1, v0, LO0/z;->A:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LO0/z;->f()V

    iget-boolean v1, v0, LO0/z;->D:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, LO0/z;->i(I)V

    return-void

    :cond_1
    iget v1, v0, LO0/z;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, v0, LO0/z;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    iget-object v0, v0, LO0/z;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getPlayer()LG/g0;
    .locals 1

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, LO0/u;->A0:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, LO0/z;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, LO0/z;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, LO0/u;->x0:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, LO0/z;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final h(LG/g0;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LO0/u;->h:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(LG/g0;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LO0/u;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget v1, v0, LO0/z;->A:I

    if-nez v1, :cond_0

    iget-object v0, v0, LO0/z;->a:LO0/u;

    invoke-virtual {v0}, LO0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(LG/g0;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, LO0/u;->i(LG/g0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO0/u;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, LO0/u;->h(LG/g0;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LO0/u;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, LO0/u;->q()V

    invoke-virtual {p0}, LO0/u;->p()V

    invoke-virtual {p0}, LO0/u;->t()V

    invoke-virtual {p0}, LO0/u;->v()V

    invoke-virtual {p0}, LO0/u;->x()V

    invoke-virtual {p0}, LO0/u;->r()V

    invoke-virtual {p0}, LO0/u;->w()V

    return-void
.end method

.method public final n(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget p2, p0, LO0/u;->e0:F

    goto :goto_0

    :cond_1
    iget p2, p0, LO0/u;->f0:F

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final o(Z)V
    .locals 5

    iget-boolean v0, p0, LO0/u;->r0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, LO0/u;->r0:Z

    iget-object v0, p0, LO0/u;->p0:Ljava/lang/String;

    iget-object v1, p0, LO0/u;->n0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, LO0/u;->o0:Ljava/lang/String;

    iget-object v3, p0, LO0/u;->m0:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, LO0/u;->E:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, LO0/u;->F:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, v0, LO0/z;->a:LO0/u;

    iget-object v2, v0, LO0/z;->y:LO0/h;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, LO0/u;->s0:Z

    invoke-virtual {p0}, LO0/u;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LO0/z;->g()V

    :cond_0
    invoke-virtual {p0}, LO0/u;->m()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, v0, LO0/z;->a:LO0/u;

    iget-object v2, v0, LO0/z;->y:LO0/h;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, LO0/u;->s0:Z

    iget-object v1, p0, LO0/u;->Q:LH/a;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, LO0/z;->f()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object v0, p1, LO0/u;->a:LO0/z;

    iget-object v0, v0, LO0/z;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 12

    invoke-virtual {p0}, LO0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, LO0/u;->s0:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, LO0/u;->q0:LG/g0;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, LO0/u;->t0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, LO0/u;->P:LG/p0;

    invoke-static {v0, v1}, LO0/u;->c(LG/g0;LG/p0;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v1

    :goto_0
    const/4 v2, 0x7

    invoke-interface {v0, v2}, LG/g0;->S0(I)Z

    move-result v2

    const/16 v3, 0xb

    invoke-interface {v0, v3}, LG/g0;->S0(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-interface {v0, v4}, LG/g0;->S0(I)Z

    move-result v4

    const/16 v5, 0x9

    invoke-interface {v0, v5}, LG/g0;->S0(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, LO0/u;->b:Landroid/content/res/Resources;

    iget-object v6, p0, LO0/u;->x:Landroid/view/View;

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_5

    iget-object v9, p0, LO0/u;->q0:LG/g0;

    if-eqz v9, :cond_3

    invoke-interface {v9}, LG/g0;->P0()J

    move-result-wide v9

    goto :goto_2

    :cond_3
    const-wide/16 v9, 0x1388

    :goto_2
    div-long/2addr v9, v7

    long-to-int v9, v9

    iget-object v10, p0, LO0/u;->z:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f0c0001

    invoke-virtual {v5, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v9, p0, LO0/u;->w:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v10, p0, LO0/u;->q0:LG/g0;

    if-eqz v10, :cond_6

    invoke-interface {v10}, LG/g0;->o()J

    move-result-wide v10

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x3a98

    :goto_3
    div-long/2addr v10, v7

    long-to-int v7, v10

    iget-object v8, p0, LO0/u;->y:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v9, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/high16 v10, 0x7f0c0000

    invoke-virtual {v5, v10, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v5, p0, LO0/u;->t:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, LO0/u;->n(Landroid/view/View;Z)V

    invoke-virtual {p0, v6, v3}, LO0/u;->n(Landroid/view/View;Z)V

    invoke-virtual {p0, v9, v4}, LO0/u;->n(Landroid/view/View;Z)V

    iget-object v2, p0, LO0/u;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, LO0/u;->n(Landroid/view/View;Z)V

    iget-object v0, p0, LO0/u;->L:LO0/N;

    if-eqz v0, :cond_9

    check-cast v0, LO0/f;

    invoke-virtual {v0, v1}, LO0/f;->setEnabled(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final q()V
    .locals 9

    invoke-virtual {p0}, LO0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, LO0/u;->s0:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, LO0/u;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v1, p0, LO0/u;->q0:LG/g0;

    iget-boolean v2, p0, LO0/u;->u0:Z

    invoke-static {v1, v2}, LJ/W;->Q(LG/g0;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, LO0/u;->R:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v2, p0, LO0/u;->S:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v1, :cond_2

    const v1, 0x7f0d0030

    goto :goto_1

    :cond_2
    const v1, 0x7f0d002f

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, LO0/u;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, LO0/u;->q0:LG/g0;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_6

    :cond_3
    invoke-interface {v1}, LG/g0;->c()I

    move-result v3

    const/16 v4, 0x10

    invoke-interface {v1, v4}, LG/g0;->S0(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v1}, LG/g0;->R0()LG/P;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v5

    :goto_3
    invoke-interface {v1, v5}, LG/g0;->S0(I)Z

    move-result v6

    if-ne v3, v5, :cond_6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, LG/g0;->S0(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_4

    :cond_6
    move v7, v2

    :goto_4
    const/4 v8, 0x4

    if-ne v3, v8, :cond_7

    invoke-interface {v1, v8}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v4, :cond_9

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    move v2, v5

    :cond_9
    :goto_6
    invoke-virtual {p0, v0, v2}, LO0/u;->n(Landroid/view/View;Z)V

    :cond_a
    :goto_7
    return-void
.end method

.method public final r()V
    .locals 8

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, LG/g0;->g()LG/a0;

    move-result-object v0

    iget v0, v0, LG/a0;->a:F

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, LO0/u;->n:LO0/m;

    iget-object v6, v5, LO0/m;->d:[F

    array-length v7, v6

    if-ge v3, v7, :cond_2

    aget v5, v6, v3

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    move v4, v3

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput v4, v5, LO0/m;->e:I

    iget-object v0, v5, LO0/m;->c:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v2, p0, LO0/u;->m:LO0/p;

    iget-object v3, v2, LO0/p;->d:[Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LO0/p;->d(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, LO0/p;->d(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    iget-object v0, p0, LO0/u;->G:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, LO0/u;->n(Landroid/view/View;Z)V

    return-void
.end method

.method public final s()V
    .locals 15

    invoke-virtual {p0}, LO0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, LO0/u;->s0:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, LO0/u;->q0:LG/g0;

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, LO0/u;->F0:J

    invoke-interface {v0}, LG/g0;->r()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v1, p0, LO0/u;->F0:J

    invoke-interface {v0}, LG/g0;->z0()J

    move-result-wide v5

    add-long/2addr v5, v1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    iget-object v1, p0, LO0/u;->K:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, LO0/u;->w0:Z

    if-nez v2, :cond_2

    iget-object v2, p0, LO0/u;->M:Ljava/lang/StringBuilder;

    iget-object v7, p0, LO0/u;->N:Ljava/util/Formatter;

    invoke-static {v2, v7, v3, v4}, LJ/W;->w(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, LO0/u;->L:LO0/N;

    if-eqz v1, :cond_4

    move-object v2, v1

    check-cast v2, LO0/f;

    invoke-virtual {v2, v3, v4}, LO0/f;->setPosition(J)V

    invoke-virtual {p0, v0}, LO0/u;->k(LG/g0;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-wide v5, v3

    :cond_3
    invoke-virtual {v2, v5, v6}, LO0/f;->setBufferedPosition(J)V

    :cond_4
    iget-object v2, p0, LO0/u;->Q:LH/a;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v5, 0x1

    if-nez v0, :cond_5

    move v6, v5

    goto :goto_1

    :cond_5
    invoke-interface {v0}, LG/g0;->c()I

    move-result v6

    :goto_1
    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_8

    invoke-interface {v0}, LG/g0;->I()Z

    move-result v9

    if-eqz v9, :cond_8

    if-eqz v1, :cond_6

    check-cast v1, LO0/f;

    invoke-virtual {v1}, LO0/f;->getPreferredUpdateDelay()J

    move-result-wide v5

    goto :goto_2

    :cond_6
    move-wide v5, v7

    :goto_2
    rem-long/2addr v3, v7

    sub-long v3, v7, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v0}, LG/g0;->g()LG/a0;

    move-result-object v0

    iget v0, v0, LG/a0;->a:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    long-to-float v1, v3

    div-float/2addr v1, v0

    float-to-long v7, v1

    :cond_7
    move-wide v9, v7

    iget v0, p0, LO0/u;->z0:I

    int-to-long v11, v0

    const-wide/16 v13, 0x3e8

    invoke-static/range {v9 .. v14}, LJ/W;->h(JJJ)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_8
    const/4 v0, 0x4

    if-eq v6, v0, :cond_9

    if-eq v6, v5, :cond_9

    invoke-virtual {p0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iput-boolean p1, v0, LO0/z;->D:Z

    return-void
.end method

.method public setMediaRouteButtonViewProvider(LG/D0;)V
    .locals 4

    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-interface {p1}, LG/D0;->a()Lz1/B;

    move-result-object p1

    new-instance v2, LB/A;

    const/16 v3, 0xb

    invoke-direct {v2, v3, p0, v0, v1}, LB/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LO0/u;->c:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LM0/A;

    const/4 v3, 0x6

    invoke-direct {v1, v0, v3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lz1/v;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0, v1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The media route button placeholder has no parent view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The media route button placeholder is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnFullScreenModeChangedListener(LO0/k;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x8

    iget-object v4, p0, LO0/u;->E:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    iget-object p1, p0, LO0/u;->F:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPlayer(LG/g0;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, LG/g0;->U0()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, LF1/i;->g(Z)V

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, LO0/u;->d:LO0/j;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, LG/g0;->o0(LG/e0;)V

    :cond_4
    iput-object p1, p0, LO0/u;->q0:LG/g0;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, LG/g0;->O(LG/e0;)V

    :cond_5
    invoke-virtual {p0}, LO0/u;->m()V

    return-void
.end method

.method public setProgressUpdateListener(LO0/n;)V
    .locals 0

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    iput p1, p0, LO0/u;->A0:I

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xf

    invoke-interface {v0, v3}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    invoke-interface {v0}, LG/g0;->f()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    invoke-interface {v0, v1}, LG/g0;->b0(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    invoke-interface {v0, v2}, LG/g0;->b0(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, LO0/u;->q0:LG/g0;

    invoke-interface {v0, v3}, LG/g0;->b0(I)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iget-object p1, p0, LO0/u;->a:LO0/z;

    iget-object v0, p0, LO0/u;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, LO0/u;->t()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->w:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, LO0/u;->p()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, LO0/u;->t0:Z

    invoke-virtual {p0}, LO0/u;->w()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, LO0/u;->p()V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    iput-boolean p1, p0, LO0/u;->u0:Z

    invoke-virtual {p0}, LO0/u;->q()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, LO0/u;->p()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->x:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, LO0/u;->p()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, LO0/u;->v()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, LO0/u;->x0:I

    invoke-virtual {p0}, LO0/u;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LO0/u;->a:LO0/z;

    invoke-virtual {p1}, LO0/z;->g()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    iget-object v0, p0, LO0/u;->a:LO0/z;

    iget-object v1, p0, LO0/u;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, LO0/z;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, LJ/W;->g(III)I

    move-result p1

    iput p1, p0, LO0/u;->z0:I

    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, LO0/u;->y0:Z

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, LO0/u;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, LO0/u;->n(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 6

    invoke-virtual {p0}, LO0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, LO0/u;->s0:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, LO0/u;->A:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, LO0/u;->A0:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2}, LO0/u;->n(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v1, p0, LO0/u;->q0:LG/g0;

    iget-object v3, p0, LO0/u;->W:Ljava/lang/String;

    iget-object v4, p0, LO0/u;->T:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    const/16 v5, 0xf

    invoke-interface {v1, v5}, LG/g0;->S0(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, LO0/u;->n(Landroid/view/View;Z)V

    invoke-interface {v1}, LG/g0;->f()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, LO0/u;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, LO0/u;->b0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v1, p0, LO0/u;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, LO0/u;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v2}, LO0/u;->n(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final u()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, LO0/u;->l:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, LO0/u;->s:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public final v()V
    .locals 6

    invoke-virtual {p0}, LO0/u;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, LO0/u;->s0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, LO0/u;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, LO0/u;->q0:LG/g0;

    iget-object v2, p0, LO0/u;->a:LO0/z;

    invoke-virtual {v2, v0}, LO0/z;->b(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v3}, LO0/u;->n(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v2, p0, LO0/u;->h0:Ljava/lang/String;

    iget-object v4, p0, LO0/u;->d0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    const/16 v5, 0xe

    invoke-interface {v1, v5}, LG/g0;->S0(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, LO0/u;->n(Landroid/view/View;Z)V

    invoke-interface {v1}, LG/g0;->w0()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, LO0/u;->c0:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1}, LG/g0;->w0()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, LO0/u;->g0:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v3}, LO0/u;->n(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, LO0/u;->q0:LG/g0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, LO0/u;->t0:Z

    iget-object v3, v0, LO0/u;->P:LG/p0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1, v3}, LO0/u;->c(LG/g0;LG/p0;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, v0, LO0/u;->v0:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, LO0/u;->F0:J

    const/16 v2, 0x11

    invoke-interface {v1, v2}, LG/g0;->S0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LG/g0;->p0()LG/q0;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, LG/q0;->a:LG/m0;

    :goto_1
    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v8, :cond_13

    invoke-interface {v1}, LG/g0;->V()I

    move-result v1

    iget-boolean v8, v0, LO0/u;->v0:Z

    if-eqz v8, :cond_3

    move v11, v4

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v2}, LG/q0;->o()I

    move-result v8

    sub-int/2addr v8, v5

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    move v14, v4

    move-wide v12, v6

    :goto_4
    if-gt v11, v8, :cond_6

    move-wide v15, v6

    if-ne v11, v1, :cond_5

    invoke-static {v12, v13}, LJ/W;->S(J)J

    move-result-wide v6

    iput-wide v6, v0, LO0/u;->F0:J

    :cond_5
    invoke-virtual {v2, v11, v3}, LG/q0;->n(ILG/p0;)V

    iget-wide v6, v3, LG/p0;->l:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_7

    iget-boolean v1, v0, LO0/u;->v0:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, LF1/i;->o(Z)V

    :cond_6
    move v2, v5

    goto/16 :goto_c

    :cond_7
    iget v6, v3, LG/p0;->m:I

    :goto_5
    iget v7, v3, LG/p0;->n:I

    if-gt v6, v7, :cond_12

    iget-object v7, v0, LO0/u;->O:LG/n0;

    invoke-virtual {v2, v6, v7, v4}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-wide/from16 v17, v9

    iget-object v9, v7, LG/n0;->g:LG/c;

    iget v10, v9, LG/c;->d:I

    iget v9, v9, LG/c;->a:I

    :goto_6
    if-ge v10, v9, :cond_11

    invoke-virtual {v7, v10}, LG/n0;->d(I)J

    move-result-wide v19

    const-wide/high16 v21, -0x8000000000000000L

    cmp-long v21, v19, v21

    if-nez v21, :cond_a

    iget-wide v4, v7, LG/n0;->d:J

    cmp-long v19, v4, v17

    if-nez v19, :cond_9

    :cond_8
    move/from16 v16, v1

    move-object/from16 v24, v2

    const/4 v2, 0x1

    goto/16 :goto_b

    :cond_9
    move-wide/from16 v19, v4

    :cond_a
    iget-wide v4, v7, LG/n0;->e:J

    add-long v19, v19, v4

    cmp-long v4, v19, v15

    if-ltz v4, :cond_8

    iget-object v4, v0, LO0/u;->B0:[J

    array-length v5, v4

    if-ne v14, v5, :cond_c

    array-length v5, v4

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    :goto_7
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, LO0/u;->B0:[J

    iget-object v4, v0, LO0/u;->C0:[Z

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, LO0/u;->C0:[Z

    :cond_c
    iget-object v4, v0, LO0/u;->B0:[J

    add-long v19, v12, v19

    invoke-static/range {v19 .. v20}, LJ/W;->S(J)J

    move-result-wide v19

    aput-wide v19, v4, v14

    iget-object v4, v0, LO0/u;->C0:[Z

    iget-object v5, v7, LG/n0;->g:LG/c;

    invoke-virtual {v5, v10}, LG/c;->a(I)LG/a;

    move-result-object v5

    iget v15, v5, LG/a;->b:I

    move/from16 v16, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_d

    move-object/from16 v24, v2

    const/4 v2, 0x1

    const/16 v22, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v15, :cond_10

    move/from16 v23, v1

    iget-object v1, v5, LG/a;->f:[I

    aget v1, v1, v23

    move-object/from16 v24, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    if-ne v1, v2, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v1, v23, 0x1

    move-object/from16 v2, v24

    goto :goto_8

    :cond_f
    :goto_9
    move/from16 v22, v2

    goto :goto_a

    :cond_10
    move-object/from16 v24, v2

    const/4 v2, 0x1

    const/16 v22, 0x0

    :goto_a
    xor-int/lit8 v1, v22, 0x1

    aput-boolean v1, v4, v14

    add-int/lit8 v14, v14, 0x1

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move v5, v2

    move/from16 v1, v16

    move-object/from16 v2, v24

    const/4 v4, 0x0

    const-wide/16 v15, 0x0

    goto/16 :goto_6

    :cond_11
    move/from16 v16, v1

    move-object/from16 v24, v2

    move v2, v5

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v9, v17

    move-object/from16 v2, v24

    const/4 v4, 0x0

    const-wide/16 v15, 0x0

    goto/16 :goto_5

    :cond_12
    move/from16 v16, v1

    move-object/from16 v24, v2

    move v2, v5

    move-wide/from16 v17, v9

    iget-wide v4, v3, LG/p0;->l:J

    add-long/2addr v12, v4

    add-int/lit8 v11, v11, 0x1

    move v5, v2

    move-object/from16 v2, v24

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    goto/16 :goto_4

    :goto_c
    move-wide v6, v12

    goto :goto_e

    :cond_13
    move v2, v5

    move-wide/from16 v17, v9

    const/16 v3, 0x10

    invoke-interface {v1, v3}, LG/g0;->S0(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, LG/g0;->J()J

    move-result-wide v3

    cmp-long v1, v3, v17

    if-eqz v1, :cond_14

    invoke-static {v3, v4}, LJ/W;->G(J)J

    move-result-wide v6

    :goto_d
    const/4 v14, 0x0

    goto :goto_e

    :cond_14
    const-wide/16 v6, 0x0

    goto :goto_d

    :goto_e
    invoke-static {v6, v7}, LJ/W;->S(J)J

    move-result-wide v3

    iget-object v1, v0, LO0/u;->J:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    iget-object v5, v0, LO0/u;->M:Ljava/lang/StringBuilder;

    iget-object v6, v0, LO0/u;->N:Ljava/util/Formatter;

    invoke-static {v5, v6, v3, v4}, LJ/W;->w(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-object v1, v0, LO0/u;->L:LO0/N;

    if-eqz v1, :cond_19

    check-cast v1, LO0/f;

    invoke-virtual {v1, v3, v4}, LO0/f;->setDuration(J)V

    iget-object v3, v0, LO0/u;->D0:[J

    array-length v4, v3

    add-int v5, v14, v4

    iget-object v6, v0, LO0/u;->B0:[J

    array-length v7, v6

    if-le v5, v7, :cond_16

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    iput-object v6, v0, LO0/u;->B0:[J

    iget-object v6, v0, LO0/u;->C0:[Z

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v6

    iput-object v6, v0, LO0/u;->C0:[Z

    :cond_16
    iget-object v6, v0, LO0/u;->B0:[J

    const/4 v7, 0x0

    invoke-static {v3, v7, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, LO0/u;->E0:[Z

    iget-object v6, v0, LO0/u;->C0:[Z

    invoke-static {v3, v7, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, LO0/u;->B0:[J

    iget-object v4, v0, LO0/u;->C0:[Z

    if-eqz v5, :cond_18

    if-eqz v3, :cond_17

    if-eqz v4, :cond_17

    goto :goto_f

    :cond_17
    move v2, v7

    :cond_18
    :goto_f
    invoke-static {v2}, LF1/i;->g(Z)V

    iput v5, v1, LO0/f;->M:I

    iput-object v3, v1, LO0/f;->N:[J

    iput-object v4, v1, LO0/f;->O:[Z

    invoke-virtual {v1}, LO0/f;->e()V

    :cond_19
    invoke-virtual {v0}, LO0/u;->s()V

    return-void
.end method

.method public final x()V
    .locals 11

    iget-object v0, p0, LO0/u;->o:LO0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, LO0/i;->c:Ljava/util/List;

    iget-object v2, p0, LO0/u;->p:LO0/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, LO0/i;->c:Ljava/util/List;

    iget-object v1, p0, LO0/u;->q0:LG/g0;

    iget-object v3, p0, LO0/u;->D:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    const/16 v6, 0x1e

    invoke-interface {v1, v6}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LO0/u;->q0:LG/g0;

    const/16 v6, 0x1d

    invoke-interface {v1, v6}, LG/g0;->S0(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, LO0/u;->q0:LG/g0;

    invoke-interface {v1}, LG/g0;->E()LG/y0;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, LO0/u;->f(LG/y0;I)Lu1/C0;

    move-result-object v6

    iput-object v6, v2, LO0/i;->c:Ljava/util/List;

    iget-object v7, v2, LO0/i;->f:LO0/u;

    iget-object v8, v7, LO0/u;->q0:LG/g0;

    iget-object v9, v7, LO0/u;->m:LO0/p;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, LG/g0;->x0()LG/w0;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0051

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v9, LO0/p;->d:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, LO0/i;->d(LG/w0;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0050

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v9, LO0/p;->d:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_0
    iget v7, v6, Lu1/C0;->h:I

    if-ge v2, v7, :cond_4

    invoke-virtual {v6, v2}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LO0/r;

    iget-object v8, v7, LO0/r;->a:LG/x0;

    iget v10, v7, LO0/r;->b:I

    iget-object v8, v8, LG/x0;->e:[Z

    aget-boolean v8, v8, v10

    if-eqz v8, :cond_3

    iget-object v2, v7, LO0/r;->c:Ljava/lang/String;

    iget-object v6, v9, LO0/p;->d:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p0, LO0/u;->a:LO0/z;

    invoke-virtual {v2, v3}, LO0/z;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, LO0/u;->f(LG/y0;I)Lu1/C0;

    move-result-object v1

    invoke-virtual {v0, v1}, LO0/i;->e(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    sget-object v1, Lu1/C0;->i:Lu1/C0;

    invoke-virtual {v0, v1}, LO0/i;->e(Ljava/util/List;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, LO0/i;->a()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    invoke-virtual {p0, v3, v0}, LO0/u;->n(Landroid/view/View;Z)V

    iget-object v0, p0, LO0/u;->m:LO0/p;

    invoke-virtual {v0, v5}, LO0/p;->d(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, LO0/p;->d(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    iget-object v0, p0, LO0/u;->G:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, LO0/u;->n(Landroid/view/View;Z)V

    return-void
.end method
