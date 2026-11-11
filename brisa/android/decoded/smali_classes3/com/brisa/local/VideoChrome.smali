.class public final Lcom/brisa/local/VideoChrome;
.super Ljava/lang/Object;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/VideoChrome$State;,
        Lcom/brisa/local/VideoChrome$Icon;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "brisa-video-chrome"

.field private static final previousOrientations:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/brisa/local/VideoChrome;->previousOrientations:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Activity;I)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/brisa/local/VideoChrome;->dp(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/brisa/local/VideoChrome;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/brisa/local/VideoChrome;->menu(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->full(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static dispose(Landroid/app/Activity;)V
    .locals 2

    .line 112
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/brisa/local/VideoChrome$State;->cancelInteraction()V

    iget-object v1, v0, Lcom/brisa/local/VideoChrome$State;->clearFeedback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/brisa/local/VideoChrome$State;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    :cond_0
    sget-object v0, Lcom/brisa/local/VideoChrome;->previousOrientations:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->detach(Landroid/app/Activity;)V

    .line 115
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .locals 0

    .line 39
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static full(Landroid/app/Activity;)Z
    .locals 1

    .line 40
    const-string v0, "f"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static hideSystemBars(Landroid/app/Activity;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    .line 95
    if-eqz p0, :cond_2

    .line 96
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 97
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 100
    :cond_2
    return-void
.end method

.method public static install(Landroid/app/Activity;)V
    .locals 6

    .line 45
    invoke-static {p0}, Lcom/brisa/local/MobileVideoFiles;->attachPlayer(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/brisa/local/VideoChrome;->noScrollbars(Landroid/view/View;)V

    .line 46
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-string v1, "e"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    new-instance v1, Lcom/brisa/local/VideoChrome$State;

    invoke-direct {v1, p0, v0}, Lcom/brisa/local/VideoChrome$State;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "setControllerAutoShow"

    invoke-static {v0, v5, v2, v4}, Lcom/brisa/local/VideoChrome;->setting(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 52
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "setControllerHideOnTouch"

    invoke-static {v0, v5, v2, v4}, Lcom/brisa/local/VideoChrome;->setting(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v5, "setControllerAnimationEnabled"

    invoke-static {v0, v5, v2, v4}, Lcom/brisa/local/VideoChrome;->setting(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "setControllerShowTimeoutMs"

    invoke-static {v0, v4, v2, v3}, Lcom/brisa/local/VideoChrome;->setting(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 55
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->hideSystemBars(Landroid/app/Activity;)V

    .line 56
    new-instance v2, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/brisa/local/VideoChrome$State;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    invoke-virtual {v1}, Lcom/brisa/local/VideoChrome$State;->showControls()V

    .line 58
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->attach(Landroid/app/Activity;)V

    .line 59
    new-instance v1, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method private static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 36
    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$install$0(Landroid/app/Activity;Lcom/brisa/local/VideoChrome$State;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->hideSystemBars(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/brisa/local/VideoChrome$State;->syncControls()V

    return-void
.end method

.method static synthetic lambda$install$1(Landroid/app/Activity;)V
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->refresh(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$menu$2(Ljava/lang/Runnable;Landroid/widget/PopupMenu;)V
    .locals 0

    .line 250
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$menu$3(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 3

    .line 252
    const-string v0, "e"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Class;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "f"

    invoke-static {p0, v1, v0, p1}, Lcom/brisa/local/VideoChrome;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :pswitch_1
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 256
    :pswitch_2
    const-string p1, "a"

    invoke-static {p0, p1}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "exo_settings"

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 257
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 254
    :pswitch_3
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 261
    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static menu(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 5

    .line 247
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 248
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "Subt\u00edtulos"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "Velocidad de reproducci\u00f3n"

    const/4 v4, 0x2

    invoke-interface {p1, v2, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 249
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v1, "Ventana flotante"

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x4

    const-string v4, "Volver a videos"

    invoke-interface {p1, v2, v1, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 250
    new-instance p1, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 251
    new-instance p1, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 262
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 263
    return-void
.end method

.method public static mode(Landroid/app/Activity;Z)V
    .locals 3

    .line 62
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->full(Landroid/app/Activity;)Z

    move-result v0

    .line 63
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    sget-object v1, Lcom/brisa/local/VideoChrome;->previousOrientations:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 66
    const-string v1, "e"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const-string v1, "a"

    invoke-static {p0, v1}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 70
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 71
    :cond_1
    if-eqz v0, :cond_3

    .line 72
    sget-object v1, Lcom/brisa/local/VideoChrome;->previousOrientations:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 73
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 75
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->hideSystemBars(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/VideoChrome;->noScrollbars(Landroid/view/View;)V

    .line 76
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;

    move-result-object p0

    .line 77
    if-eqz p0, :cond_6

    .line 78
    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->fullscreen:Lcom/brisa/local/VideoChrome$Icon;

    if-eqz p1, :cond_4

    const-string v2, "Salir de pantalla completa"

    goto :goto_2

    :cond_4
    const-string v2, "Pantalla completa"

    :goto_2
    invoke-virtual {v1, v2}, Lcom/brisa/local/VideoChrome$Icon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/brisa/local/VideoChrome$State;->top:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 80
    if-eq v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->showControls()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->syncControls()V

    .line 82
    :cond_6
    :goto_3
    return-void

    .line 65
    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static noScrollbars(Landroid/view/View;)V
    .locals 2

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/brisa/local/VideoChrome;->noScrollbars(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pause(Landroid/app/Activity;)V
    .locals 0

    .line 109
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/brisa/local/VideoChrome$State;->cancelInteraction()V

    .line 110
    :cond_0
    return-void
.end method

.method public static pip(Landroid/app/Activity;Z)V
    .locals 2

    .line 117
    const-string v0, "e"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/brisa/local/VideoChrome$State;->cancelInteraction()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/brisa/local/VideoChrome$State;->setVisibility(I)V

    .line 120
    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->resume(Landroid/app/Activity;)V

    .line 121
    :cond_2
    return-void
.end method

.method private static read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 32
    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 1

    .line 106
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/brisa/local/VideoChrome;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->full(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/brisa/local/VideoChrome;->mode(Landroid/app/Activity;Z)V

    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/brisa/local/VideoChrome$State;->interacted()V

    :cond_0
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->refresh(Landroid/app/Activity;)V

    .line 107
    :cond_1
    return-void
.end method

.method private static setting(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/brisa/local/VideoChrome;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const-string v0, "brisa-video-chrome"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/brisa/local/VideoChrome$State;

    return-object p0
.end method

.method public static touch(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->state(Landroid/app/Activity;)Lcom/brisa/local/VideoChrome$State;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/brisa/local/VideoChrome$State;->route(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
