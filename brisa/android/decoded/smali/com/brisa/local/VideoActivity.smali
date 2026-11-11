.class public final Lcom/brisa/local/VideoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:LO0/F;

.field public b:Lcom/brisa/local/f;

.field public c:LM0/z;

.field public d:LM0/B;

.field public e:Landroid/widget/LinearLayout;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public final j:Landroid/os/Handler;

.field public final k:LB/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    new-instance v0, LB/k;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LB/k;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/brisa/local/VideoActivity;->k:LB/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/brisa/local/VideoActivity;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    new-instance v1, LO0/g;

    const/4 v2, 0x5

    invoke-direct {v1, p2, v2}, LO0/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/brisa/local/VideoActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/brisa/local/VideoActivity;->b:Lcom/brisa/local/f;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/brisa/local/f;->a()V

    iput-object v0, p1, Lcom/brisa/local/f;->b:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/brisa/local/f;->e:Z

    return-void

    :cond_0
    const-string v0, "file"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/brisa/local/a;->C(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->b:Lcom/brisa/local/f;

    const-string v2, "format"

    const-string v3, "ttml"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le2/d;->m(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "effects"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1}, Lcom/brisa/local/f;->a()V

    iput-object v0, v1, Lcom/brisa/local/f;->b:Lorg/json/JSONArray;

    iput-boolean p1, v1, Lcom/brisa/local/f;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "No se pudieron abrir estos subt\u00edtulos."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final d()V
    .locals 1
    const/4 v0, 0x1
    invoke-static {p0, v0}, Lcom/brisa/local/VideoSystemControls;->enter(Landroid/app/Activity;Z)V
    return-void
.end method

.method public final e(Z)V
    .locals 0
    invoke-static {p0, p1}, Lcom/brisa/local/VideoChrome;->mode(Landroid/app/Activity;Z)V
    return-void
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lcom/brisa/local/VideoActivity;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/VideoActivity;->h:Z

    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->c:LM0/z;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LM0/z;->u()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/brisa/local/VideoActivity;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/brisa/local/VideoActivity;->e(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/brisa/local/VideoActivity;->f()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    # Keep this visible app window awake without changing the phone's settings.
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 0x80
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "videoId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/VideoActivity;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/brisa/local/DriveStream;->video(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Prepara este v\u00eddeo sin conexi\u00f3n antes de reproducirlo."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, LO0/F;

    invoke-direct {v1, p0}, LO0/F;-><init>(Lcom/brisa/local/VideoActivity;)V

    iput-object v1, p0, Lcom/brisa/local/VideoActivity;->a:LO0/F;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LO0/F;->setShowSubtitleButton(Z)V

    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->a:LO0/F;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/brisa/local/f;

    invoke-direct {v1, p0}, Lcom/brisa/local/f;-><init>(Lcom/brisa/local/VideoActivity;)V

    iput-object v1, p0, Lcom/brisa/local/VideoActivity;->b:Lcom/brisa/local/f;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lcom/brisa/local/VideoActivity;->b(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/brisa/local/VideoActivity;->b:Lcom/brisa/local/f;

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brisa/local/VideoActivity;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/brisa/local/VideoActivity;->b(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/brisa/local/VideoActivity;->b(I)I

    move-result v6

    invoke-virtual {p0, v2}, Lcom/brisa/local/VideoActivity;->b(I)I

    move-result v2

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/brisa/local/VideoActivity;->b(I)I

    move-result v7

    invoke-virtual {v1, v5, v6, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->e:Landroid/widget/LinearLayout;

    const v2, -0x55efe8ec

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Lcom/brisa/local/Z;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/brisa/local/Z;-><init>(Lcom/brisa/local/VideoActivity;I)V

    const-string v2, "\u2039 Videos"

    invoke-virtual {p0, v2, v1}, Lcom/brisa/local/VideoActivity;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/brisa/local/Z;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/brisa/local/Z;-><init>(Lcom/brisa/local/VideoActivity;I)V

    const-string v2, "Pantalla completa"

    invoke-virtual {p0, v2, v1}, Lcom/brisa/local/VideoActivity;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/brisa/local/Z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brisa/local/Z;-><init>(Lcom/brisa/local/VideoActivity;I)V

    const-string v2, "CC"

    invoke-virtual {p0, v2, v1}, Lcom/brisa/local/VideoActivity;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/brisa/local/Z;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/brisa/local/Z;-><init>(Lcom/brisa/local/VideoActivity;I)V

    const-string v2, "Flotante"

    invoke-virtual {p0, v2, v1}, Lcom/brisa/local/VideoActivity;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->e:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->install(Landroid/app/Activity;)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/brisa/local/VideoActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v4, LM0/o2;

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, p0, p1}, LM0/o2;-><init>(Lcom/brisa/local/VideoActivity;Landroid/content/ComponentName;)V

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v6, Lcom/brisa/local/j;

    const/16 p1, 0x8

    invoke-direct {v6, p1}, Lcom/brisa/local/j;-><init>(I)V

    invoke-static {}, LJ/W;->q()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, LM0/B;

    invoke-direct {v8, v7}, LM0/B;-><init>(Landroid/os/Looper;)V

    iget-object p1, v4, LM0/o2;->a:LM0/n2;

    invoke-interface {p1}, LM0/n2;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, LN0/O;

    new-instance v0, LJ/u;

    invoke-direct {v0, p0}, LJ/u;-><init>(Landroid/content/Context;)V

    new-instance v1, LL/k;

    invoke-direct {v1, v0}, LL/k;-><init>(LJ/u;)V

    const/16 v0, 0xb

    invoke-direct {p1, v1, v0}, LN0/O;-><init>(Ljava/lang/Object;I)V

    :goto_0
    move-object v9, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, LM0/z;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, LM0/z;-><init>(Landroid/content/ContextWrapper;LM0/o2;Landroid/os/Bundle;LM0/x;Landroid/os/Looper;LM0/B;LN0/O;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, LM0/w;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v2, v1}, LM0/w;-><init>(LM0/B;LM0/z;I)V

    invoke-static {p1, v0}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v8, v3, Lcom/brisa/local/VideoActivity;->d:LM0/B;

    new-instance p1, Lcom/brisa/local/Z;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/brisa/local/Z;-><init>(Lcom/brisa/local/VideoActivity;I)V

    new-instance v0, LM0/A;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, p1, v0}, Lz1/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_2

    invoke-static {p0}, LP/a;->f(Lcom/brisa/local/VideoActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/brisa/local/a0;

    invoke-direct {v0, p0}, Lcom/brisa/local/a0;-><init>(Lcom/brisa/local/VideoActivity;)V

    invoke-static {p1, v0}, LP/a;->l(Landroid/window/OnBackInvokedDispatcher;Lcom/brisa/local/a0;)V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->dispose(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->b:Lcom/brisa/local/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/brisa/local/f;->a()V

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->a:LO0/F;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, LO0/F;->setPlayer(LG/g0;)V

    :cond_1
    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->d:LM0/B;

    if-eqz v0, :cond_2

    invoke-static {v0}, LM0/z;->W0(LM0/B;)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iget-boolean p2, p0, Lcom/brisa/local/VideoActivity;->g:Z

    or-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/brisa/local/VideoActivity;->g:Z

    iget-object p2, p0, Lcom/brisa/local/VideoActivity;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/brisa/local/VideoActivity;->a:LO0/F;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, LO0/F;->setUseController(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/brisa/local/VideoChrome;->pip(Landroid/app/Activity;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/brisa/local/VideoPlaybackService;->l:Z

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->r()V

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->k:LB/k;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->k:LB/k;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStop()V
    .locals 2
    iget-object v0, p0, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;
    iget-object v1, p0, Lcom/brisa/local/VideoActivity;->k:LB/k;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    invoke-super {p0}, Landroid/app/Activity;->onStop()V
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V
    invoke-static {p0}, Lcom/brisa/local/VideoSystemControls;->leave(Landroid/app/Activity;)V
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    invoke-static {p0, p1}, Lcom/brisa/local/VideoChrome;->touch(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :native_controls
    const/4 v0, 0x1
    return v0
    :native_controls
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    move-result v0
    return v0
.end method

.method public onResume()V
    .locals 0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->resume(Landroid/app/Activity;)V
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V
    if-eqz p1, :done
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->resume(Landroid/app/Activity;)V
    :done
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->resume(Landroid/app/Activity;)V
    return-void
.end method

.method public onPause()V
    .locals 0
    invoke-static {p0}, Lcom/brisa/local/VideoChrome;->pause(Landroid/app/Activity;)V
    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    return-void
.end method
