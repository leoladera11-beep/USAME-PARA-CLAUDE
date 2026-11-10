.class public final synthetic Ln2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ln2/d;

    check-cast p2, Ljava/lang/CharSequence;

    iget-object v0, p1, Ln2/d;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, LS1/e;->r(Ljava/lang/Object;)V

    iget-boolean v0, p1, Ln2/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Ln2/d;->a:Ljava/lang/StringBuilder;

    iget-object v1, p1, Ln2/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p1, Ln2/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    iput-boolean p2, p1, Ln2/d;->c:Z

    return-void
.end method
