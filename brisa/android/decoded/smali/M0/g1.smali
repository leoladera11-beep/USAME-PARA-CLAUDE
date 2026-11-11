.class public final synthetic LM0/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:LM0/t1;

.field public final synthetic b:I

.field public final synthetic c:LM0/s1;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(LM0/t1;ILM0/s1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/g1;->a:LM0/t1;

    iput p2, p0, LM0/g1;->b:I

    iput-object p3, p0, LM0/g1;->c:LM0/s1;

    iput-boolean p4, p0, LM0/g1;->d:Z

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 6

    iget-object v0, p0, LM0/g1;->c:LM0/s1;

    iget-object v1, p0, LM0/g1;->a:LM0/t1;

    iget-object v2, v1, LM0/t1;->i:LM0/X0;

    iget-object v1, v1, LM0/t1;->f:LB/A;

    iget v3, p0, LM0/g1;->b:I

    invoke-virtual {v1, p1, v3}, LB/A;->L(LM0/N0;I)Z

    move-result v1

    const-string v4, "MediaSessionLegacyStub"

    if-nez v1, :cond_0

    const/4 p1, 0x1

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object p1, v2, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->z()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {v4, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v2, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {v2, p1}, LM0/X0;->u(LM0/N0;)LM0/N0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, LM0/s1;->a(LM0/N0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Exception in "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-boolean v0, p0, LM0/g1;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, LG/b0;

    invoke-direct {v0}, LG/b0;-><init>()V

    iget-object v1, v0, LG/b0;->a:LE/b;

    invoke-virtual {v1, v3}, LE/b;->a(I)V

    invoke-virtual {v0}, LG/b0;->c()LG/c0;

    invoke-virtual {v2, p1}, LM0/X0;->r(LM0/N0;)V

    :cond_1
    return-void
.end method
