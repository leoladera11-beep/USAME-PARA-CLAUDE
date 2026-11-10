.class public final LM0/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/j;


# instance fields
.field public final e:Lcom/brisa/local/VideoPlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 0

    iput-object p1, p0, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(LG/x;)I
    .locals 5

    iget-object v0, p0, LG/x;->p:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, LG/W;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, LG/x;->p:Ljava/lang/String;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "image/bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "image/webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "image/heif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "image/heic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "image/avif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p0, v0, :cond_8

    :pswitch_1
    invoke-static {v2, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p0

    return p0

    :cond_8
    :goto_1
    invoke-static {v3, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p0

    return p0

    :cond_9
    :goto_2
    invoke-static {v1, v1, v1, v1}, LN/a;->e(IIII)I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x58abd7ba -> :sswitch_6
        -0x58a8e8f5 -> :sswitch_5
        -0x58a8e8f2 -> :sswitch_4
        -0x58a7d764 -> :sswitch_3
        -0x58a21830 -> :sswitch_2
        -0x3468a12f -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(LM0/P0;)Lz1/B;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, LM0/K;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    iget-object p1, p1, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lz1/J;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lz1/I;

    invoke-direct {v2, v1, v0}, Lz1/I;-><init>(Lz1/J;LM0/K;)V

    iput-object v2, v1, Lz1/J;->l:Lz1/I;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :cond_1
    iget-object v0, p0, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    sget-object v1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/VideoPlaybackService;->e()LM0/I0;

    move-result-object v0

    iget-boolean v0, v0, LM0/I0;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/brisa/local/VideoPlaybackService;->o(LM0/P0;Z)Lz1/a;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public l(LM0/r0;)LS/k;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LM0/w1;->e:Lcom/brisa/local/VideoPlaybackService;

    if-eqz v1, :cond_1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.amazon.hardware.tv_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p1, LM0/r0;->e:Ljava/lang/Object;

    check-cast v0, LG/x;

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    invoke-static {v0}, LG/W;->g(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LJ/W;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, LM0/l;

    new-instance v2, LS/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LS/c;-><init>(II)V

    new-instance v3, LS/c;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, LS/c;-><init>(II)V

    invoke-direct {v1, v2, v3}, LM0/l;-><init>(LS/c;LS/c;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, LM0/l;->e:Z

    invoke-virtual {v1, p1}, LM0/l;->a(LM0/r0;)LM0/h2;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/brisa/local/j;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/brisa/local/j;->l(LM0/r0;)LS/k;

    move-result-object p1

    return-object p1
.end method
