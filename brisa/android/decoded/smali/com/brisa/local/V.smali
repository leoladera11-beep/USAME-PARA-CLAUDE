.class public final synthetic Lcom/brisa/local/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/n;


# virtual methods
.method public final a(Lb2/g;)LW1/v;
    .locals 3

    iget-object v0, p1, Lb2/g;->e:LM0/r0;

    iget-object v1, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LW1/m;

    iget-boolean v2, v1, LW1/m;->i:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, LW1/m;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, LW1/m;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, LW1/m;->e:I

    const/16 v2, 0x1bb

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lb2/g;->b(LM0/r0;)LW1/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Solo se admiten enlaces HTTPS p\u00fablicos."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
