.class public final Lu1/c0;
.super Lu1/P;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lu1/Y;


# direct methods
.method public constructor <init>(Lu1/Y;)V
    .locals 0

    iput-object p1, p0, Lu1/c0;->g:Lu1/Y;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    iget-object v0, p0, Lu1/c0;->g:Lu1/Y;

    invoke-virtual {v0}, Lu1/K;->g()Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu1/c0;->g:Lu1/Y;

    iget v1, v0, Lu1/Y;->h:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lu1/Y;->i:Lu1/Z;

    check-cast v0, Lu1/I0;

    iget-object v0, v0, Lu1/I0;->i:Lu1/x0;

    iget v1, v0, Lu1/x0;->c:I

    invoke-static {p1, v1}, LF1/i;->i(II)V

    iget-object v0, v0, Lu1/x0;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lu1/Y;->i:Lu1/Z;

    check-cast v0, Lu1/I0;

    iget-object v0, v0, Lu1/I0;->i:Lu1/x0;

    iget v1, v0, Lu1/x0;->c:I

    invoke-static {p1, v1}, LF1/i;->i(II)V

    new-instance v1, Lu1/w0;

    invoke-direct {v1, v0, p1}, Lu1/w0;-><init>(Lu1/x0;I)V

    move-object p1, v1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu1/c0;->g:Lu1/Y;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
