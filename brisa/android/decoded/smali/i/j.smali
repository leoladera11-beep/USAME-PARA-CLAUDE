.class public final Li/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/Serializable;

.field public b:Li/l;

.field public c:Li/n;

.field public d:Z


# virtual methods
.method public final finalize()V
    .locals 4

    iget-object v0, p0, Li/j;->b:Li/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li/l;->f:Li/k;

    invoke-virtual {v0}, Li/i;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Li/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Li/j;->a:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Li/i;->i(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Li/j;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Li/j;->c:Li/n;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li/n;->j(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
