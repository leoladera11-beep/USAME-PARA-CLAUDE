.class public final LG/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LG/u;

.field public static final c:LG/u;


# instance fields
.field public final a:LE/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget v6, v1, v4

    const/4 v7, 0x0

    xor-int/2addr v7, v5

    invoke-static {v7}, LF1/i;->o(Z)V

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    xor-int/2addr v1, v5

    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LG/u;

    invoke-direct {v1, v0}, LG/u;-><init>(Landroid/util/SparseBooleanArray;)V

    sput-object v1, LG/b0;->b:LG/u;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget v6, v1, v4

    const/4 v7, 0x0

    xor-int/2addr v7, v5

    invoke-static {v7}, LF1/i;->o(Z)V

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    xor-int/lit8 v1, v3, 0x1

    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LG/u;

    invoke-direct {v1, v0}, LG/u;-><init>(Landroid/util/SparseBooleanArray;)V

    sput-object v1, LG/b0;->c:LG/u;

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x11
        0x12
        0x15
        0x16
        0x17
        0x1c
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x13
        0x1f
        0x14
        0x18
        0x19
        0x21
        0x1a
        0x22
        0x23
        0x1b
        0x1d
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LE/b;

    invoke-direct {v0}, LE/b;-><init>()V

    iput-object v0, p0, LG/b0;->a:LE/b;

    return-void
.end method

.method public constructor <init>(LG/c0;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, LE/b;

    invoke-direct {v0}, LE/b;-><init>()V

    iput-object v0, p0, LG/b0;->a:LE/b;

    .line 5
    iget-object p1, p1, LG/c0;->a:LG/u;

    .line 6
    invoke-virtual {v0, p1}, LE/b;->b(LG/u;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, LG/b0;->a:LE/b;

    invoke-virtual {v0, p1}, LE/b;->a(I)V

    return-void
.end method

.method public final b(IZ)V
    .locals 1

    iget-object v0, p0, LG/b0;->a:LE/b;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, LE/b;->a(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c()LG/c0;
    .locals 2

    new-instance v0, LG/c0;

    iget-object v1, p0, LG/b0;->a:LE/b;

    invoke-virtual {v1}, LE/b;->e()LG/u;

    move-result-object v1

    invoke-direct {v0, v1}, LG/c0;-><init>(LG/u;)V

    return-object v0
.end method

.method public final d(IZ)V
    .locals 1

    iget-object v0, p0, LG/b0;->a:LE/b;

    if-eqz p2, :cond_0

    iget-boolean p2, v0, LE/b;->f:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, LF1/i;->o(Z)V

    iget-object p2, v0, LE/b;->g:Ljava/lang/Object;

    check-cast p2, Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
