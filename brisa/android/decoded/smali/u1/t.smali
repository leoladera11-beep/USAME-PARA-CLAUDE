.class public final Lu1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lu1/w;

.field public final synthetic i:I

.field public final synthetic j:Lu1/w;


# direct methods
.method public constructor <init>(Lu1/w;I)V
    .locals 0

    iput p2, p0, Lu1/t;->i:I

    iput-object p1, p0, Lu1/t;->j:Lu1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/t;->h:Lu1/w;

    iget p2, p1, Lu1/w;->i:I

    iput p2, p0, Lu1/t;->e:I

    invoke-virtual {p1}, Lu1/w;->isEmpty()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lu1/t;->f:I

    iput p2, p0, Lu1/t;->g:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lu1/t;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lu1/t;->h:Lu1/w;

    iget v1, v0, Lu1/w;->i:I

    iget v2, p0, Lu1/t;->e:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lu1/t;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lu1/t;->f:I

    iput v1, p0, Lu1/t;->g:I

    iget v2, p0, Lu1/t;->i:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lu1/t;->j:Lu1/w;

    invoke-virtual {v2}, Lu1/w;->k()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    goto :goto_0

    :pswitch_0
    new-instance v2, Lu1/v;

    iget-object v3, p0, Lu1/t;->j:Lu1/w;

    invoke-direct {v2, v3, v1}, Lu1/v;-><init>(Lu1/w;I)V

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lu1/t;->j:Lu1/w;

    invoke-virtual {v2}, Lu1/w;->j()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    iget v2, p0, Lu1/t;->f:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lu1/w;->j:I

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    iput v2, p0, Lu1/t;->f:I

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lu1/t;->h:Lu1/w;

    iget v1, v0, Lu1/w;->i:I

    iget v2, p0, Lu1/t;->e:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lu1/t;->g:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "no calls to next() since the last call to remove()"

    invoke-static {v3, v1}, LF1/i;->n(Ljava/lang/String;Z)V

    iget v1, p0, Lu1/t;->e:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lu1/t;->e:I

    iget v1, p0, Lu1/t;->g:I

    invoke-virtual {v0}, Lu1/w;->j()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lu1/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lu1/t;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lu1/t;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lu1/t;->g:I

    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
