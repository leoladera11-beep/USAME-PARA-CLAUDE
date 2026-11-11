.class public final Lu1/J0;
.super Lu1/b0;
.source "SourceFile"


# static fields
.field public static final m:[Ljava/lang/Object;

.field public static final n:Lu1/J0;


# instance fields
.field public final transient h:[Ljava/lang/Object;

.field public final transient i:I

.field public final transient j:[Ljava/lang/Object;

.field public final transient k:I

.field public final transient l:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    sput-object v2, Lu1/J0;->m:[Ljava/lang/Object;

    new-instance v1, Lu1/J0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    invoke-direct/range {v1 .. v6}, Lu1/J0;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v1, Lu1/J0;->n:Lu1/J0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lu1/J0;->h:[Ljava/lang/Object;

    iput p2, p0, Lu1/J0;->i:I

    iput-object p3, p0, Lu1/J0;->j:[Ljava/lang/Object;

    iput p4, p0, Lu1/J0;->k:I

    iput p5, p0, Lu1/J0;->l:I

    return-void
.end method


# virtual methods
.method public final b(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lu1/J0;->h:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lu1/J0;->l:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lu1/J0;->j:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lu1/s;->s(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lu1/J0;->k:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu1/J0;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lu1/J0;->l:I

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lu1/J0;->i:I

    return v0
.end method

.method public final l()Lu1/P;
    .locals 2

    iget-object v0, p0, Lu1/J0;->h:[Ljava/lang/Object;

    iget v1, p0, Lu1/J0;->l:I

    invoke-static {v1, v0}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/J0;->l:I

    return v0
.end method
