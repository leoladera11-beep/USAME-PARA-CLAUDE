.class public final synthetic LZ/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LZ/d;->e:I

    iput-object p1, p0, LZ/d;->g:Ljava/lang/Object;

    iput-object p2, p0, LZ/d;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LZ/d;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/MainActivity;

    iget-object v2, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://appassets.androidplatform.net/assets/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    const-string v3, "\u2028"

    const-string v4, "\\u2028"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2029"

    const-string v4, "\\u2029"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, Lcom/brisa/local/h;

    iget-object v2, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v2, v0, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/brisa/local/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/brisa/local/h;->a()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Espera a que termine la descarga antes de cambiar de carpeta."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v2}, Lcom/brisa/local/AndroidDownloads;->inspect(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1, v2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, La0/l;

    iget-object v1, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, La0/l;->g:Landroid/graphics/SurfaceTexture;

    iget-object v3, v0, La0/l;->h:Landroid/view/Surface;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, La0/l;->g:Landroid/graphics/SurfaceTexture;

    iput-object v4, v0, La0/l;->h:Landroid/view/Surface;

    iget-object v0, v0, La0/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN/s;

    iget-object v1, v1, LN/s;->a:LN/x;

    invoke-virtual {v1, v4}, LN/x;->x1(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_5
    return-void

    :pswitch_3
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, LP/t;

    iget-object v1, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v1, LN/b;

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v0, v0, LN/x;->G:LN0/O;

    invoke-static {v0, v1}, LN0/O;->E(LN0/O;LN/b;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, LP/t;

    iget-object v1, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v1, LN/c;

    monitor-enter v1

    monitor-exit v1

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v0, v0, LN/x;->s:LO/d;

    iget-object v2, v0, LO/d;->h:LM0/r0;

    iget-object v2, v2, LM0/r0;->f:Ljava/lang/Object;

    check-cast v2, LU/A;

    invoke-virtual {v0, v2}, LO/d;->X(LU/A;)LO/a;

    move-result-object v2

    new-instance v3, LI0/E;

    invoke-direct {v3, v2, v1}, LI0/E;-><init>(LO/a;LN/c;)V

    const/16 v1, 0x3fc

    invoke-virtual {v0, v2, v1, v3}, LO/d;->a0(LO/a;ILJ/q;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, LP/t;

    iget-object v1, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v1, LG/C0;

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iput-object v1, v0, LN/x;->l0:LG/C0;

    iget-object v0, v0, LN/x;->m:LJ/t;

    new-instance v2, LN/r;

    invoke-direct {v2, v1}, LN/r;-><init>(LG/C0;)V

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, LJ/t;->f(ILJ/q;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LZ/d;->g:Ljava/lang/Object;

    check-cast v0, LW0/c;

    iget-object v1, p0, LZ/d;->f:Ljava/lang/Object;

    check-cast v1, LG/C0;

    iget-object v0, v0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, LZ/e;

    iget-object v0, v0, LZ/e;->i:LZ/I;

    invoke-interface {v0, v1}, LZ/I;->a(LG/C0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
