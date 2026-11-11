.class public final synthetic LI0/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/z;
.implements LJ/q;
.implements LM0/x0;
.implements LM0/W0;
.implements Lt1/j;
.implements LM0/T1;
.implements LM0/Q1;
.implements LW/l;
.implements LG/o;
.implements Lb0/f;
.implements Lq2/t;
.implements Lu1/o0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    iput p1, p0, LI0/E;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LM0/i2;)V
    .locals 1

    .line 2
    const/4 v0, 0x6

    iput v0, p0, LI0/E;->e:I

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LO/a;LN/c;)V
    .locals 0

    .line 3
    const/16 p1, 0x12

    iput p1, p0, LI0/E;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LO/a;Ljava/lang/Object;J)V
    .locals 0

    .line 4
    const/16 p1, 0x13

    iput p1, p0, LI0/E;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/E;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 5
    iput p2, p0, LI0/E;->e:I

    iput-object p1, p0, LI0/E;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LI0/E;->e:I

    const/4 v1, 0x1

    const/16 v2, 0x1f

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, Lv0/n;

    check-cast p1, Lv0/t;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    iget v0, v0, Lv0/n;->b:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p1, Lv0/t;->g:LG/x;

    invoke-static {v0}, LJ/h;->f(LG/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1

    :sswitch_0
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v0, v0, LJ/u;->f:I

    if-gt v3, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v0

    int-to-float v3, v3

    div-float v5, v0, v3

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {p1, v3, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    invoke-static {p1}, LJ/w;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    return-object p1

    :sswitch_1
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LN0/O;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Ly1/a;

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v5}, Ly1/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v3}, Ly1/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    invoke-virtual {v0, v4}, Ly1/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v4, v4, -0x1

    :cond_6
    invoke-static {p1, v4, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_7

    invoke-static {p1}, LJ/w;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_7
    return-object p1

    :sswitch_2
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/VideoPlaybackService;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_8

    invoke-static {p1}, LJ/w;->v(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v0, Lcom/brisa/local/VideoPlaybackService;->c:Landroid/os/Handler;

    new-instance v1, LM0/v1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LM0/v1;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public b(LM0/l0;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LI0/E;->e:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, LI0/E;->f:Ljava/lang/Object;

    check-cast v2, Landroid/app/PendingIntent;

    invoke-virtual {v1}, LM0/l0;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, LM0/l0;->r:Landroid/app/PendingIntent;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iput-object v2, v1, LM0/l0;->r:Landroid/app/PendingIntent;

    iget-object v1, v1, LM0/l0;->a:LM0/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, LF1/i;->o(Z)V

    iget-object v1, v1, LM0/z;->d:LM0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v2, v0, LI0/E;->f:Ljava/lang/Object;

    check-cast v2, LM0/l2;

    invoke-virtual {v1}, LM0/l0;->p()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v1, LM0/l0;->k:Lh/f;

    invoke-virtual {v3}, Lh/f;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, LM0/l0;->q:LM0/b2;

    iget-object v3, v3, LM0/b2;->c:LM0/l2;

    iget-wide v4, v3, LM0/l2;->c:J

    iget-wide v6, v2, LM0/l2;->c:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    invoke-static {v2, v3}, LM0/Y1;->e(LM0/l2;LM0/l2;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v1, LM0/l0;->q:LM0/b2;

    invoke-virtual {v3, v2}, LM0/b2;->j(LM0/l2;)LM0/b2;

    move-result-object v2

    iput-object v2, v1, LM0/l0;->q:LM0/b2;

    :cond_5
    :goto_2
    return-void

    :pswitch_1
    iget-object v2, v0, LI0/E;->f:Ljava/lang/Object;

    check-cast v2, LM0/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, LM0/j;->c:LM0/q;

    iget-object v4, v1, LM0/l0;->e:LM0/o2;

    iget-object v5, v1, LM0/l0;->a:LM0/z;

    iget-object v6, v1, LM0/l0;->E:LM0/q;

    if-eqz v6, :cond_6

    const-string v1, "MCImplBase"

    const-string v2, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    invoke-static {v1, v2}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, LM0/z;->p()V

    goto/16 :goto_4

    :cond_6
    iget-object v6, v2, LM0/j;->n:Lu1/P;

    iget-object v7, v2, LM0/j;->i:Landroid/os/Bundle;

    iput-object v3, v1, LM0/l0;->E:LM0/q;

    iget-object v8, v2, LM0/j;->j:LM0/b2;

    iput-object v8, v1, LM0/l0;->q:LM0/b2;

    iget-object v8, v2, LM0/j;->d:Landroid/app/PendingIntent;

    iput-object v8, v1, LM0/l0;->r:Landroid/app/PendingIntent;

    iget-object v8, v2, LM0/j;->e:LM0/j2;

    iput-object v8, v1, LM0/l0;->w:LM0/j2;

    iget-object v8, v2, LM0/j;->f:LG/c0;

    iput-object v8, v1, LM0/l0;->x:LG/c0;

    iget-object v9, v2, LM0/j;->g:LG/c0;

    iput-object v9, v1, LM0/l0;->y:LG/c0;

    invoke-virtual {v1, v8, v9}, LM0/l0;->Y0(LG/c0;LG/c0;)LG/c0;

    move-result-object v8

    iput-object v8, v1, LM0/l0;->z:LG/c0;

    iget-object v9, v2, LM0/j;->k:Lu1/P;

    iput-object v9, v1, LM0/l0;->s:Lu1/P;

    iget-object v10, v2, LM0/j;->l:Lu1/P;

    iput-object v10, v1, LM0/l0;->t:Lu1/P;

    iget-object v11, v1, LM0/l0;->w:LM0/j2;

    invoke-static {v10, v9, v11, v8, v7}, LM0/l0;->w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v12

    iput-object v12, v1, LM0/l0;->u:Lu1/C0;

    iget-object v13, v1, LM0/l0;->s:Lu1/P;

    iget-object v14, v2, LM0/j;->i:Landroid/os/Bundle;

    iget-object v15, v1, LM0/l0;->w:LM0/j2;

    iget-object v8, v1, LM0/l0;->z:LG/c0;

    iget v9, v2, LM0/j;->b:I

    move-object/from16 v16, v8

    move/from16 v17, v9

    invoke-static/range {v12 .. v17}, LM0/l0;->v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;

    move-result-object v8

    iput-object v8, v1, LM0/l0;->v:Lu1/C0;

    new-instance v8, LC1/e;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, LC1/e;-><init>(I)V

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LM0/c;

    iget-object v12, v11, LM0/c;->a:LM0/i2;

    if-eqz v12, :cond_7

    iget v13, v12, LM0/i2;->a:I

    if-nez v13, :cond_7

    iget-object v12, v12, LM0/i2;->b:Ljava/lang/String;

    invoke-virtual {v8, v12, v11}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, LC1/e;->b(Z)Lu1/H0;

    iget-object v6, v2, LM0/j;->m:Landroid/media/session/MediaSession$Token;

    if-nez v6, :cond_9

    iget-object v6, v4, LM0/o2;->a:LM0/n2;

    invoke-interface {v6}, LM0/n2;->k()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    :cond_9
    if-eqz v6, :cond_a

    new-instance v8, Landroid/media/session/MediaController;

    iget-object v10, v1, LM0/l0;->d:Landroid/content/ContextWrapper;

    invoke-direct {v8, v10, v6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v8, v1, LM0/l0;->F:Landroid/media/session/MediaController;

    :cond_a
    :try_start_0
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v8, v1, LM0/l0;->g:LM0/G;

    invoke-interface {v3, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v10, LM0/o2;

    iget-object v3, v4, LM0/o2;->a:LM0/n2;

    invoke-interface {v3}, LM0/n2;->a()I

    move-result v11

    iget v12, v2, LM0/j;->a:I

    iget v13, v2, LM0/j;->b:I

    iget-object v3, v4, LM0/o2;->a:LM0/n2;

    invoke-interface {v3}, LM0/n2;->c()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, LM0/j;->c:LM0/q;

    iget-object v3, v2, LM0/j;->h:Landroid/os/Bundle;

    iget-object v2, v2, LM0/j;->o:Ljava/lang/String;

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v18}, LM0/o2;-><init>(IIILjava/lang/String;LM0/q;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    iput-object v10, v1, LM0/l0;->n:LM0/o2;

    iput-object v7, v1, LM0/l0;->J:Landroid/os/Bundle;

    invoke-virtual {v5}, LM0/z;->a()V

    goto :goto_4

    :catch_0
    invoke-virtual {v5}, LM0/z;->p()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(LM0/d2;LM0/N0;)V
    .locals 0

    iget-object p2, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast p2, LJ/k;

    invoke-interface {p2, p1}, LJ/k;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public e(LM0/M0;I)V
    .locals 2

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/i2;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {p1, p2, v0}, LM0/M0;->a(ILM0/i2;)V

    return-void
.end method

.method public g(ILG/r0;[I)Lu1/C0;
    .locals 7

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LW/j;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, p2, LG/r0;->a:I

    if-ge v4, v1, :cond_0

    new-instance v1, LW/g;

    aget v6, p3, v4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LW/g;-><init>(ILG/r0;ILW/j;I)V

    invoke-virtual {v0, v1}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    return-object p1
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LI0/E;->e:I

    iget-object v1, p0, LI0/E;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, LG/P;

    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v4

    const/4 v5, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, LM0/X0;->s(LM0/N0;Lu1/C0;IJ)Lz1/H;

    move-result-object p1

    return-object p1

    :pswitch_0
    move-object v2, p1

    move-object v3, p2

    check-cast v1, LM0/Q1;

    sget-object p1, Lz1/x;->f:Lz1/x;

    invoke-virtual {v2}, LM0/X0;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object p1, v2, LM0/X0;->t:LM0/d2;

    invoke-interface {v1, p1, v3}, LM0/Q1;->c(LM0/d2;LM0/N0;)V

    new-instance p1, LM0/m2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {v2, v3, p3, p1}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    :goto_0
    sget-object p1, Lz1/x;->f:Lz1/x;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lo2/p;I)V
    .locals 1

    iget-object p2, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast p2, Ljava/lang/StringBuilder;

    instance-of v0, p1, Lo2/e;

    if-eqz v0, :cond_0

    check-cast p1, Lo2/e;

    invoke-virtual {p1}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    instance-of v0, p1, Lo2/d;

    if-eqz v0, :cond_1

    check-cast p1, Lo2/d;

    invoke-virtual {p1}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    instance-of v0, p1, Lo2/c;

    if-eqz v0, :cond_2

    check-cast p1, Lo2/c;

    invoke-virtual {p1}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LI0/E;->e:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, LO/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :sswitch_0
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LN/c;

    check-cast p1, LO/i;

    iget v1, p1, LO/i;->y:I

    iget v2, v0, LN/c;->g:I

    add-int/2addr v1, v2

    iput v1, p1, LO/i;->y:I

    iget v1, p1, LO/i;->z:I

    iget v0, v0, LN/c;->e:I

    add-int/2addr v1, v0

    iput v1, p1, LO/i;->z:I

    return-void

    :sswitch_1
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->t(Ljava/util/List;)V

    return-void

    :sswitch_2
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LG/V;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->L(LG/V;)V

    return-void

    :sswitch_3
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LN/s;

    check-cast p1, LG/e0;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v0, v0, LN/x;->R:LG/T;

    invoke-interface {p1, v0}, LG/e0;->N(LG/T;)V

    return-void

    :sswitch_4
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LI/c;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->M(LI/c;)V

    return-void

    :sswitch_5
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LM0/t0;

    check-cast p1, LG/e0;

    iget-object v0, v0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->B:LG/T;

    invoke-interface {p1, v0}, LG/e0;->N(LG/T;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public n(J)J
    .locals 9

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, Lb0/t;

    iget v1, v0, Lb0/t;->e:I

    int-to-long v1, v1

    mul-long/2addr p1, v1

    const-wide/32 v1, 0xf4240

    div-long v3, p1, v1

    iget-wide p1, v0, Lb0/t;->j:J

    const-wide/16 v0, 0x1

    sub-long v7, p1, v0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, LJ/W;->h(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, Lu1/t0;

    check-cast p2, Ljava/util/Collection;

    check-cast p2, Ljava/util/List;

    iget-object v0, v0, Lu1/t0;->j:La1/g;

    new-instance v1, LW0/c;

    const/16 v2, 0x14

    invoke-direct {v1, v0, p1, v2}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v1}, Lu1/s;->v(Ljava/util/List;Lt1/j;)Ljava/util/AbstractList;

    move-result-object p1

    return-object p1
.end method

.method public r(JLJ/D;)V
    .locals 1

    iget v0, p0, LI0/E;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LI0/F;

    iget-object v0, v0, LI0/F;->c:[Lb0/G;

    invoke-static {p1, p2, p3, v0}, Lb0/a;->d(JLJ/D;[Lb0/G;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LI0/F;

    iget-object v0, v0, LI0/F;->c:[Lb0/G;

    invoke-static {p1, p2, p3, v0}, Lb0/a;->c(JLJ/D;[Lb0/G;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/x;

    iget-object v0, v0, Lcom/brisa/local/x;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method
