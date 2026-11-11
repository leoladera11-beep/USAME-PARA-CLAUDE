.class public final LH/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:LN/s;

.field public final b:LJ/O;

.field public final synthetic c:LH/c;


# direct methods
.method public constructor <init>(LH/c;LJ/O;LN/s;)V
    .locals 0

    iput-object p1, p0, LH/b;->c:LH/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, LH/b;->b:LJ/O;

    iput-object p3, p0, LH/b;->a:LN/s;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LH/a;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LH/a;-><init>(Ljava/lang/Object;I)V

    iget-object p2, p0, LH/b;->b:LJ/O;

    invoke-virtual {p2, p1}, LJ/O;->e(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
