.class public final LO0/F;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public final a:LO0/B;

.field public final b:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Z

.field public final f:La1/g;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroidx/media3/ui/SubtitleView;

.field public final j:Landroid/view/View;

.field public final k:Landroid/widget/TextView;

.field public final l:LO0/u;

.field public final m:Landroid/widget/FrameLayout;

.field public final n:Landroid/widget/FrameLayout;

.field public final o:Landroid/os/Handler;

.field public final p:Ljava/lang/Class;

.field public final q:Ljava/lang/reflect/Method;

.field public final r:Ljava/lang/Object;

.field public s:LG/g0;

.field public t:Z

.field public u:LO0/t;

.field public v:I

.field public w:I

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoActivity;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, LO0/B;

    invoke-direct {v2, p0}, LO0/B;-><init>(LO0/F;)V

    iput-object v2, p0, LO0/F;->a:LO0/B;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, LO0/F;->o:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v0, p0, LO0/F;->c:Landroid/view/View;

    iput-object v0, p0, LO0/F;->d:Landroid/view/View;

    iput-boolean v1, p0, LO0/F;->e:Z

    iput-object v0, p0, LO0/F;->f:La1/g;

    iput-object v0, p0, LO0/F;->g:Landroid/widget/ImageView;

    iput-object v0, p0, LO0/F;->h:Landroid/widget/ImageView;

    iput-object v0, p0, LO0/F;->i:Landroidx/media3/ui/SubtitleView;

    iput-object v0, p0, LO0/F;->j:Landroid/view/View;

    iput-object v0, p0, LO0/F;->k:Landroid/widget/TextView;

    iput-object v0, p0, LO0/F;->l:LO0/u;

    iput-object v0, p0, LO0/F;->m:Landroid/widget/FrameLayout;

    iput-object v0, p0, LO0/F;->n:Landroid/widget/FrameLayout;

    iput-object v0, p0, LO0/F;->p:Ljava/lang/Class;

    iput-object v0, p0, LO0/F;->q:Ljava/lang/reflect/Method;

    iput-object v0, p0, LO0/F;->r:Ljava/lang/Object;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    const v3, 0x7f070014

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f050010

    invoke-virtual {v2, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v3, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    :cond_1
    const v4, 0x7f090060

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, LO0/F;->c:Landroid/view/View;

    const/16 v4, 0x22

    if-eqz v3, :cond_3

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v4, :cond_2

    invoke-static {v6}, LN/v;->g(Landroid/view/SurfaceView;)V

    :cond_2
    iput-object v6, p0, LO0/F;->d:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v3, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iput-object v0, p0, LO0/F;->d:Landroid/view/View;

    :goto_0
    iput-boolean v1, p0, LO0/F;->e:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v4, :cond_4

    new-instance v2, La1/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    iput-object v2, p0, LO0/F;->f:La1/g;

    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LO0/F;->m:Landroid/widget/FrameLayout;

    const v2, 0x7f090051

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, LO0/F;->n:Landroid/widget/FrameLayout;

    const v2, 0x7f090049

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LO0/F;->g:Landroid/widget/ImageView;

    iput v1, p0, LO0/F;->w:I

    :try_start_0
    const-class v2, Landroidx/media3/exoplayer/ExoPlayer;

    const-class v3, Landroidx/media3/exoplayer/image/ImageOutput;

    const-string v4, "setImageOutput"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    new-instance v6, LO0/A;

    invoke-direct {v6, p0}, LO0/A;-><init>(LO0/F;)V

    invoke-static {v5, v3, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    :goto_2
    iput-object v2, p0, LO0/F;->p:Ljava/lang/Class;

    iput-object v4, p0, LO0/F;->q:Ljava/lang/reflect/Method;

    iput-object v3, p0, LO0/F;->r:Ljava/lang/Object;

    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, LO0/F;->h:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    iput v2, p0, LO0/F;->v:I

    const v2, 0x7f090063

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/SubtitleView;

    iput-object v2, p0, LO0/F;->i:Landroidx/media3/ui/SubtitleView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/media3/ui/SubtitleView;->a()V

    invoke-virtual {v2}, Landroidx/media3/ui/SubtitleView;->b()V

    :cond_6
    const v2, 0x7f09003a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, LO0/F;->j:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iput v1, p0, LO0/F;->y:I

    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, LO0/F;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, LO0/u;

    const v5, 0x7f09003f

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_9

    iput-object v4, p0, LO0/F;->l:LO0/u;

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    new-instance v0, LO0/u;

    invoke-direct {v0, p1}, LO0/u;-><init>(Lcom/brisa/local/VideoActivity;)V

    iput-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_a
    iput-object v0, p0, LO0/F;->l:LO0/u;

    :goto_4
    iget-object p1, p0, LO0/F;->l:LO0/u;

    if-eqz p1, :cond_b

    const/16 v0, 0x1388

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    iput v0, p0, LO0/F;->B:I

    iput-boolean v3, p0, LO0/F;->E:Z

    iput-boolean v3, p0, LO0/F;->C:Z

    iput-boolean v3, p0, LO0/F;->D:Z

    if-eqz p1, :cond_c

    move v1, v3

    :cond_c
    iput-boolean v1, p0, LO0/F;->t:Z

    if-eqz p1, :cond_f

    iget-object p1, p1, LO0/u;->a:LO0/z;

    iget v0, p1, LO0/z;->A:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, LO0/z;->f()V

    invoke-virtual {p1, v1}, LO0/z;->i(I)V

    :cond_e
    :goto_6
    iget-object p1, p0, LO0/F;->l:LO0/u;

    iget-object v0, p0, LO0/F;->a:LO0/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LO0/u;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, LO0/F;->l()V

    return-void
.end method

.method public static a(LO0/F;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, LO0/F;->setImage(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LO0/F;->s:LG/g0;

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, LG/g0;->E()LG/y0;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LG/y0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LO0/F;->g:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, LO0/F;->o()V

    :cond_1
    iget-object p0, p0, LO0/F;->c:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, LO0/F;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, LO0/F;->o()V

    return-void
.end method

.method private setImageOutput(LG/g0;)V
    .locals 2

    iget-object v0, p0, LO0/F;->p:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LO0/F;->q:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LO0/F;->r:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, LO0/F;->s:LG/g0;

    if-eqz v0, :cond_0

    iget-object v1, p0, LO0/F;->r:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LG/g0;->E()LG/y0;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LG/y0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, LO0/F;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, LO0/F;->s:LG/g0;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO0/F;->s:LG/g0;

    invoke-interface {v0}, LG/g0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO0/F;->s:LG/g0;

    invoke-interface {v0}, LG/g0;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LO0/F;->f:La1/g;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, LO0/F;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, LN/v;->h(Landroid/window/SurfaceSyncGroup;)V

    const/4 v0, 0x0

    iput-object v0, p1, La1/g;->e:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, LO0/F;->s:LG/g0;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO0/F;->s:LG/g0;

    invoke-interface {v0}, LG/g0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, LO0/F;->l:LO0/u;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LO0/u;->j()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, LO0/F;->e(Z)V

    return v3

    :cond_3
    invoke-virtual {p0}, LO0/F;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, p1}, LO0/u;->d(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {p0, v3}, LO0/F;->e(Z)V

    return v3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3}, LO0/F;->e(Z)V

    :cond_6
    return v2
.end method

.method public final e(Z)V
    .locals 2

    invoke-virtual {p0}, LO0/F;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LO0/F;->D:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LO0/F;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, LO0/u;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LO0/u;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LO0/F;->g()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, LO0/F;->h(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, LO0/F;->h:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v4, p0, LO0/F;->v:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v4, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final g()Z
    .locals 4

    iget-object v0, p0, LO0/F;->s:LG/g0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, LG/g0;->c()I

    move-result v0

    iget-boolean v2, p0, LO0/F;->C:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, LO0/F;->s:LG/g0;

    const/16 v3, 0x11

    invoke-interface {v2, v3}, LG/g0;->S0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LO0/F;->s:LG/g0;

    invoke-interface {v2}, LG/g0;->p0()LG/q0;

    move-result-object v2

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, LO0/F;->s:LG/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LG/g0;->z()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LZ0/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LO0/F;->n:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v2, LZ0/i;

    invoke-direct {v2, v1}, LZ0/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, LO0/F;->l:LO0/u;

    if-eqz v1, :cond_1

    new-instance v2, LZ0/i;

    invoke-direct {v2, v1}, LZ0/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    const-string v0, "exo_ad_overlay must be present for ad playback"

    iget-object v1, p0, LO0/F;->m:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    iget v0, p0, LO0/F;->v:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    iget-boolean v0, p0, LO0/F;->C:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    iget-boolean v0, p0, LO0/F;->E:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    iget v0, p0, LO0/F;->B:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, LO0/F;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageDisplayMode()I
    .locals 1

    iget v0, p0, LO0/F;->w:I

    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, LO0/F;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()LG/g0;
    .locals 1

    iget-object v0, p0, LO0/F;->s:LG/g0;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    iget-object v0, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    iget-object v0, p0, LO0/F;->i:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, LO0/F;->v:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseController()Z
    .locals 1

    iget-boolean v0, p0, LO0/F;->t:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, LO0/F;->d:Landroid/view/View;

    return-object v0
.end method

.method public final h(Z)V
    .locals 3

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, LO0/F;->B:I

    :goto_0
    iget-object v1, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v1, p1}, LO0/u;->setShowTimeoutMs(I)V

    iget-object p1, v1, LO0/u;->a:LO0/z;

    iget-object v1, p1, LO0/z;->a:LO0/u;

    invoke-virtual {v1}, LO0/u;->l()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, LO0/u;->m()V

    iget-object v0, v1, LO0/u;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    invoke-virtual {p1}, LO0/z;->k()V

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LO0/F;->s:LG/g0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, LO0/u;->j()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LO0/F;->e(Z)V

    return-void

    :cond_1
    iget-boolean v1, p0, LO0/F;->E:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LO0/u;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, LO0/F;->s:LG/g0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LG/g0;->N()LG/C0;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, LG/C0;->d:LG/C0;

    :goto_0
    iget v1, v0, LG/C0;->a:I

    iget v2, v0, LG/C0;->b:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    iget v0, v0, LG/C0;->c:F

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iget-boolean v0, p0, LO0/F;->e:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, LO0/F;->j:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, LO0/F;->s:LG/g0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, LG/g0;->c()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, p0, LO0/F;->y:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, LO0/F;->s:LG/g0;

    invoke-interface {v1}, LG/g0;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LO0/F;->l:LO0/u;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, LO0/F;->t:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LO0/u;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LO0/F;->E:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, LO0/F;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, LO0/F;->A:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, LO0/F;->s:LG/g0;

    if-eqz v1, :cond_1

    invoke-interface {v1}, LG/g0;->j()LG/Z;

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final n(Z)V
    .locals 10

    iget-object v0, p0, LO0/F;->s:LG/g0;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, LG/g0;->S0(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, LG/g0;->E()LG/y0;

    move-result-object v4

    iget-object v4, v4, LG/y0;->a:Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-boolean v5, p0, LO0/F;->z:Z

    const v6, 0x106000d

    const/4 v7, 0x4

    iget-object v8, p0, LO0/F;->h:Landroid/widget/ImageView;

    iget-object v9, p0, LO0/F;->c:Landroid/view/View;

    if-nez v5, :cond_4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, LO0/F;->c()V

    :cond_4
    if-nez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object p1, p0, LO0/F;->s:LG/g0;

    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, LG/g0;->E()LG/y0;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, LG/y0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_1

    :cond_6
    move p1, v3

    :goto_1
    invoke-virtual {p0}, LO0/F;->b()Z

    move-result v1

    if-nez p1, :cond_8

    if-nez v1, :cond_8

    if-eqz v9, :cond_7

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, LO0/F;->c()V

    :cond_8
    iget-object v4, p0, LO0/F;->g:Landroid/widget/ImageView;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_a

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v1, :cond_c

    if-nez p1, :cond_c

    if-eqz v2, :cond_c

    if-eqz v9, :cond_b

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-eqz v4, :cond_d

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, LO0/F;->o()V

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {p0}, LO0/F;->c()V

    :cond_d
    :goto_4
    if-nez p1, :cond_12

    if-nez v1, :cond_12

    iget p1, p0, LO0/F;->v:I

    if-eqz p1, :cond_12

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_10

    const/16 p1, 0x12

    invoke-interface {v0, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {v0}, LG/g0;->K0()LG/T;

    move-result-object p1

    iget-object p1, p1, LG/T;->k:[B

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    array-length v0, p1

    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, LO0/F;->f(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    :cond_10
    :goto_5
    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    iget-object p1, p0, LO0/F;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, LO0/F;->f(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    :goto_6
    return-void
.end method

.method public final o()V
    .locals 5

    iget-object v0, p0, LO0/F;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v2, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v3, p0, LO0/F;->w:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LO0/F;->s:LG/g0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LO0/F;->e(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, LO0/F;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .locals 1

    invoke-virtual {p0}, LO0/F;->i()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, LO0/F;->h:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    iget v1, p0, LO0/F;->v:I

    if-eq v1, p1, :cond_2

    iput p1, p0, LO0/F;->v:I

    invoke-virtual {p0, v0}, LO0/F;->n(Z)V

    :cond_2
    return-void
.end method

.method public setAspectRatioListener(LO0/a;)V
    .locals 1

    iget-object v0, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(LO0/a;)V

    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, LO0/F;->C:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, LO0/F;->D:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p1, p0, LO0/F;->E:Z

    invoke-virtual {p0}, LO0/F;->l()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(LO0/k;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setOnFullScreenModeChangedListener(LO0/k;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p1, p0, LO0/F;->B:I

    invoke-virtual {v0}, LO0/u;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LO0/F;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, LO0/F;->h(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(LO0/C;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, LO0/F;->setControllerVisibilityListener(LO0/t;)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(LO0/t;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v1, p0, LO0/F;->u:LO0/t;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v0, LO0/u;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iput-object p1, p0, LO0/F;->u:LO0/t;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, v0, LO0/u;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, LO0/F;->setControllerVisibilityListener(LO0/C;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, LO0/F;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iput-object p1, p0, LO0/F;->A:Ljava/lang/CharSequence;

    invoke-virtual {p0}, LO0/F;->m()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, LO0/F;->x:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, LO0/F;->x:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LO0/F;->n(Z)V

    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    iput-boolean p1, p0, LO0/F;->F:Z

    return-void
.end method

.method public setErrorMessageProvider(LG/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LG/t;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LO0/F;->m()V

    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(LO0/D;)V
    .locals 1

    iget-object p1, p0, LO0/F;->l:LO0/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LO0/F;->a:LO0/B;

    invoke-virtual {p1, v0}, LO0/u;->setOnFullScreenModeChangedListener(LO0/k;)V

    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->o(Z)V

    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    iget-object v0, p0, LO0/F;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget v0, p0, LO0/F;->w:I

    if-eq v0, p1, :cond_1

    iput p1, p0, LO0/F;->w:I

    invoke-virtual {p0}, LO0/F;->o()V

    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    iget-boolean v0, p0, LO0/F;->z:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LO0/F;->z:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LO0/F;->n(Z)V

    :cond_0
    return-void
.end method

.method public setMediaRouteButtonViewProvider(LG/D0;)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setMediaRouteButtonViewProvider(LG/D0;)V

    return-void
.end method

.method public setPlayer(LG/g0;)V
    .locals 9

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

    if-eqz p1, :cond_2

    invoke-interface {p1}, LG/g0;->U0()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    invoke-static {v0}, LF1/i;->g(Z)V

    iget-object v0, p0, LO0/F;->s:LG/g0;

    if-ne v0, p1, :cond_3

    goto/16 :goto_a

    :cond_3
    const/4 v1, 0x0

    iget-object v4, p0, LO0/F;->d:Landroid/view/View;

    const/16 v5, 0x1b

    iget-object v6, p0, LO0/F;->a:LO0/B;

    if-eqz v0, :cond_6

    invoke-interface {v0, v6}, LG/g0;->o0(LG/e0;)V

    invoke-interface {v0, v5}, LG/g0;->S0(I)Z

    move-result v7

    if-eqz v7, :cond_5

    instance-of v7, v4, Landroid/view/TextureView;

    if-eqz v7, :cond_4

    move-object v7, v4

    check-cast v7, Landroid/view/TextureView;

    invoke-interface {v0, v7}, LG/g0;->M(Landroid/view/TextureView;)V

    goto :goto_3

    :cond_4
    instance-of v7, v4, Landroid/view/SurfaceView;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Landroid/view/SurfaceView;

    invoke-interface {v0, v7}, LG/g0;->i0(Landroid/view/SurfaceView;)V

    :cond_5
    :goto_3
    iget-object v7, p0, LO0/F;->p:Ljava/lang/Class;

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    :try_start_0
    iget-object v7, p0, LO0/F;->q:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_5
    iget-object v0, p0, LO0/F;->i:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_7
    iput-object p1, p0, LO0/F;->s:LG/g0;

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result v1

    iget-object v7, p0, LO0/F;->l:LO0/u;

    if-eqz v1, :cond_8

    invoke-virtual {v7, p1}, LO0/u;->setPlayer(LG/g0;)V

    :cond_8
    invoke-virtual {p0}, LO0/F;->k()V

    invoke-virtual {p0}, LO0/F;->m()V

    invoke-virtual {p0, v3}, LO0/F;->n(Z)V

    if-eqz p1, :cond_11

    invoke-interface {p1, v5}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_f

    instance-of v1, v4, Landroid/view/TextureView;

    if-eqz v1, :cond_9

    check-cast v4, Landroid/view/TextureView;

    invoke-interface {p1, v4}, LG/g0;->F0(Landroid/view/TextureView;)V

    goto :goto_6

    :cond_9
    instance-of v1, v4, Landroid/view/SurfaceView;

    if-eqz v1, :cond_a

    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {p1, v4}, LG/g0;->g0(Landroid/view/SurfaceView;)V

    :cond_a
    :goto_6
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, LG/g0;->E()LG/y0;

    move-result-object v1

    iget-object v1, v1, LG/y0;->a:Lu1/P;

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/x0;

    iget-object v5, v5, LG/x0;->b:LG/r0;

    iget v5, v5, LG/r0;->c:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_c

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/x0;

    move v7, v3

    :goto_8
    iget-object v8, v5, LG/x0;->d:[I

    array-length v8, v8

    if-ge v7, v8, :cond_c

    invoke-virtual {v5, v7}, LG/x0;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    :goto_9
    if-eqz v3, :cond_f

    :cond_e
    invoke-virtual {p0}, LO0/F;->j()V

    :cond_f
    if-eqz v0, :cond_10

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, LG/g0;->S0(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, LG/g0;->L()LI/c;

    move-result-object v1

    iget-object v1, v1, LI/c;->a:Lu1/C0;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_10
    invoke-interface {p1, v6}, LG/g0;->O(LG/e0;)V

    invoke-direct {p0, p1}, LO0/F;->setImageOutput(LG/g0;)V

    invoke-virtual {p0, v2}, LO0/F;->e(Z)V

    return-void

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v7}, LO0/u;->g()V

    :cond_12
    :goto_a
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget-object v0, p0, LO0/F;->b:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    iget v0, p0, LO0/F;->y:I

    if-eq v0, p1, :cond_0

    iput p1, p0, LO0/F;->y:I

    invoke-virtual {p0}, LO0/F;->k()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, LO0/F;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 1

    iget-object v0, p0, LO0/F;->l:LO0/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, LO0/u;->setTimeBarScrubbingEnabled(Z)V

    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, LO0/F;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LO0/F;->l:LO0/u;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    invoke-static {v3}, LF1/i;->o(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, LO0/F;->t:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, LO0/F;->t:Z

    invoke-virtual {p0}, LO0/F;->p()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, LO0/F;->s:LG/g0;

    invoke-virtual {v2, p1}, LO0/u;->setPlayer(LG/g0;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, LO0/u;->g()V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, LO0/u;->setPlayer(LG/g0;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, LO0/F;->l()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO0/F;->d:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
