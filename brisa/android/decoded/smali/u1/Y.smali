.class public final Lu1/Y;
.super Lu1/b0;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lu1/Z;


# direct methods
.method public synthetic constructor <init>(Lu1/Z;I)V
    .locals 0

    iput p2, p0, Lu1/Y;->h:I

    iput-object p1, p0, Lu1/Y;->i:Lu1/Z;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I[Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lu1/b0;->a()Lu1/P;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu1/P;->b(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lu1/Y;->h:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lu1/Y;->i:Lu1/Z;

    check-cast v0, Lu1/I0;

    invoke-virtual {v0, p1}, Lu1/Z;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    instance-of v0, p1, Lu1/w0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lu1/w0;

    invoke-virtual {p1}, Lu1/w0;->a()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lu1/w0;->a:Ljava/lang/Object;

    iget-object v2, p0, Lu1/Y;->i:Lu1/Z;

    check-cast v2, Lu1/I0;

    iget-object v2, v2, Lu1/I0;->i:Lu1/x0;

    invoke-virtual {v2, v0}, Lu1/x0;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lu1/w0;->a()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lu1/Y;->h:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lu1/Y;->i:Lu1/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lu1/R0;
    .locals 2

    invoke-virtual {p0}, Lu1/b0;->a()Lu1/P;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu1/P;->m(I)Lu1/N;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lu1/Y;->h:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lu1/b0;->hashCode()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lu1/Y;->i:Lu1/Z;

    invoke-virtual {v0}, Lu1/Z;->hashCode()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Lu1/P;
    .locals 1

    new-instance v0, Lu1/c0;

    invoke-direct {v0, p0}, Lu1/c0;-><init>(Lu1/Y;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/Y;->h:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lu1/Y;->i:Lu1/Z;

    check-cast v0, Lu1/I0;

    iget-object v0, v0, Lu1/I0;->i:Lu1/x0;

    iget v0, v0, Lu1/x0;->c:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lu1/Y;->i:Lu1/Z;

    invoke-virtual {v0}, Lu1/Z;->i()Lu1/b0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
