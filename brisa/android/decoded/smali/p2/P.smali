.class public final Lp2/P;
.super Lp2/O;
.source "SourceFile"


# instance fields
.field public m:Z


# virtual methods
.method public final bridge synthetic f()V
    .locals 0

    invoke-virtual {p0}, Lp2/P;->p()V

    return-void
.end method

.method public final bridge synthetic n()Lp2/O;
    .locals 0

    invoke-virtual {p0}, Lp2/P;->p()V

    return-object p0
.end method

.method public final p()V
    .locals 1

    invoke-super {p0}, Lp2/O;->n()Lp2/O;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/P;->m:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lp2/P;->m:Z

    if-eqz v0, :cond_0

    const-string v1, "<!"

    goto :goto_0

    :cond_0
    const-string v1, "<?"

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ">"

    goto :goto_1

    :cond_1
    const-string v0, "?>"

    :goto_1
    iget-object v2, p0, Lp2/O;->g:Lo2/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo2/b;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp2/O;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp2/O;->g:Lo2/b;

    invoke-virtual {v1}, Lo2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp2/O;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
