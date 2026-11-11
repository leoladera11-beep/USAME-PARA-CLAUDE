.class public final LP/d;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:LP/f;


# direct methods
.method public constructor <init>(LP/f;)V
    .locals 0

    iput-object p1, p0, LP/d;->a:LP/f;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p1, p0, LP/d;->a:LP/f;

    invoke-virtual {p1}, LP/f;->c()V

    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 5

    iget-object v0, p0, LP/d;->a:LP/f;

    iget-object v1, v0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, LP/f;->i:Landroid/media/AudioDeviceInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, LP/f;->c()V

    return-void
.end method
