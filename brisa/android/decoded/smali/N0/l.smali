.class public final LN0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LN0/m;


# direct methods
.method public constructor <init>(LN0/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/l;->e:LN0/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LN0/l;->e:LN0/m;

    iget-object v1, v0, LN0/m;->g:LM0/y1;

    iget-object v1, v1, LM0/y1;->e:Lh/e;

    iget-object v0, v0, LN0/m;->e:LN0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
