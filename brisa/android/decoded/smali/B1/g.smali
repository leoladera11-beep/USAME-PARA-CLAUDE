.class public final LB1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:I

.field public final synthetic h:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(LB1/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LB1/g;->e:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LB1/g;->h:Ljava/lang/Iterable;

    .line 3
    iput v0, p0, LB1/g;->f:I

    .line 4
    invoke-virtual {p1}, LB1/i;->size()I

    move-result p1

    iput p1, p0, LB1/g;->g:I

    return-void
.end method

.method public constructor <init>(Lo2/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB1/g;->e:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/g;->h:Ljava/lang/Iterable;

    .line 6
    iget p1, p1, Lo2/b;->e:I

    iput p1, p0, LB1/g;->f:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, LB1/g;->g:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, LB1/g;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB1/g;->h:Ljava/lang/Iterable;

    check-cast v0, Lo2/b;

    iget v1, v0, Lo2/b;->e:I

    iget v2, p0, LB1/g;->f:I

    if-ne v1, v2, :cond_2

    :goto_0
    iget v1, p0, LB1/g;->g:I

    iget v2, v0, Lo2/b;->e:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LB1/g;->g:I

    add-int/2addr v1, v3

    iput v1, p0, LB1/g;->g:I

    goto :goto_0

    :cond_0
    iget v1, p0, LB1/g;->g:I

    iget v0, v0, Lo2/b;->e:I

    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, LB1/g;->f:I

    iget v1, p0, LB1/g;->g:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LB1/g;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB1/g;->h:Ljava/lang/Iterable;

    check-cast v0, Lo2/b;

    iget v1, v0, Lo2/b;->e:I

    iget v2, p0, LB1/g;->f:I

    if-ne v1, v2, :cond_1

    iget v2, p0, LB1/g;->g:I

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lo2/b;->f:[Ljava/lang/String;

    aget-object v1, v1, v2

    new-instance v2, Lo2/a;

    iget-object v3, v0, Lo2/b;->g:[Ljava/lang/Object;

    iget v4, p0, LB1/g;->g:I

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Lo2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lo2/b;)V

    iget v0, p0, LB1/g;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LB1/g;->g:I

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, LB1/g;->f:I

    iget v1, p0, LB1/g;->g:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LB1/g;->f:I

    iget-object v1, p0, LB1/g;->h:Ljava/lang/Iterable;

    check-cast v1, LB1/i;

    invoke-virtual {v1, v0}, LB1/i;->g(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, LB1/g;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB1/g;->h:Ljava/lang/Iterable;

    check-cast v0, Lo2/b;

    iget v1, p0, LB1/g;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LB1/g;->g:I

    invoke-virtual {v0, v1}, Lo2/b;->l(I)V

    iget v0, p0, LB1/g;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LB1/g;->f:I

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
