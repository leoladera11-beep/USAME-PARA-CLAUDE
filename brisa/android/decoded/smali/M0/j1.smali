.class public final synthetic LM0/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:LM0/t1;

.field public final synthetic b:LM0/i2;

.field public final synthetic c:I

.field public final synthetic d:LM0/s1;


# direct methods
.method public synthetic constructor <init>(LM0/t1;LM0/i2;ILM0/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/j1;->a:LM0/t1;

    iput-object p2, p0, LM0/j1;->b:LM0/i2;

    iput p3, p0, LM0/j1;->c:I

    iput-object p4, p0, LM0/j1;->d:LM0/s1;

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 3

    iget-object v0, p0, LM0/j1;->d:LM0/s1;

    iget-object v1, p0, LM0/j1;->a:LM0/t1;

    iget-object v1, v1, LM0/t1;->f:LB/A;

    iget-object v2, p0, LM0/j1;->b:LM0/i2;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, v2}, LB/A;->M(LM0/N0;LM0/i2;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_0
    invoke-virtual {v1}, LB/A;->V()V

    iget-object v1, v1, LB/A;->g:Ljava/lang/Object;

    check-cast v1, Lh/e;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/g;

    if-eqz v1, :cond_2

    iget-object v1, v1, LM0/g;->d:LM0/j2;

    iget v2, p0, LM0/j1;->c:I

    invoke-virtual {v1, v2}, LM0/j2;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, LM0/s1;->a(LM0/N0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaSessionLegacyStub"

    invoke-static {v1, p1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
