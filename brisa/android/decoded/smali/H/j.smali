.class public final LH/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu1/P;

.field public final b:Ljava/util/ArrayList;

.field public c:[Ljava/nio/ByteBuffer;

.field public d:Z


# direct methods
.method public constructor <init>(Lu1/P;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/j;->a:Lu1/P;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LH/j;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    sget-object v0, LH/k;->e:LH/k;

    iput-boolean p1, p0, LH/j;->d:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, LH/j;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LH/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, LH/j;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH/o;

    invoke-interface {v0}, LH/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, LH/j;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, LH/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d(Ljava/nio/ByteBuffer;)V
    .locals 9

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    invoke-virtual {p0}, LH/j;->a()I

    move-result v4

    if-gt v3, v4, :cond_7

    iget-object v4, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v4, p0, LH/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH/o;

    invoke-interface {v5}, LH/o;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, LH/j;->a()I

    move-result v5

    if-ge v3, v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH/o;

    invoke-interface {v4}, LH/o;->d()V

    goto :goto_5

    :cond_1
    if-lez v3, :cond_2

    iget-object v4, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    aget-object v4, v4, v6

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p1

    goto :goto_2

    :cond_3
    sget-object v4, LH/o;->a:Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v4}, LH/o;->g(Ljava/nio/ByteBuffer;)V

    iget-object v8, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, LH/o;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gtz v4, :cond_5

    iget-object v4, p0, LH/j;->c:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v0

    :goto_4
    or-int/2addr v2, v4

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LH/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LH/j;

    iget-object v1, p0, LH/j;->a:Lu1/P;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    iget-object v4, p1, LH/j;->a:Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, LH/j;->a:Lu1/P;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LH/j;->a:Lu1/P;

    invoke-virtual {v0}, Lu1/P;->hashCode()I

    move-result v0

    return v0
.end method
