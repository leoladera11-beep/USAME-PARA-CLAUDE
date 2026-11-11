.class public final synthetic LQ/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:LQ/v;

.field public final synthetic b:La1/g;


# direct methods
.method public synthetic constructor <init>(LQ/v;La1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/u;->a:LQ/v;

    iput-object p2, p0, LQ/u;->b:La1/g;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    iget-object p1, p0, LQ/u;->a:LQ/v;

    iget-object p4, p0, LQ/u;->b:La1/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p4, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LQ/f;

    iget-object p1, p1, LQ/f;->x:LM0/p1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
