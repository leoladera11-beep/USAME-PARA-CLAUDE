.class public final synthetic Lcom/brisa/local/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/brisa/local/r;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/r;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/brisa/local/q;->e:I

    iput-object p1, p0, Lcom/brisa/local/q;->f:Lcom/brisa/local/r;

    iput-object p2, p0, Lcom/brisa/local/q;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/brisa/local/q;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/brisa/local/q;->f:Lcom/brisa/local/r;

    iget-object v1, p0, Lcom/brisa/local/q;->g:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    invoke-static {v0}, Lcom/brisa/local/u;->v(Landroid/content/Context;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Espera a que termine la descarga antes de actualizar Drive."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/brisa/local/q;->f:Lcom/brisa/local/r;

    iget-object v1, p0, Lcom/brisa/local/q;->g:Ljava/lang/String;

    invoke-static {}, Lcom/brisa/local/DownloadService;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Espera a que termine la descarga antes de conectar otra cuenta."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/brisa/local/r;->a:Lcom/brisa/local/MainActivity;

    sget-object v2, Lcom/brisa/local/u;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Ya hay una conexi\u00f3n en curso."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    sput-object v1, Lcom/brisa/local/u;->c:Ljava/lang/String;

    new-instance v1, Lm1/b;

    invoke-static {v0}, Ld1/s;->d(Ljava/lang/Object;)V

    new-instance v2, LX0/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v0, v2}, Lm1/b;-><init>(Landroid/app/Activity;LX0/b;)V

    invoke-static {v0}, Lcom/brisa/local/u;->w(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm1/b;->c(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)La2/d;

    move-result-object v1

    new-instance v2, Lcom/brisa/local/s;

    invoke-direct {v2, v0}, Lcom/brisa/local/s;-><init>(Lcom/brisa/local/MainActivity;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ls1/e;->a:Lc1/l;

    new-instance v4, Ls1/g;

    invoke-direct {v4, v3, v2}, Ls1/g;-><init>(Ljava/util/concurrent/Executor;Ls1/c;)V

    iget-object v2, v1, La2/d;->c:Ljava/lang/Object;

    check-cast v2, LM0/l;

    invoke-virtual {v2, v4}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {v1}, La2/d;->j()V

    new-instance v2, Lcom/brisa/local/s;

    invoke-direct {v2, v0}, Lcom/brisa/local/s;-><init>(Lcom/brisa/local/MainActivity;)V

    new-instance v0, Ls1/g;

    invoke-direct {v0, v3, v2}, Ls1/g;-><init>(Ljava/util/concurrent/Executor;Ls1/b;)V

    iget-object v2, v1, La2/d;->c:Ljava/lang/Object;

    check-cast v2, LM0/l;

    invoke-virtual {v2, v0}, LM0/l;->f(Ls1/h;)V

    invoke-virtual {v1}, La2/d;->j()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
