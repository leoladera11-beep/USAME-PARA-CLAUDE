.class public final Lcom/brisa/local/SoundCore$Engine;
.super Ljava/lang/Object;
.source "SoundCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/SoundCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Engine"
.end annotation


# instance fields
.field private effect:Lcom/brisa/local/SoundCore$Effect;

.field private final factory:Lcom/brisa/local/SoundCore$Factory;

.field private owner:Ljava/lang/Object;

.field private port:Lcom/brisa/local/SoundCore$Port;

.field private session:I


# direct methods
.method public constructor <init>(Lcom/brisa/local/SoundCore$Factory;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->factory:Lcom/brisa/local/SoundCore$Factory;

    return-void
.end method

.method private clear()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    invoke-interface {v0}, Lcom/brisa/local/SoundCore$Effect;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    iput-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->owner:Ljava/lang/Object;

    iput-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->port:Lcom/brisa/local/SoundCore$Port;

    const/4 v0, 0x0

    iput v0, p0, Lcom/brisa/local/SoundCore$Engine;->session:I

    return-void
.end method

.method private restore()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->port:Lcom/brisa/local/SoundCore$Port;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->port:Lcom/brisa/local/SoundCore$Port;

    iget-object v1, p0, Lcom/brisa/local/SoundCore$Engine;->port:Lcom/brisa/local/SoundCore$Port;

    invoke-interface {v1}, Lcom/brisa/local/SoundCore$Port;->base()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/brisa/local/SoundCore$Port;->volume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Lcom/brisa/local/SoundCore$Port;Lcom/brisa/local/SoundCore$Settings;)Lcom/brisa/local/SoundCore$Result;
    .locals 2

    .line 27
    invoke-interface {p2}, Lcom/brisa/local/SoundCore$Port;->session()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/brisa/local/SoundCore$Engine;->owner:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/brisa/local/SoundCore$Engine;->session:I

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->restore()V

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->clear()V

    .line 29
    :cond_1
    invoke-interface {p2}, Lcom/brisa/local/SoundCore$Port;->playing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p3, Lcom/brisa/local/SoundCore$Settings;->original:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    iput-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->owner:Ljava/lang/Object;

    iput-object p2, p0, Lcom/brisa/local/SoundCore$Engine;->port:Lcom/brisa/local/SoundCore$Port;

    iput v0, p0, Lcom/brisa/local/SoundCore$Engine;->session:I

    .line 31
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->restore()V

    sget-object p1, Lcom/brisa/local/SoundCore$Result;->UNAVAILABLE:Lcom/brisa/local/SoundCore$Result;

    return-object p1

    .line 33
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->factory:Lcom/brisa/local/SoundCore$Factory;

    invoke-interface {p1, v0}, Lcom/brisa/local/SoundCore$Factory;->create(I)Lcom/brisa/local/SoundCore$Effect;

    move-result-object p1

    iput-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    invoke-interface {p1}, Lcom/brisa/local/SoundCore$Effect;->control()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->restore()V

    sget-object p1, Lcom/brisa/local/SoundCore$Result;->UNAVAILABLE:Lcom/brisa/local/SoundCore$Result;

    return-object p1

    .line 35
    :cond_5
    iget-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    invoke-interface {p1, p3}, Lcom/brisa/local/SoundCore$Effect;->configure(Lcom/brisa/local/SoundCore$Settings;)V

    iget-object p1, p0, Lcom/brisa/local/SoundCore$Engine;->effect:Lcom/brisa/local/SoundCore$Effect;

    invoke-interface {p1}, Lcom/brisa/local/SoundCore$Effect;->enable()V

    invoke-interface {p2}, Lcom/brisa/local/SoundCore$Port;->base()F

    move-result p1

    invoke-static {p3}, Lcom/brisa/local/SoundCore;->gain(Lcom/brisa/local/SoundCore$Settings;)F

    move-result p3

    mul-float/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/brisa/local/SoundCore$Port;->volume(F)V

    sget-object p1, Lcom/brisa/local/SoundCore$Result;->APPLIED:Lcom/brisa/local/SoundCore$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 36
    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->restore()V

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->clear()V

    sget-object p1, Lcom/brisa/local/SoundCore$Result;->UNAVAILABLE:Lcom/brisa/local/SoundCore$Result;

    return-object p1

    .line 29
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->owner:Ljava/lang/Object;

    if-ne v0, p1, :cond_7

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->restore()V

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->clear()V

    :cond_7
    invoke-interface {p2}, Lcom/brisa/local/SoundCore$Port;->base()F

    move-result p1

    invoke-interface {p2, p1}, Lcom/brisa/local/SoundCore$Port;->volume(F)V

    iget-boolean p1, p3, Lcom/brisa/local/SoundCore$Settings;->original:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/brisa/local/SoundCore$Result;->ORIGINAL:Lcom/brisa/local/SoundCore$Result;

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/brisa/local/SoundCore$Result;->PAUSED:Lcom/brisa/local/SoundCore$Result;

    :goto_1
    return-object p1
.end method

.method public owner()Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->owner:Ljava/lang/Object;

    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/brisa/local/SoundCore$Engine;->owner:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->restore()V

    invoke-direct {p0}, Lcom/brisa/local/SoundCore$Engine;->clear()V

    :cond_0
    return-void
.end method

.method public session()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/brisa/local/SoundCore$Engine;->session:I

    return v0
.end method
