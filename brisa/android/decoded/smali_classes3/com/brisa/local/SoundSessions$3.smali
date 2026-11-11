.class Lcom/brisa/local/SoundSessions$3;
.super Ljava/lang/Object;
.source "SoundSessions.java"

# interfaces
.implements Lcom/brisa/local/SoundCore$Port;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brisa/local/SoundSessions;->video(Landroid/app/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I

.field final synthetic val$p:LG/g0;


# direct methods
.method constructor <init>(ILG/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput p1, p0, Lcom/brisa/local/SoundSessions$3;->val$id:I

    iput-object p2, p0, Lcom/brisa/local/SoundSessions$3;->val$p:LG/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public base()F
    .locals 1

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public playing()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$3;->val$p:LG/g0;

    invoke-interface {v0}, LG/g0;->I()Z

    move-result v0

    return v0
.end method

.method public session()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/brisa/local/SoundSessions$3;->val$id:I

    return v0
.end method

.method public volume(F)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brisa/local/SoundSessions$3;->val$p:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->J0(F)V

    return-void
.end method
