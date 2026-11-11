.class public final LM0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic a:LM0/l0;


# direct methods
.method public constructor <init>(LM0/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/k0;->a:LM0/l0;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, LM0/k0;->a:LM0/l0;

    iget-object v1, v0, LM0/l0;->C:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, LM0/l0;->A:Landroid/view/Surface;

    iget-object p1, v0, LM0/l0;->A:Landroid/view/Surface;

    invoke-virtual {v0, p1, p2, p3}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {v0, p2, p3}, LM0/l0;->r1(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-object v0, p0, LM0/k0;->a:LM0/l0;

    iget-object v1, v0, LM0/l0;->C:Landroid/view/TextureView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, LM0/l0;->A:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {v0, v1, v1}, LM0/l0;->r1(II)V

    :cond_1
    :goto_0
    return v2
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, LM0/k0;->a:LM0/l0;

    iget-object v1, v0, LM0/l0;->C:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, LM0/l0;->p()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result p1

    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    new-instance p1, LM0/j0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, p3, v1}, LM0/j0;-><init>(LM0/k0;III)V

    invoke-virtual {v0, p1}, LM0/l0;->c1(LM0/h0;)V

    :cond_1
    invoke-virtual {v0, p2, p3}, LM0/l0;->r1(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p2, p0, LM0/k0;->a:LM0/l0;

    iget-object v0, p2, LM0/l0;->B:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_2

    invoke-virtual {p2}, LM0/l0;->p()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, LM0/l0;->i1()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    new-instance p1, LM0/j0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p3, p4, v0}, LM0/j0;-><init>(LM0/k0;III)V

    invoke-virtual {p2, p1}, LM0/l0;->c1(LM0/h0;)V

    :cond_1
    invoke-virtual {p2, p3, p4}, LM0/l0;->r1(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object v0, p0, LM0/k0;->a:LM0/l0;

    iget-object v1, v0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    if-eq v1, p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, LM0/l0;->A:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, v0, LM0/l0;->A:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, p1}, LM0/l0;->r1(II)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, LM0/k0;->a:LM0/l0;

    iget-object v1, v0, LM0/l0;->B:Landroid/view/SurfaceHolder;

    if-eq v1, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, LM0/l0;->A:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, LM0/l0;->B1(Landroid/view/Surface;II)V

    invoke-virtual {v0, v1, v1}, LM0/l0;->r1(II)V

    return-void
.end method
