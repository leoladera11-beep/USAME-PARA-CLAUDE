.class public final La0/l;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final b:Landroid/hardware/SensorManager;

.field public final c:Landroid/hardware/Sensor;

.field public final d:La0/d;

.field public final e:Landroid/os/Handler;

.field public final f:La0/j;

.field public g:Landroid/graphics/SurfaceTexture;

.field public h:Landroid/view/Surface;

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, La0/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La0/l;->e:Landroid/os/Handler;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, La0/l;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    :cond_0
    iput-object v1, p0, La0/l;->c:Landroid/hardware/Sensor;

    new-instance v0, La0/j;

    invoke-direct {v0}, La0/j;-><init>()V

    iput-object v0, p0, La0/l;->f:La0/j;

    new-instance v1, La0/k;

    invoke-direct {v1, p0, v0}, La0/k;-><init>(La0/l;La0/j;)V

    new-instance v0, La0/m;

    invoke-direct {v0, p1, v1}, La0/m;-><init>(Landroid/content/Context;La0/k;)V

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v2, La0/d;

    const/4 v3, 0x2

    new-array v4, v3, [La0/c;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v2, p1, v4}, La0/d;-><init>(Landroid/view/Display;[La0/c;)V

    iput-object v2, p0, La0/l;->d:La0/d;

    iput-boolean v5, p0, La0/l;->i:Z

    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, La0/l;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La0/l;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, La0/l;->c:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, La0/l;->k:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, La0/l;->d:La0/d;

    iget-object v4, p0, La0/l;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_1
    iput-boolean v0, p0, La0/l;->k:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public getCameraMotionListener()La0/a;
    .locals 1

    iget-object v0, p0, La0/l;->f:La0/j;

    return-object v0
.end method

.method public getVideoFrameMetadataListener()LZ/w;
    .locals 1

    iget-object v0, p0, La0/l;->f:La0/j;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, La0/l;->h:Landroid/view/Surface;

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    new-instance v0, LH/a;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, LH/a;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, La0/l;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La0/l;->j:Z

    invoke-virtual {p0}, La0/l;->a()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La0/l;->j:Z

    invoke-virtual {p0}, La0/l;->a()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    iget-object v0, p0, La0/l;->f:La0/j;

    iput p1, v0, La0/j;->o:I

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    iput-boolean p1, p0, La0/l;->i:Z

    invoke-virtual {p0}, La0/l;->a()V

    return-void
.end method
