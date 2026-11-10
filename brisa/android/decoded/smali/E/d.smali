.class public LE/d;
.super LB/B;
.source "SourceFile"


# static fields
.field public static final d:LE/c;


# instance fields
.field public final b:Lh/k;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LE/c;-><init>(I)V

    sput-object v0, LE/d;->d:LE/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, LB/B;-><init>()V

    new-instance v0, Lh/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x28

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0xc

    if-gt v4, v3, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/2addr v4, v1

    new-array v1, v4, [I

    iput-object v1, v0, Lh/k;->e:[I

    new-array v1, v4, [Ljava/lang/Object;

    iput-object v1, v0, Lh/k;->f:[Ljava/lang/Object;

    iput-object v0, p0, LE/d;->b:Lh/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, LE/d;->c:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    iget-object v0, p0, LE/d;->b:Lh/k;

    iget v1, v0, Lh/k;->g:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_4

    iget-object v5, v0, Lh/k;->f:[Ljava/lang/Object;

    aget-object v5, v5, v3

    check-cast v5, LE/a;

    iget-object v6, v5, LE/a;->l:LZ0/d;

    invoke-virtual {v6}, LZ0/d;->a()V

    const/4 v7, 0x1

    iput-boolean v7, v6, LZ0/d;->c:Z

    iget-object v8, v5, LE/a;->n:LE/b;

    if-eqz v8, :cond_0

    invoke-virtual {v5, v8}, LE/a;->g(LB/p;)V

    :cond_0
    iget-object v9, v6, LZ0/d;->a:LE/a;

    if-eqz v9, :cond_3

    if-ne v9, v5, :cond_2

    iput-object v4, v6, LZ0/d;->a:LE/a;

    if-eqz v8, :cond_1

    iget-boolean v4, v8, LE/b;->f:Z

    :cond_1
    iput-boolean v7, v6, LZ0/d;->d:Z

    iput-boolean v2, v6, LZ0/d;->b:Z

    iput-boolean v2, v6, LZ0/d;->c:Z

    iput-boolean v2, v6, LZ0/d;->e:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v1, v0, Lh/k;->g:I

    iget-object v3, v0, Lh/k;->f:[Ljava/lang/Object;

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_5

    aput-object v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iput v2, v0, Lh/k;->g:I

    return-void
.end method

.method public final c(LE/a;)V
    .locals 8

    iget-object v0, p0, LE/d;->b:Lh/k;

    iget-object v1, v0, Lh/k;->e:[I

    iget v2, v0, Lh/k;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lh/g;->a([III)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, v0, Lh/k;->f:[Ljava/lang/Object;

    aput-object p1, v0, v1

    return-void

    :cond_0
    not-int v1, v1

    iget v2, v0, Lh/k;->g:I

    if-ge v1, v2, :cond_1

    iget-object v4, v0, Lh/k;->f:[Ljava/lang/Object;

    aget-object v5, v4, v1

    sget-object v6, Lh/k;->h:Ljava/lang/Object;

    if-ne v5, v6, :cond_1

    iget-object v0, v0, Lh/k;->e:[I

    aput v3, v0, v1

    aput-object p1, v4, v1

    return-void

    :cond_1
    iget-object v4, v0, Lh/k;->e:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v2, v4, :cond_4

    add-int/2addr v2, v5

    const/4 v4, 0x4

    mul-int/2addr v2, v4

    move v6, v4

    :goto_0
    const/16 v7, 0x20

    if-ge v6, v7, :cond_3

    shl-int v7, v5, v6

    add-int/lit8 v7, v7, -0xc

    if-gt v2, v7, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    div-int/2addr v2, v4

    new-array v4, v2, [I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v0, Lh/k;->e:[I

    array-length v7, v6

    invoke-static {v6, v3, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Lh/k;->f:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v3, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v0, Lh/k;->e:[I

    iput-object v2, v0, Lh/k;->f:[Ljava/lang/Object;

    :cond_4
    iget v2, v0, Lh/k;->g:I

    sub-int/2addr v2, v1

    if-eqz v2, :cond_5

    iget-object v4, v0, Lh/k;->e:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4, v1, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lh/k;->f:[Ljava/lang/Object;

    iget v4, v0, Lh/k;->g:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v2, v0, Lh/k;->e:[I

    aput v3, v2, v1

    iget-object v2, v0, Lh/k;->f:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget p1, v0, Lh/k;->g:I

    add-int/2addr p1, v5

    iput p1, v0, Lh/k;->g:I

    return-void
.end method
