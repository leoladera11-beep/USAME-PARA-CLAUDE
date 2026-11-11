.class public final synthetic LJ/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LJ/o;->e:I

    iput-object p1, p0, LJ/o;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p0, LJ/o;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/o;->f:Ljava/lang/Object;

    check-cast v0, LM0/q0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, LM0/q0;->e:LM0/t0;

    const/4 v0, 0x0

    iget-object v2, p1, LM0/t0;->n:LM0/s0;

    invoke-virtual {p1, v0, v2}, LM0/t0;->a1(ZLM0/s0;)V

    :cond_0
    return v1

    :pswitch_0
    iget-object v0, p0, LJ/o;->f:Ljava/lang/Object;

    check-cast v0, LN0/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, LN0/O;->O()V

    :cond_1
    return v1

    :pswitch_1
    iget-object v0, p0, LJ/o;->f:Ljava/lang/Object;

    check-cast v0, LJ/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, v0, LJ/K;->j:LJ/J;

    invoke-virtual {p1}, LJ/J;->a()V

    goto :goto_0

    :cond_3
    iget-object p1, v0, LJ/K;->i:LJ/I;

    invoke-virtual {p1}, LJ/I;->a()V

    goto :goto_0

    :cond_4
    iget-object p1, v0, LJ/K;->h:LJ/H;

    invoke-virtual {p1}, LJ/H;->a()V

    goto :goto_0

    :cond_5
    iget-object p1, v0, LJ/K;->g:LJ/G;

    invoke-virtual {p1}, LJ/G;->a()V

    :goto_0
    return v1

    :pswitch_2
    iget-object p1, p0, LJ/o;->f:Ljava/lang/Object;

    check-cast p1, LJ/t;

    iget-object v0, p1, LJ/t;->c:LJ/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, LJ/t;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ/s;

    iget-boolean v4, v2, LJ/s;->d:Z

    if-nez v4, :cond_7

    iget-boolean v4, v2, LJ/s;->c:Z

    if-eqz v4, :cond_7

    iget-object v4, v2, LJ/s;->b:LE/b;

    invoke-virtual {v4}, LE/b;->e()LG/u;

    move-result-object v4

    new-instance v5, LE/b;

    invoke-direct {v5}, LE/b;-><init>()V

    iput-object v5, v2, LJ/s;->b:LE/b;

    const/4 v5, 0x0

    iput-boolean v5, v2, LJ/s;->c:Z

    iget-object v2, v2, LJ/s;->a:Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, LJ/r;->c(Ljava/lang/Object;LG/u;)V

    :cond_7
    iget-object v2, p1, LJ/t;->b:LJ/O;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_8
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
