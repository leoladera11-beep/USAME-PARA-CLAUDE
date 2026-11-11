.class public final LP/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LI0/E;

.field public final c:Landroid/os/Handler;

.field public final d:LP/d;

.field public final e:LJ/z;

.field public final f:LP/e;

.field public g:LH/c;

.field public h:LP/c;

.field public i:Landroid/media/AudioDeviceInfo;

.field public j:LG/e;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LI0/E;LG/e;Landroid/media/AudioDeviceInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LP/f;->a:Landroid/content/Context;

    iput-object p2, p0, LP/f;->b:LI0/E;

    iput-object p3, p0, LP/f;->j:LG/e;

    iput-object p4, p0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    invoke-static {}, LJ/W;->q()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, LP/f;->c:Landroid/os/Handler;

    new-instance p2, LP/d;

    invoke-direct {p2, p0}, LP/d;-><init>(LP/f;)V

    iput-object p2, p0, LP/f;->d:LP/d;

    new-instance p2, LJ/z;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LJ/z;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, LP/f;->e:LJ/z;

    sget-object p2, LP/c;->e:Lu1/C0;

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Amazon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Xiaomi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p4

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "external_surround_sound_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_2

    new-instance p4, LP/e;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, LP/e;-><init>(LP/f;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    iput-object p4, p0, LP/f;->f:LP/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    iget-object v1, p0, LP/f;->g:LH/c;

    if-eqz v1, :cond_2

    iget-object v2, v1, LH/c;->f:Ljava/lang/Object;

    check-cast v2, Landroid/media/Spatializer;

    if-eqz v2, :cond_1

    iget-boolean v3, v1, LH/c;->e:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, LG/d;->k(Landroid/media/Spatializer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, LH/c;->f:Ljava/lang/Object;

    check-cast v2, Landroid/media/Spatializer;

    if-eqz v2, :cond_1

    invoke-static {v2}, LG/d;->n(Landroid/media/Spatializer;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    if-lt v0, v2, :cond_0

    iget-object v0, v1, LH/c;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/Spatializer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LG/d;->d(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object v0

    invoke-static {v0}, LL/p;->c(Landroid/media/Spatializer;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0xfc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lu1/P;->f:Lu1/N;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    return-object v0

    :cond_2
    sget-object v0, Lu1/P;->f:Lu1/N;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    return-object v0
.end method

.method public final b(LP/c;)V
    .locals 2

    iget-boolean v0, p0, LP/f;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LP/f;->h:LP/c;

    invoke-virtual {p1, v0}, LP/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, LP/f;->h:LP/c;

    iget-object v0, p0, LP/f;->b:LI0/E;

    iget-object v0, v0, LI0/E;->f:Ljava/lang/Object;

    check-cast v0, LP/G;

    invoke-virtual {v0}, LP/G;->f()V

    iget-object v1, v0, LP/G;->h:LP/c;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, LP/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, v0, LP/G;->h:LP/c;

    iget-object p1, v0, LP/G;->f:LJ/t;

    if-eqz p1, :cond_0

    new-instance v0, LP/B;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, LJ/t;->f(ILJ/q;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    invoke-virtual {p0}, LP/f;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LP/f;->j:LG/e;

    iget-object v2, p0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    sget-object v3, LP/c;->e:Lu1/C0;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LP/f;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v4, v3, v1, v2, v0}, LP/c;->b(Landroid/content/Context;Landroid/content/Intent;LG/e;Landroid/media/AudioDeviceInfo;Ljava/util/List;)LP/c;

    move-result-object v0

    invoke-virtual {p0, v0}, LP/f;->b(LP/c;)V

    return-void
.end method
