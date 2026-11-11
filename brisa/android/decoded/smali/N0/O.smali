.class public final LN0/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/h;
.implements LI0/C;
.implements LL/g;
.implements LJ/d;
.implements Lz1/u;
.implements LS/k;
.implements LR1/b;


# instance fields
.field public final synthetic e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, LN0/O;->e:I

    sparse-switch p1, :sswitch_data_0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    return-void

    .line 19
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Lh/j;

    invoke-direct {p1}, Lh/j;-><init>()V

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 21
    new-instance p1, Lh/h;

    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p1, Lh/h;->e:Z

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    const/16 v2, 0x50

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt v2, v1, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    div-int/lit8 v2, v2, 0x8

    .line 25
    new-array v0, v2, [J

    iput-object v0, p1, Lh/h;->f:[J

    .line 26
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p1, Lh/h;->g:[Ljava/lang/Object;

    .line 27
    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    .line 28
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 30
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    .line 31
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    return-void

    .line 33
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 35
    sget-object p1, LN/b;->b:LN/b;

    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_3
        0x16 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    iput p1, p0, LN0/O;->e:I

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p1, LA0/d;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LA0/d;-><init>(I)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LN0/O;->f:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    .line 15
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, LN0/O;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LB/g;LB/D;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LN0/O;->e:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 6
    new-instance p1, LZ0/i;

    sget-object v0, LE/d;->d:LE/c;

    invoke-direct {p1, p2, v0}, LZ0/i;-><init>(LB/D;LB/C;)V

    const-class p2, LE/d;

    invoke-virtual {p1, p2}, LZ0/i;->r(Ljava/lang/Class;)LB/B;

    move-result-object p1

    check-cast p1, LE/d;

    .line 7
    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LI0/H;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, LN0/O;->e:I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    .line 101
    new-instance p1, LJ/B;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 102
    invoke-direct {p1, v1, v0}, LJ/B;-><init>([BI)V

    .line 103
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ/S;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LN0/O;->e:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 10
    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/l0;Landroid/os/Looper;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, LN0/O;->e:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    .line 111
    new-instance p1, Landroid/os/Handler;

    new-instance v0, LJ/o;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LJ/o;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LR0/b0;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, LN0/O;->e:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 44
    new-instance p1, LR0/a0;

    .line 45
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p1, LR0/a0;->a:I

    .line 47
    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LN0/N;)V
    .locals 2

    const/16 v0, 0x12

    iput v0, p0, LN0/O;->e:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v0, LN0/z;

    .line 52
    invoke-direct {v0, p1, p2}, LN0/y;-><init>(Landroid/content/Context;LN0/N;)V

    .line 53
    iput-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, LN0/y;

    invoke-direct {v0, p1, p2}, LN0/y;-><init>(Landroid/content/Context;LN0/N;)V

    iput-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LN0/O;->e:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 60
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    if-nez p3, :cond_2

    .line 61
    sget p3, LN0/t;->a:I

    .line 62
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 65
    invoke-virtual {v2, p3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    .line 66
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 67
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 68
    new-instance v2, Landroid/content/ComponentName;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v2

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_1

    .line 70
    const-string p3, "MediaButtonReceiver"

    const-string v2, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null."

    invoke-static {p3, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    .line 71
    const-string v2, "MediaSessionCompat"

    const-string v3, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v2, v3}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_4

    if-nez p4, :cond_4

    .line 72
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p3, v1, :cond_3

    const/high16 p3, 0x2000000

    goto :goto_1

    :cond_3
    move p3, v0

    .line 75
    :goto_1
    invoke-static {p1, v0, p4, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 76
    :cond_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x25

    if-lt p3, v0, :cond_5

    .line 77
    new-instance p3, LN0/L;

    .line 78
    invoke-direct {p3, p1, p2, p5}, LN0/I;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    iput-object p3, p0, LN0/O;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/16 v0, 0x1d

    if-lt p3, v0, :cond_6

    .line 80
    new-instance p3, LN0/K;

    .line 81
    invoke-direct {p3, p1, p2, p5}, LN0/I;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    iput-object p3, p0, LN0/O;->f:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const/16 v0, 0x1c

    if-lt p3, v0, :cond_7

    .line 83
    new-instance p3, LN0/J;

    .line 84
    invoke-direct {p3, p1, p2, p5}, LN0/I;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    iput-object p3, p0, LN0/O;->f:Ljava/lang/Object;

    goto :goto_2

    .line 86
    :cond_7
    new-instance p3, LN0/I;

    invoke-direct {p3, p1, p2, p5}, LN0/I;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p3, p0, LN0/O;->f:Ljava/lang/Object;

    .line 87
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 88
    new-instance p3, Landroid/os/Handler;

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_3
    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    new-instance p2, LN0/E;

    .line 90
    invoke-direct {p2}, LN0/G;-><init>()V

    .line 91
    invoke-virtual {p0, p2, p3}, LN0/O;->i0(LN0/G;Landroid/os/Handler;)V

    .line 92
    iget-object p2, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p2, LN0/I;

    .line 93
    iget-object p2, p2, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {p2, p4}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 94
    new-instance p2, LN0/O;

    .line 95
    iget-object p3, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p3, LN0/I;

    .line 96
    iget-object p3, p3, LN0/I;->c:LN0/N;

    .line 97
    invoke-direct {p2, p1, p3}, LN0/O;-><init>(Landroid/content/Context;LN0/N;)V

    .line 98
    iput-object p2, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    .line 99
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, LN0/O;->e:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 57
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;LB/A;)V
    .locals 2

    const/16 v0, 0x1c

    iput v0, p0, LN0/O;->e:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, LN0/O;->g:Ljava/lang/Object;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 40
    iget-object v0, p2, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, LS/a;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p2, p2, LB/A;->f:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, LF1/i;->o(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LN0/O;->e:I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    .line 109
    iput-object p2, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;LS1/m;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, LN0/O;->e:I

    const-string v0, "input"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    .line 106
    iput-object p2, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, LN0/O;->e:I

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p3, p0, LN0/O;->e:I

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    iput-object p2, p0, LN0/O;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(LN0/O;ZZ)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    iget-object v2, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "WakeLockManager"

    const-string p2, "WAKE_LOCK permission not granted, can\'t acquire wake lock for playback"

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-nez v2, :cond_1

    const-string p1, "WakeLockManager"

    const-string p2, "PowerManager is null, therefore not creating the WakeLock."

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v3, "ExoPlayer:WakeLockManager"

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, LN0/O;->g:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_2
    iget-object v2, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static E(LN0/O;LN/b;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, v1}, LN0/O;->J(LN/b;Ljava/util/List;)LN/b;

    move-result-object v2

    iget-object v3, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v3, LN/b;

    invoke-static {v3, v1}, LN0/O;->J(LN/b;Ljava/util/List;)LN/b;

    move-result-object v1

    invoke-virtual {v2, v1}, LN/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    return-void
.end method

.method public static J(LN/b;Ljava/util/List;)LN/b;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, LN/b;->a:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, LN/b;

    invoke-direct {p0, v0}, LN/b;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method public static T(II)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, v4

    if-le v2, p1, :cond_3

    add-int/2addr v3, v4

    :cond_3
    return v3
.end method


# virtual methods
.method public A(LZ/l;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    new-instance v1, LS/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LS/b;-><init>(LS/k;LZ/l;I)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public B(Landroid/net/Uri;)Lz1/B;
    .locals 2

    iget v0, p0, LN0/O;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    invoke-virtual {v0, p1}, LJ/u;->B(Landroid/net/Uri;)Lz1/B;

    move-result-object p1

    new-instance v0, LI0/E;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LB/A;

    if-eqz v0, :cond_0

    iget-object v0, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LB/A;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, Lz1/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LJ/d;

    invoke-interface {v0, p1}, LJ/d;->B(Landroid/net/Uri;)Lz1/B;

    move-result-object v0

    new-instance v1, LB/A;

    invoke-direct {v1, p1, v0}, LB/A;-><init>(Landroid/net/Uri;Lz1/B;)V

    iput-object v1, p0, LN0/O;->g:Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public C(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0, p1}, LO/h;->s(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    return-void
.end method

.method public F(LN0/C;I)V
    .locals 5

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v1, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, LS1/e;->f(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iget-object p2, v0, LN0/y;->a:Landroid/media/session/MediaController;

    const-string v0, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p2, v0, v1, p1}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public G(JLR0/T;)V
    .locals 8

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Lh/h;

    iget-object v1, v0, Lh/h;->f:[J

    iget v2, v0, Lh/h;->h:I

    invoke-static {v1, v2, p1, p2}, Lh/g;->b([JIJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p1, v0, Lh/h;->g:[Ljava/lang/Object;

    aput-object p3, p1, v1

    return-void

    :cond_0
    not-int v1, v1

    iget v2, v0, Lh/h;->h:I

    if-ge v1, v2, :cond_1

    iget-object v3, v0, Lh/h;->g:[Ljava/lang/Object;

    aget-object v4, v3, v1

    sget-object v5, Lh/h;->i:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Lh/h;->f:[J

    aput-wide p1, v0, v1

    aput-object p3, v3, v1

    return-void

    :cond_1
    iget-boolean v3, v0, Lh/h;->e:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lh/h;->f:[J

    array-length v3, v3

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Lh/h;->a()V

    iget-object v1, v0, Lh/h;->f:[J

    iget v2, v0, Lh/h;->h:I

    invoke-static {v1, v2, p1, p2}, Lh/g;->b([JIJ)I

    move-result v1

    not-int v1, v1

    :cond_2
    iget v2, v0, Lh/h;->h:I

    iget-object v3, v0, Lh/h;->f:[J

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_5

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    :goto_0
    const/16 v5, 0x20

    if-ge v3, v5, :cond_4

    shl-int v5, v4, v3

    add-int/lit8 v5, v5, -0xc

    if-gt v2, v5, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    div-int/lit8 v2, v2, 0x8

    new-array v3, v2, [J

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lh/h;->f:[J

    array-length v6, v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lh/h;->g:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lh/h;->f:[J

    iput-object v2, v0, Lh/h;->g:[Ljava/lang/Object;

    :cond_5
    iget v2, v0, Lh/h;->h:I

    sub-int/2addr v2, v1

    if-eqz v2, :cond_6

    iget-object v3, v0, Lh/h;->f:[J

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lh/h;->g:[Ljava/lang/Object;

    iget v3, v0, Lh/h;->h:I

    sub-int/2addr v3, v1

    invoke-static {v2, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v2, v0, Lh/h;->f:[J

    aput-wide p1, v2, v1

    iget-object p1, v0, Lh/h;->g:[Ljava/lang/Object;

    aput-object p3, p1, v1

    iget p1, v0, Lh/h;->h:I

    add-int/2addr p1, v4

    iput p1, v0, Lh/h;->h:I

    return-void
.end method

.method public H(LR0/T;LE0/e;)V
    .locals 2

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Lh/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/c0;

    if-nez v1, :cond_0

    invoke-static {}, LR0/c0;->a()LR0/c0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v1, LR0/c0;->c:LE0/e;

    iget p1, v1, LR0/c0;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, LR0/c0;->a:I

    return-void
.end method

.method public I()V
    .locals 2

    iget v0, p0, LN0/O;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    iput-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public K(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 12

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LE/d;

    iget-object v1, v0, LE/d;->b:Lh/k;

    iget v1, v1, Lh/k;->g:I

    if-lez v1, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, LE/d;->b:Lh/k;

    iget v5, v4, Lh/k;->g:I

    if-ge v3, v5, :cond_9

    iget-object v4, v4, Lh/k;->f:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, LE/a;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, LE/d;->b:Lh/k;

    iget-object v5, v5, Lh/k;->e:[I

    aget v5, v5, v3

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, LE/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " mArgs="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mLoader="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, LE/a;->l:LZ0/d;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, v4, LE/a;->l:LZ0/d;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mListener="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, LZ0/d;->a:LE/a;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v5, v7, LZ0/d;->b:Z

    const-string v10, "mStarted="

    if-nez v5, :cond_0

    iget-boolean v5, v7, LZ0/d;->e:Z

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v7, LZ0/d;->b:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mContentChanged="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v7, LZ0/d;->e:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mProcessingChange="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    :goto_1
    iget-boolean v5, v7, LZ0/d;->c:Z

    if-nez v5, :cond_1

    iget-boolean v5, v7, LZ0/d;->d:Z

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAbandoned="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v7, LZ0/d;->c:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mReset="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v7, LZ0/d;->d:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    iget-object v5, v7, LZ0/d;->g:LF/a;

    const-string v11, " waiting="

    if-eqz v5, :cond_3

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTask="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, LZ0/d;->g:LF/a;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, LZ0/d;->g:LF/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget-object v5, v7, LZ0/d;->h:LF/a;

    if-eqz v5, :cond_4

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mCancellingTask="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, LZ0/d;->h:LF/a;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v7, LZ0/d;->h:LF/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    iget-object v5, v4, LE/a;->n:LE/b;

    if-eqz v5, :cond_5

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mCallbacks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, LE/a;->n:LE/b;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, v4, LE/a;->n:LE/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mDeliveredData="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, LE/b;->f:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_5
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mData="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, LE/a;->l:LZ0/d;

    iget-object v7, v4, LB/o;->e:Ljava/lang/Object;

    sget-object v8, LB/o;->k:Ljava/lang/Object;

    if-eq v7, v8, :cond_6

    move-object v6, v7

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v6, :cond_7

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v4, LB/o;->c:I

    if-lez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    move v4, v2

    :goto_3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public L()V
    .locals 3

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, LC1/i;

    const-string v1, "Cannot end the root object or array"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M(I)V
    .locals 4

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    return-void
.end method

.method public N(IIII)Landroid/view/View;
    .locals 9

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LR0/a0;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LR0/b0;

    invoke-interface {v1}, LR0/b0;->o()I

    move-result v2

    invoke-interface {v1}, LR0/b0;->f()I

    move-result v3

    if-le p2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    invoke-interface {v1, p1}, LR0/b0;->m(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v1, v6}, LR0/b0;->i(Landroid/view/View;)I

    move-result v7

    invoke-interface {v1, v6}, LR0/b0;->p(Landroid/view/View;)I

    move-result v8

    iput v2, v0, LR0/a0;->b:I

    iput v3, v0, LR0/a0;->c:I

    iput v7, v0, LR0/a0;->d:I

    iput v8, v0, LR0/a0;->e:I

    if-eqz p3, :cond_1

    iput p3, v0, LR0/a0;->a:I

    invoke-virtual {v0}, LR0/a0;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v6

    :cond_1
    if-eqz p4, :cond_2

    iput p4, v0, LR0/a0;->a:I

    invoke-virtual {v0}, LR0/a0;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_2
    add-int/2addr p1, v4

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method public O()V
    .locals 3

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, v0, LM0/l0;->E:LM0/q;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, LM0/l0;->E:LM0/q;

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {v1, v0}, LM0/q;->T(LM0/o;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MCImplBase"

    const-string v2, "Error in sending flushCommandQueue"

    invoke-static {v1, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public P(LG/x;LG/e;)LP/h;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, LG/x;->L:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_f

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Le/a;->d(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "offloadVariableRateSupported"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "offloadVariableRateSupported=1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, LN0/O;->g:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, LN0/O;->g:Ljava/lang/Object;

    :goto_1
    iget-object v3, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2
    iget-object v4, p1, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p1, LG/x;->l:Ljava/lang/String;

    invoke-static {v4, v7}, LG/W;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v4}, LJ/W;->m(I)I

    move-result v7

    if-ge v1, v7, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v7, p1, LG/x;->K:I

    if-eq v7, v2, :cond_5

    goto :goto_3

    :cond_5
    iget p1, p1, LG/x;->J:I

    invoke-static {p1}, LJ/W;->n(I)I

    move-result v7

    :goto_3
    if-nez v7, :cond_6

    sget-object p1, LP/h;->d:LP/h;

    return-object p1

    :cond_6
    :try_start_0
    new-instance p1, Landroid/media/AudioFormat$Builder;

    invoke-direct {p1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x21

    if-lt v1, v0, :cond_9

    invoke-virtual {p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-static {p1, p2}, LP/a;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_7

    sget-object p1, LP/h;->d:LP/h;

    return-object p1

    :cond_7
    const/4 p2, 0x3

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_8

    move v5, v6

    :cond_8
    new-instance p1, LP/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p1, LP/g;->a:Z

    iput-boolean v5, p1, LP/g;->b:Z

    iput-boolean v3, p1, LP/g;->c:Z

    invoke-virtual {p1}, LP/g;->a()LP/h;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v0, 0x1f

    if-lt v1, v0, :cond_c

    invoke-virtual {p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-static {p1, p2}, LO/h;->b(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, LP/h;->d:LP/h;

    return-object p1

    :cond_a
    new-instance p2, LP/g;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    if-le v1, v0, :cond_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    move v5, v6

    :cond_b
    iput-boolean v6, p2, LP/g;->a:Z

    iput-boolean v5, p2, LP/g;->b:Z

    iput-boolean v3, p2, LP/g;->c:Z

    invoke-virtual {p2}, LP/g;->a()LP/h;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {p2}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-static {p1, p2}, LB/r;->A(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, LP/h;->d:LP/h;

    return-object p1

    :cond_d
    new-instance p1, LP/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p1, LP/g;->a:Z

    iput-boolean v3, p1, LP/g;->c:Z

    invoke-virtual {p1}, LP/g;->a()LP/h;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, LP/h;->d:LP/h;

    return-object p1

    :cond_e
    :goto_4
    sget-object p1, LP/h;->d:LP/h;

    return-object p1

    :cond_f
    :goto_5
    sget-object p1, LP/h;->d:LP/h;

    return-object p1
.end method

.method public Q()LN0/A;
    .locals 10

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, LN0/A;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v3

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-static {v4}, LG/e;->b(Landroid/media/AudioAttributes;)LG/e;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v5

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v6

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v8, v9, :cond_0

    invoke-static {v0}, LG/l;->k(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v8, v1

    invoke-direct/range {v2 .. v8}, LN0/A;-><init>(ILG/e;IIILjava/lang/String;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public R()LN0/U;
    .locals 4

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v1, v0, LN0/y;->e:LN0/N;

    invoke-virtual {v1}, LN0/N;->a()LN0/d;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, LN0/d;->c()LN0/U;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPlaybackState."

    invoke-static {v2, v3, v1}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, LN0/U;->a(Landroid/media/session/PlaybackState;)LN0/U;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public declared-synchronized S()Ljava/util/Map;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public U()LN0/i;
    .locals 3

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, LN0/B;

    invoke-direct {v1, v0}, LN0/i;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance v1, LN0/i;

    invoke-direct {v1, v0}, LN0/i;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public W(LN0/S;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v1, p1, LN0/S;->b:I

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p1, p1, LN0/S;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget p1, p1, LN0/S;->c:I

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public X(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LR0/a0;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LR0/b0;

    invoke-interface {v1}, LR0/b0;->o()I

    move-result v2

    invoke-interface {v1}, LR0/b0;->f()I

    move-result v3

    invoke-interface {v1, p1}, LR0/b0;->i(Landroid/view/View;)I

    move-result v4

    invoke-interface {v1, p1}, LR0/b0;->p(Landroid/view/View;)I

    move-result p1

    iput v2, v0, LR0/a0;->b:I

    iput v3, v0, LR0/a0;->c:I

    iput v4, v0, LR0/a0;->d:I

    iput p1, v0, LR0/a0;->e:I

    const/16 p1, 0x6003

    iput p1, v0, LR0/a0;->a:I

    invoke-virtual {v0}, LR0/a0;->a()Z

    move-result p1

    return p1
.end method

.method public Y(Ljava/lang/String;)V
    .locals 1

    new-instance v0, LC1/d;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0, p1}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Z(II)V
    .locals 3

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, LN0/O;->M(I)V

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LR0/Y;

    iget v2, v1, LR0/Y;->e:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, LR0/Y;->e:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LB/A;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    const/16 v2, 0x23

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    const/16 v4, 0x21

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    if-lt v3, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, LB/A;->R(Landroid/media/MediaCodec;)V

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    return-void

    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, LB/A;->R(Landroid/media/MediaCodec;)V

    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    throw v3
.end method

.method public a0(II)V
    .locals 5

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, LN0/O;->M(I)V

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/Y;

    iget v3, v2, LR0/Y;->e:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, LR0/Y;->e:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public b(LJ/S;Lb0/p;LI0/J;)V
    .locals 0

    return-void
.end method

.method public b0(Ljava/lang/Exception;Z)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lu1/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    :goto_1
    invoke-virtual {v1, p1, v2}, LQ/c;->k(Ljava/lang/Throwable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(ILM/b;JI)V
    .locals 8

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    iget-object v4, p2, LM/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v3, 0x0

    move v2, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public c0(LR0/T;I)LE0/e;
    .locals 5

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Lh/j;

    invoke-virtual {v0, p1}, Lh/j;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lh/j;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/c0;

    if-eqz v2, :cond_4

    iget v3, v2, LR0/c0;->a:I

    and-int v4, v3, p2

    if-eqz v4, :cond_4

    not-int v4, p2

    and-int/2addr v3, v4

    iput v3, v2, LR0/c0;->a:I

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    iget-object p2, v2, LR0/c0;->b:LE0/e;

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-ne p2, v4, :cond_3

    iget-object p2, v2, LR0/c0;->c:LE0/e;

    :goto_0
    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Lh/j;->h(I)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v2, LR0/c0;->a:I

    iput-object v1, v2, LR0/c0;->b:LE0/e;

    iput-object v1, v2, LR0/c0;->c:LE0/e;

    sget-object p1, LR0/c0;->d:LJ/u;

    invoke-virtual {p1, v2}, LJ/u;->i(Ljava/lang/Object;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LM0/L0;

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LJ/j;

    invoke-virtual {p1}, LJ/j;->d()Z

    return-void
.end method

.method public d0(LQ/c;)V
    .locals 8

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LQ/c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    iget-object v0, p1, LQ/c;->b:LQ/s;

    invoke-interface {v0}, LQ/s;->k()LQ/r;

    move-result-object v7

    iput-object v7, p1, LQ/c;->z:LQ/r;

    iget-object p1, p1, LQ/c;->s:LN0/w;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LQ/a;

    sget-object v0, LU/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v7}, LQ/a;-><init>(JZJLjava/lang/Object;)V

    invoke-virtual {p1, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public e0(LR0/T;)V
    .locals 2

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Lh/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR0/c0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, LR0/c0;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, LR0/c0;->a:I

    return-void
.end method

.method public f(LJ/D;)V
    .locals 10

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LI0/H;

    iget-object v1, v0, LI0/H;->g:Landroid/util/SparseArray;

    iget-object v2, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LJ/B;

    invoke-virtual {p1}, LJ/D;->A()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LJ/D;->A()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, LJ/D;->O(I)V

    invoke-virtual {p1}, LJ/D;->a()I

    move-result v3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_4

    iget-object v7, v2, LJ/B;->b:[B

    invoke-virtual {p1, v5, v7, v4}, LJ/D;->k(I[BI)V

    invoke-virtual {v2, v5}, LJ/B;->m(I)V

    const/16 v7, 0x10

    invoke-virtual {v2, v7}, LJ/B;->g(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, LJ/B;->o(I)V

    const/16 v8, 0xd

    if-nez v7, :cond_2

    invoke-virtual {v2, v8}, LJ/B;->o(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v8}, LJ/B;->g(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, LI0/D;

    new-instance v9, LI0/G;

    invoke-direct {v9, v0, v7}, LI0/G;-><init>(LI0/H;I)V

    invoke-direct {v8, v9}, LI0/D;-><init>(LI0/C;)V

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v7, v0, LI0/H;->m:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, LI0/H;->m:I

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public f0(LN0/C;)V
    .locals 5

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v1, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, LS1/e;->f(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v2, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    const-string v2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {v0, v2, v1, p1}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public g(IIJI)V
    .locals 8

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public g0(LR0/T;)V
    .locals 6

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Lh/h;

    iget-boolean v1, v0, Lh/h;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lh/h;->a()V

    :cond_0
    iget v1, v0, Lh/h;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-boolean v3, v0, Lh/h;->e:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lh/h;->a()V

    :cond_1
    iget-object v3, v0, Lh/h;->g:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-ne p1, v4, :cond_2

    sget-object v5, Lh/h;->i:Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    aput-object v5, v3, v1

    iput-boolean v2, v0, Lh/h;->e:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Lh/j;

    invoke-virtual {v0, p1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR0/c0;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    iput v0, p1, LR0/c0;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, LR0/c0;->b:LE0/e;

    iput-object v0, p1, LR0/c0;->c:LE0/e;

    sget-object v0, LR0/c0;->d:LJ/u;

    invoke-virtual {v0, p1}, LJ/u;->i(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public h(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 3

    :cond_0
    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return v0
.end method

.method public h0(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    .locals 2

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    iput p1, v1, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_1
    iput-object p3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public i0(LN0/G;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v1, v0, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, LN0/I;->l:LN0/G;

    iget-object v2, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    iget-object v3, p1, LN0/G;->b:LN0/F;

    invoke-virtual {v2, v3, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    iget-object v2, p1, LN0/G;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p1, LN0/G;->d:Ljava/lang/ref/WeakReference;

    iget-object v0, p1, LN0/G;->e:LM0/p1;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, LM0/p1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v3, 0x2

    invoke-direct {v0, p1, p2, v3}, LM0/p1;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p1, LN0/G;->e:LM0/p1;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LS1/b;

    invoke-direct {v0, p0}, LS1/b;-><init>(LN0/O;)V

    return-object v0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public j0(LN0/U;)V
    .locals 9

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LN0/I;

    iput-object p1, v1, LN0/I;->g:LN0/U;

    iget-object v2, v1, LN0/I;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_0

    iget-object v0, v1, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LN0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, LN0/b;->Z(LN0/U;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string v4, "MediaSessionCompat"

    const-string v5, "Dead object in setPlaybackState."

    invoke-static {v4, v5, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, LN0/I;->a:Landroid/media/session/MediaSession;

    iget-object v1, p1, LN0/U;->p:Landroid/media/session/PlaybackState;

    if-nez v1, :cond_4

    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iget v3, p1, LN0/U;->e:I

    iget-wide v4, p1, LN0/U;->f:J

    iget v6, p1, LN0/U;->h:F

    iget-wide v7, p1, LN0/U;->l:J

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    iget-wide v3, p1, LN0/U;->g:J

    invoke-virtual {v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    iget-wide v3, p1, LN0/U;->i:J

    invoke-virtual {v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    iget-object v1, p1, LN0/U;->k:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    iget-object v1, p1, LN0/U;->m:Ljava/util/AbstractCollection;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN0/T;

    iget-object v4, v3, LN0/T;->i:Landroid/media/session/PlaybackState$CustomAction;

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    new-instance v4, Landroid/media/session/PlaybackState$CustomAction$Builder;

    iget-object v5, v3, LN0/T;->e:Ljava/lang/String;

    iget-object v6, v3, LN0/T;->f:Ljava/lang/CharSequence;

    iget v7, v3, LN0/T;->g:I

    invoke-direct {v4, v5, v6, v7}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v3, v3, LN0/T;->h:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_3

    :cond_3
    iget-wide v3, p1, LN0/U;->n:J

    invoke-virtual {v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    iget-object v1, p1, LN0/U;->o:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/media/session/PlaybackState$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    iput-object v1, p1, LN0/U;->p:Landroid/media/session/PlaybackState;

    :cond_4
    iget-object p1, p1, LN0/U;->p:Landroid/media/session/PlaybackState;

    invoke-static {v0, p1}, Lcom/brisa/local/VideoSystemControls;->playbackState(Landroid/media/session/MediaSession;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 7

    iget-object p1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, LM0/L0;

    sget-object v2, LM0/j2;->b:LM0/j2;

    sget-object v3, LG/c0;->b:LG/c0;

    sget-object v4, Lu1/C0;->i:Lu1/C0;

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, LM0/L0;-><init>(ZLM0/j2;LG/c0;Lu1/P;Lu1/P;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LJ/j;

    invoke-virtual {p1}, LJ/j;->d()Z

    return-void
.end method

.method public k0(ZZ)V
    .locals 3

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object v1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_2

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "WifiLockManager"

    if-eqz v1, :cond_0

    const-string p1, "WAKE_LOCK permission not granted, can\'t acquire wake lock for playback"

    invoke-static {v2, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    const-string p1, "WifiManager is null, therefore not creating the WifiLock."

    invoke-static {v2, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x3

    const-string v2, "ExoPlayer:WifiLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :cond_2
    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    return-void
.end method

.method public l()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public l0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/d;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p1, LC1/i;

    const-string p2, "Attempted to write a keyed value to a JsonArray"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(LG/T;)Lz1/B;
    .locals 3

    iget v0, p0, LN0/O;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    invoke-virtual {v0, p1}, LJ/u;->m(LG/T;)Lz1/B;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, LI0/E;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LB/A;

    if-eqz v0, :cond_3

    iget-object v1, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v2, p1, LG/T;->n:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_3

    iget-object v1, p1, LG/T;->k:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LB/A;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, Lz1/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LJ/d;

    invoke-interface {v0, p1}, LJ/d;->m(LG/T;)Lz1/B;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    new-instance v1, LB/A;

    invoke-direct {v1, p1, v0}, LB/A;-><init>(LG/T;Lz1/B;)V

    iput-object v1, p0, LN0/O;->g:Ljava/lang/Object;

    move-object p1, v0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public m0(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, LN0/O;->l0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0}, LS/a;->d(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public o(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public q(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public r(Lb0/o;J)Lb0/g;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lb0/o;->getPosition()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lb0/o;->getLength()J

    move-result-wide v1

    sub-long/2addr v1, v4

    const-wide/16 v6, 0x4e20

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, LJ/D;

    invoke-virtual {v2, v1}, LJ/D;->K(I)V

    iget-object v3, v2, LJ/D;->a:[B

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v6, v3, v1}, Lb0/o;->l(I[BI)V

    const/4 v1, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v1

    move-wide v9, v6

    :goto_0
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v8

    const/4 v11, 0x4

    if-lt v8, v11, :cond_e

    iget-object v8, v2, LJ/D;->a:[B

    iget v12, v2, LJ/D;->b:I

    invoke-static {v8, v12}, LI0/y;->a([BI)I

    move-result v8

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v8, v13, :cond_0

    invoke-virtual {v2, v12}, LJ/D;->O(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v11}, LJ/D;->O(I)V

    invoke-static {v2}, LI0/z;->c(LJ/D;)J

    move-result-wide v14

    cmp-long v1, v14, v6

    if-eqz v1, :cond_4

    iget-object v1, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LJ/S;

    invoke-virtual {v1, v14, v15}, LJ/S;->b(J)J

    move-result-wide v14

    cmp-long v1, v14, p2

    if-lez v1, :cond_2

    cmp-long v1, v9, v6

    if-nez v1, :cond_1

    new-instance v1, Lb0/g;

    const/4 v6, -0x1

    move-wide v2, v14

    invoke-direct/range {v1 .. v6}, Lb0/g;-><init>(JJI)V

    return-object v1

    :cond_1
    int-to-long v1, v3

    add-long v9, v4, v1

    new-instance v6, Lb0/g;

    const/4 v11, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Lb0/g;-><init>(JJI)V

    return-object v6

    :cond_2
    move-wide v8, v14

    const-wide/32 v14, 0x186a0

    add-long/2addr v14, v8

    cmp-long v1, v14, p2

    if-lez v1, :cond_3

    iget v1, v2, LJ/D;->b:I

    int-to-long v1, v1

    add-long v9, v4, v1

    new-instance v6, Lb0/g;

    const/4 v11, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Lb0/g;-><init>(JJI)V

    return-object v6

    :cond_3
    iget v1, v2, LJ/D;->b:I

    move v3, v1

    move-wide v9, v8

    :cond_4
    iget v1, v2, LJ/D;->c:I

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v8

    const/16 v14, 0xa

    if-ge v8, v14, :cond_5

    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->A()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v14

    if-ge v14, v8, :cond_6

    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v8

    if-ge v8, v11, :cond_7

    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    goto :goto_2

    :cond_7
    iget-object v8, v2, LJ/D;->a:[B

    iget v14, v2, LJ/D;->b:I

    invoke-static {v8, v14}, LI0/y;->a([BI)I

    move-result v8

    const/16 v14, 0x1bb

    if-ne v8, v14, :cond_9

    invoke-virtual {v2, v11}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v8

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v14

    if-ge v14, v8, :cond_8

    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    :cond_9
    :goto_1
    invoke-virtual {v2}, LJ/D;->a()I

    move-result v8

    if-lt v8, v11, :cond_d

    iget-object v8, v2, LJ/D;->a:[B

    iget v14, v2, LJ/D;->b:I

    invoke-static {v8, v14}, LI0/y;->a([BI)I

    move-result v8

    if-eq v8, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v8, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    if-eq v8, v12, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v2, v11}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->a()I

    move-result v8

    const/4 v14, 0x2

    if-ge v8, v14, :cond_c

    invoke-virtual {v2, v1}, LJ/D;->N(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {v2}, LJ/D;->H()I

    move-result v8

    iget v14, v2, LJ/D;->c:I

    iget v15, v2, LJ/D;->b:I

    add-int/2addr v15, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v8}, LJ/D;->N(I)V

    goto :goto_1

    :cond_d
    :goto_2
    iget v1, v2, LJ/D;->b:I

    goto/16 :goto_0

    :cond_e
    cmp-long v2, v9, v6

    if-eqz v2, :cond_f

    int-to-long v1, v1

    add-long v11, v4, v1

    new-instance v8, Lb0/g;

    const/4 v13, -0x2

    invoke-direct/range {v8 .. v13}, Lb0/g;-><init>(JJI)V

    return-object v8

    :cond_f
    sget-object v1, Lb0/g;->d:Lb0/g;

    return-object v1
.end method

.method public s([B)Lz1/B;
    .locals 2

    iget v0, p0, LN0/O;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LJ/u;

    invoke-virtual {v0, p1}, LJ/u;->s([B)Lz1/B;

    move-result-object p1

    new-instance v0, LI0/E;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lz1/s;->e:Lz1/s;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/v;->x(Lz1/B;Lt1/j;Ljava/util/concurrent/Executor;)Lz1/q;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LB/A;

    if-eqz v0, :cond_0

    iget-object v0, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LB/A;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, Lz1/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LJ/d;

    invoke-interface {v0, p1}, LJ/d;->s([B)Lz1/B;

    move-result-object v0

    new-instance v1, LB/A;

    invoke-direct {v1, p1, v0}, LB/A;-><init>([BLz1/B;)V

    iput-object v1, p0, LN0/O;->g:Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public t()LL/h;
    .locals 3

    new-instance v0, LL/o;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, LA0/d;

    invoke-virtual {v2}, LA0/d;->t()LL/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LL/o;-><init>(Landroid/content/Context;LL/h;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LN0/O;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LB/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public u(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public v(IJ)V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public w()I
    .locals 3

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public x(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {v0, p1}, LO/h;->C(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    return-void
.end method

.method public z()V
    .locals 3

    iget-object v0, p0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, LJ/D;

    sget-object v1, LJ/W;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, LJ/D;->L([BI)V

    return-void
.end method
