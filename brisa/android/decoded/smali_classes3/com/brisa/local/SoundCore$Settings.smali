.class public final Lcom/brisa/local/SoundCore$Settings;
.super Ljava/lang/Object;
.source "SoundCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/SoundCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field public final bass:I

.field public final mid:I

.field public final original:Z

.field public final treble:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/brisa/local/SoundCore$Settings;->original:Z

    invoke-static {p2}, Lcom/brisa/local/SoundCore;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/brisa/local/SoundCore$Settings;->bass:I

    invoke-static {p3}, Lcom/brisa/local/SoundCore;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/brisa/local/SoundCore$Settings;->mid:I

    invoke-static {p4}, Lcom/brisa/local/SoundCore;->clamp(I)I

    move-result p1

    iput p1, p0, Lcom/brisa/local/SoundCore$Settings;->treble:I

    return-void
.end method
