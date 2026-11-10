.class public final synthetic Lcom/brisa/local/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/brisa/local/VideoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/a0;->a:Lcom/brisa/local/VideoActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 2

    iget-object v0, p0, Lcom/brisa/local/a0;->a:Lcom/brisa/local/VideoActivity;

    iget-boolean v1, v0, Lcom/brisa/local/VideoActivity;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brisa/local/VideoActivity;->e(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/brisa/local/VideoActivity;->f()V

    return-void
.end method
