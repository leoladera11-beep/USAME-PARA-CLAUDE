.class public final synthetic LP/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:LB0/b;


# direct methods
.method public synthetic constructor <init>(LB0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP/C;->a:LB0/b;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 4

    iget-object v0, p0, LP/C;->a:LB0/b;

    iget-object v1, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v1, LP/C;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, LJ/a;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, LH/i;

    const/16 v3, 0x19

    invoke-direct {v2, v0, p1, v3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
