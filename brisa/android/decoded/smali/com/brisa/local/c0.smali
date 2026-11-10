.class public final Lcom/brisa/local/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/e0;


# instance fields
.field public final synthetic e:Lcom/brisa/local/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/c0;->e:Lcom/brisa/local/VideoActivity;

    return-void
.end method


# virtual methods
.method public final U(Z)V
    .locals 1

    iget-object p1, p0, Lcom/brisa/local/c0;->e:Lcom/brisa/local/VideoActivity;

    invoke-static {p1}, Lcom/brisa/local/VideoSystemControls;->refresh(Landroid/app/Activity;)V

    iget-object v0, p1, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    iget-object p1, p1, Lcom/brisa/local/VideoActivity;->k:LB/k;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l(ILG/f0;LG/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/brisa/local/c0;->e:Lcom/brisa/local/VideoActivity;

    iget-object p2, p1, Lcom/brisa/local/VideoActivity;->j:Landroid/os/Handler;

    iget-object p1, p1, Lcom/brisa/local/VideoActivity;->k:LB/k;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
