.class public final Lo2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln2/a;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lo2/w;->d:Ln2/a;

    iput-object v0, p0, Lo2/v;->a:Ln2/a;

    const/4 v0, -0x1

    iput v0, p0, Lo2/v;->b:I

    iput v0, p0, Lo2/v;->c:I

    iput v0, p0, Lo2/v;->d:I

    iput v0, p0, Lo2/v;->e:I

    sget-object v0, Lo2/w;->e:[I

    iput-object v0, p0, Lo2/v;->f:[I

    return-void
.end method


# virtual methods
.method public final a()Lo2/v;
    .locals 3

    new-instance v0, Lo2/v;

    invoke-direct {v0}, Lo2/v;-><init>()V

    iget-object v1, p0, Lo2/v;->a:Ln2/a;

    iput-object v1, v0, Lo2/v;->a:Ln2/a;

    iget v1, p0, Lo2/v;->b:I

    iput v1, v0, Lo2/v;->b:I

    iget v1, p0, Lo2/v;->c:I

    iput v1, v0, Lo2/v;->c:I

    iget v1, p0, Lo2/v;->d:I

    iput v1, v0, Lo2/v;->d:I

    iget v1, p0, Lo2/v;->e:I

    iput v1, v0, Lo2/v;->e:I

    iget-object v1, p0, Lo2/v;->f:[I

    array-length v2, v1

    if-nez v2, :cond_0

    sget-object v1, Lo2/w;->e:[I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :goto_0
    iput-object v1, v0, Lo2/v;->f:[I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lo2/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo2/v;

    iget v2, p0, Lo2/v;->b:I

    iget v3, p1, Lo2/v;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo2/v;->c:I

    iget v3, p1, Lo2/v;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo2/v;->d:I

    iget v3, p1, Lo2/v;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo2/v;->e:I

    iget v3, p1, Lo2/v;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo2/v;->f:[I

    iget-object p1, p1, Lo2/v;->f:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lo2/v;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lo2/v;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lo2/v;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lo2/v;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo2/v;->f:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
