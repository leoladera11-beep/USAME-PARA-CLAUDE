.class public final LH/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt1/t;

.field public final b:Landroid/os/Handler;

.field public c:LN/F;

.field public d:LG/e;

.field public e:I

.field public f:I

.field public g:F

.field public h:LH/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LN/F;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LH/f;->g:F

    new-instance v0, LH/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LH/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, LS1/e;->o(Lt1/t;)Lt1/t;

    move-result-object p1

    iput-object p1, p0, LH/f;->a:Lt1/t;

    iput-object p3, p0, LH/f;->c:LN/F;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LH/f;->b:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, LH/f;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, LH/f;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LH/f;->h:LH/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, LH/f;->a:Lt1/t;

    invoke-interface {v0}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, LH/f;->h:LH/h;

    iget-object v1, v1, LH/h;->f:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, LH/f;->c:LN/F;

    if-eqz v0, :cond_0

    iget-object v0, v0, LN/F;->k:LJ/O;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, LJ/O;->b(III)LJ/N;

    move-result-object p1

    invoke-virtual {p1}, LJ/N;->b()V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, LH/f;->e:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, LH/f;->e:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, LH/f;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, LH/f;->g:F

    iget-object p1, p0, LH/f;->c:LN/F;

    if-eqz p1, :cond_3

    iget-object p1, p1, LN/F;->k:LJ/O;

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, LJ/O;->g(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final d(IZ)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    iget p1, p0, LH/f;->f:I

    if-ne p1, v1, :cond_9

    const/4 v2, -0x1

    if-eqz p2, :cond_6

    iget p2, p0, LH/f;->e:I

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, LH/f;->h:LH/h;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, LH/g;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    sget-object v4, LG/e;->i:LG/e;

    iput-object v4, p2, LH/g;->d:Ljava/lang/Object;

    iput p1, p2, LH/g;->a:I

    goto :goto_0

    :cond_2
    new-instance p1, LH/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget v4, p2, LH/h;->a:I

    iput v4, p1, LH/g;->a:I

    iget-object v4, p2, LH/h;->d:LG/e;

    iput-object v4, p1, LH/g;->d:Ljava/lang/Object;

    iget-boolean p2, p2, LH/h;->e:Z

    iput-boolean p2, p1, LH/g;->b:Z

    move-object p2, p1

    :goto_0
    iget-object p1, p0, LH/f;->d:LG/e;

    if-eqz p1, :cond_3

    iget v4, p1, LG/e;->a:I

    if-ne v4, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, LH/g;->d:Ljava/lang/Object;

    iput-boolean v0, p2, LH/g;->b:Z

    iput-boolean v1, p2, LH/g;->c:Z

    new-instance v6, LH/d;

    invoke-direct {v6, p0}, LH/d;-><init>(LH/f;)V

    iget-object v7, p0, LH/f;->b:Landroid/os/Handler;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LH/h;

    iget v5, p2, LH/g;->a:I

    iget-object p1, p2, LH/g;->d:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, LG/e;

    iget-boolean v9, p2, LH/g;->b:Z

    iget-boolean v10, p2, LH/g;->c:Z

    invoke-direct/range {v4 .. v10}, LH/h;-><init>(ILH/d;Landroid/os/Handler;LG/e;ZZ)V

    iput-object v4, p0, LH/f;->h:LH/h;

    :goto_1
    iget-object p1, p0, LH/f;->a:Lt1/t;

    invoke-interface {p1}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object p2, p0, LH/f;->h:LH/h;

    iget-object p2, p2, LH/h;->f:Landroid/media/AudioFocusRequest;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    if-eq p1, v1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, LH/f;->c(I)V

    return v2

    :cond_5
    :goto_2
    invoke-virtual {p0, v3}, LH/f;->c(I)V

    return v1

    :cond_6
    iget p1, p0, LH/f;->e:I

    if-eq p1, v1, :cond_8

    const/4 p2, 0x3

    if-eq p1, p2, :cond_7

    :goto_3
    return v1

    :cond_7
    return v0

    :cond_8
    return v2

    :cond_9
    invoke-virtual {p0}, LH/f;->a()V

    invoke-virtual {p0, v0}, LH/f;->c(I)V

    return v1
.end method
