.class public final LM0/y1;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public a:LC2/b;

.field public final b:LN0/i;

.field public final c:LN0/m;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lh/e;

.field public f:LN0/m;

.field public final g:LM0/p1;

.field public h:LN0/N;

.field public final i:LN0/i;

.field public final j:LM0/X0;

.field public final k:LB/A;


# direct methods
.method public constructor <init>(LM0/X0;)V
    .locals 7

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, LN0/i;

    invoke-direct {v0, p0}, LN0/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM0/y1;->b:LN0/i;

    new-instance v1, LN0/m;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v3, "android.media.session.MediaController"

    const/4 v4, -0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LN0/m;-><init>(LM0/y1;Ljava/lang/String;IILN0/i;)V

    iput-object v1, v2, LM0/y1;->c:LN0/m;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, LM0/y1;->d:Ljava/util/ArrayList;

    new-instance v0, Lh/e;

    invoke-direct {v0}, Lh/j;-><init>()V

    iput-object v0, v2, LM0/y1;->e:Lh/e;

    new-instance v0, LM0/p1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, LM0/p1;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, LM0/p1;->b:Ljava/lang/Object;

    iput-object v0, v2, LM0/y1;->g:LM0/p1;

    iget-object v0, p1, LM0/X0;->f:Landroid/content/Context;

    invoke-static {v0}, LN0/i;->a(Landroid/content/Context;)LN0/i;

    move-result-object v0

    iput-object v0, v2, LM0/y1;->i:LN0/i;

    iput-object p1, v2, LM0/y1;->j:LM0/X0;

    new-instance v0, LB/A;

    invoke-direct {v0, p1}, LB/A;-><init>(LM0/X0;)V

    iput-object v0, v2, LM0/y1;->k:LB/A;

    return-void
.end method


# virtual methods
.method public final a(LN0/N;)V
    .locals 5

    iget-object v0, p0, LM0/y1;->j:LM0/X0;

    iget-object v0, v0, LM0/X0;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, LM0/y1;->onCreate()V

    if-eqz p1, :cond_1

    iget-object v0, p0, LM0/y1;->h:LN0/N;

    if-nez v0, :cond_0

    iput-object p1, p0, LM0/y1;->h:LN0/N;

    iget-object v0, p0, LM0/y1;->a:LC2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LC2/b;->i:Ljava/lang/Object;

    check-cast v1, LM0/y1;

    iget-object v1, v1, LM0/y1;->g:LM0/p1;

    new-instance v2, Lz1/v;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v0, p1, v3, v4}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1, v2}, LM0/p1;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The session token has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session token may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, LM0/y1;->a:LC2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LC2/b;->g:Ljava/lang/Object;

    check-cast v0, LN0/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, LN0/p;

    invoke-direct {v0, p0}, LN0/p;-><init>(LM0/y1;)V

    iput-object v0, p0, LM0/y1;->a:LC2/b;

    goto :goto_0

    :cond_0
    new-instance v0, LC2/b;

    invoke-direct {v0, p0}, LC2/b;-><init>(LM0/y1;)V

    iput-object v0, p0, LM0/y1;->a:LC2/b;

    :goto_0
    iget-object v0, p0, LM0/y1;->a:LC2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LN0/o;

    iget-object v2, v0, LC2/b;->j:Ljava/lang/Object;

    check-cast v2, LM0/y1;

    invoke-direct {v1, v0, v2}, LN0/o;-><init>(LC2/b;Landroid/content/Context;)V

    iput-object v1, v0, LC2/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, LM0/y1;->g:LM0/p1;

    const/4 v1, 0x0

    iput-object v1, v0, LM0/p1;->b:Ljava/lang/Object;

    return-void
.end method
