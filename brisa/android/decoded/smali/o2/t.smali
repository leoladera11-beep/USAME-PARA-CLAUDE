.class public final Lo2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lo2/t;


# instance fields
.field public final a:Ln2/a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo2/t;

    invoke-direct {v0}, Lo2/t;-><init>()V

    sput-object v0, Lo2/t;->f:Lo2/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lo2/w;->d:Ln2/a;

    iput-object v0, p0, Lo2/t;->a:Ln2/a;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo2/t;->b:I

    .line 4
    iput v0, p0, Lo2/t;->c:I

    .line 5
    iput v0, p0, Lo2/t;->d:I

    .line 6
    iput v0, p0, Lo2/t;->e:I

    return-void
.end method

.method public constructor <init>(Ln2/a;IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lo2/t;->a:Ln2/a;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    .line 9
    iput p2, p0, Lo2/t;->b:I

    .line 10
    iput p3, p0, Lo2/t;->c:I

    .line 11
    iput p4, p0, Lo2/t;->d:I

    .line 12
    iput p5, p0, Lo2/t;->e:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute range positions must be non-negative"

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

    if-eqz p1, :cond_5

    const-class v2, Lo2/t;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo2/t;

    iget v2, p0, Lo2/t;->b:I

    iget v3, p1, Lo2/t;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lo2/t;->c:I

    iget v3, p1, Lo2/t;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lo2/t;->d:I

    iget v3, p1, Lo2/t;->d:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lo2/t;->e:I

    iget p1, p1, Lo2/t;->e:I

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lo2/t;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo2/t;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo2/t;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo2/t;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo2/t;->a:Ln2/a;

    iget v2, p0, Lo2/t;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v4, Lo2/w;

    iget v5, p0, Lo2/t;->c:I

    invoke-direct {v4, v1, v2, v5}, Lo2/w;-><init>(Ln2/a;II)V

    goto :goto_0

    :cond_0
    sget-object v4, Lo2/w;->g:Lo2/w;

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_1

    new-instance v2, Lo2/w;

    iget v3, p0, Lo2/t;->d:I

    iget v4, p0, Lo2/t;->e:I

    invoke-direct {v2, v1, v3, v4}, Lo2/w;-><init>(Ln2/a;II)V

    goto :goto_1

    :cond_1
    sget-object v2, Lo2/w;->g:Lo2/w;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
