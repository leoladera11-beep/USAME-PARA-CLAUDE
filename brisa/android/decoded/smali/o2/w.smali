.class public final Lo2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ln2/a;

.field public static final e:[I

.field public static final f:Lo2/u;

.field public static final g:Lo2/w;


# instance fields
.field public final a:Ln2/a;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln2/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ln2/a;->c:[I

    iput-object v1, v0, Ln2/a;->a:[I

    sput-object v0, Lo2/w;->d:Ln2/a;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lo2/w;->e:[I

    new-instance v0, Lo2/u;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lo2/u;-><init>(III)V

    sput-object v0, Lo2/w;->f:Lo2/u;

    new-instance v0, Lo2/w;

    invoke-direct {v0}, Lo2/w;-><init>()V

    sput-object v0, Lo2/w;->g:Lo2/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lo2/w;->d:Ln2/a;

    iput-object v0, p0, Lo2/w;->a:Ln2/a;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo2/w;->b:I

    .line 4
    iput v0, p0, Lo2/w;->c:I

    return-void
.end method

.method public constructor <init>(Ln2/a;II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo2/w;->a:Ln2/a;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 7
    iput p2, p0, Lo2/w;->b:I

    .line 8
    iput p3, p0, Lo2/w;->c:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Range positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lo2/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo2/w;

    iget v2, p0, Lo2/w;->b:I

    iget v3, p1, Lo2/w;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo2/w;->c:I

    iget p1, p1, Lo2/w;->c:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lo2/w;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo2/w;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo2/w;->a:Ln2/a;

    const/4 v2, 0x0

    sget-object v3, Lo2/w;->f:Lo2/u;

    iget v4, p0, Lo2/w;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object v6, v3

    goto :goto_4

    :cond_0
    new-instance v6, Lo2/u;

    if-gez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v7, v5

    goto :goto_1

    :cond_1
    iget-object v7, v1, Ln2/a;->a:[I

    iget v8, v1, Ln2/a;->b:I

    invoke-static {v7, v2, v8, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v7

    if-ltz v7, :cond_2

    goto :goto_0

    :cond_2
    neg-int v7, v7

    add-int/lit8 v7, v7, -0x2

    :goto_0
    add-int/lit8 v7, v7, 0x2

    :goto_1
    if-gez v4, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    iget-object v8, v1, Ln2/a;->a:[I

    iget v9, v1, Ln2/a;->b:I

    invoke-static {v8, v2, v9, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v8

    if-ltz v8, :cond_4

    goto :goto_2

    :cond_4
    neg-int v8, v8

    add-int/lit8 v8, v8, -0x2

    :goto_2
    if-ne v8, v5, :cond_5

    add-int/lit8 v8, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v9, v1, Ln2/a;->a:[I

    aget v8, v9, v8

    sub-int v8, v4, v8

    add-int/lit8 v8, v8, 0x1

    :goto_3
    invoke-direct {v6, v4, v7, v8}, Lo2/u;-><init>(III)V

    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lo2/w;->c:I

    if-ne v4, v5, :cond_6

    goto :goto_9

    :cond_6
    new-instance v3, Lo2/u;

    if-gez v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v5

    goto :goto_6

    :cond_7
    iget-object v6, v1, Ln2/a;->a:[I

    iget v7, v1, Ln2/a;->b:I

    invoke-static {v6, v2, v7, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v6

    if-ltz v6, :cond_8

    goto :goto_5

    :cond_8
    neg-int v6, v6

    add-int/lit8 v6, v6, -0x2

    :goto_5
    add-int/lit8 v6, v6, 0x2

    :goto_6
    if-gez v4, :cond_9

    goto :goto_8

    :cond_9
    iget-object v7, v1, Ln2/a;->a:[I

    iget v8, v1, Ln2/a;->b:I

    invoke-static {v7, v2, v8, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v2

    if-ltz v2, :cond_a

    goto :goto_7

    :cond_a
    neg-int v2, v2

    add-int/lit8 v2, v2, -0x2

    :goto_7
    if-ne v2, v5, :cond_b

    add-int/lit8 v5, v4, 0x1

    goto :goto_8

    :cond_b
    iget-object v1, v1, Ln2/a;->a:[I

    aget v1, v1, v2

    sub-int v1, v4, v1

    add-int/lit8 v5, v1, 0x1

    :goto_8
    invoke-direct {v3, v4, v6, v5}, Lo2/u;-><init>(III)V

    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
