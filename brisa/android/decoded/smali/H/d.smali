.class public final synthetic LH/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:LH/f;


# direct methods
.method public synthetic constructor <init>(LH/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/d;->a:LH/f;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 4

    iget-object v0, p0, LH/d;->a:LH/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x3

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_0

    const-string v0, "AudioFocusManager"

    const-string v1, "Unknown focus change type: "

    invoke-static {v1, v0, p1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, LH/f;->c(I)V

    invoke-virtual {v0, v3}, LH/f;->b(I)V

    return-void

    :cond_1
    invoke-virtual {v0, v1}, LH/f;->b(I)V

    invoke-virtual {v0}, LH/f;->a()V

    invoke-virtual {v0, v3}, LH/f;->c(I)V

    return-void

    :cond_2
    if-eq p1, v2, :cond_4

    iget-object p1, v0, LH/f;->d:LG/e;

    if-eqz p1, :cond_3

    iget p1, p1, LG/e;->a:I

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, LH/f;->c(I)V

    return-void

    :cond_4
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LH/f;->b(I)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, LH/f;->c(I)V

    return-void
.end method
