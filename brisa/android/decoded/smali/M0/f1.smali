.class public final synthetic LM0/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:LM0/t1;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/os/ResultReceiver;


# direct methods
.method public synthetic constructor <init>(LM0/t1;LM0/i2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/f1;->a:LM0/t1;

    iput-object p3, p0, LM0/f1;->b:Landroid/os/Bundle;

    iput-object p4, p0, LM0/f1;->c:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 3

    iget-object v0, p0, LM0/f1;->a:LM0/t1;

    iget-object v0, v0, LM0/t1;->i:LM0/X0;

    iget-object v1, p0, LM0/f1;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0, p1}, LM0/X0;->p(LM0/N0;)Lz1/x;

    move-result-object p1

    iget-object v0, p0, LM0/f1;->c:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    new-instance v1, LH/i;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v0, v2}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v0, Lz1/s;->e:Lz1/s;

    invoke-virtual {p1, v1, v0}, Lz1/x;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method
