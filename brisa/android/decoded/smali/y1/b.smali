.class public final Ly1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Ly1/b;


# instance fields
.field public final e:[J

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly1/b;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Ly1/b;-><init>([JI)V

    sput-object v0, Ly1/b;->g:Ly1/b;

    return-void
.end method

.method public constructor <init>([JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/b;->e:[J

    iput p2, p0, Ly1/b;->f:I

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 3

    iget v0, p0, Ly1/b;->f:I

    invoke-static {p1, v0}, LF1/i;->i(II)V

    iget-object v0, p0, Ly1/b;->e:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Ly1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ly1/b;

    iget v0, p1, Ly1/b;->f:I

    iget v2, p0, Ly1/b;->f:I

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Ly1/b;->a(I)J

    move-result-wide v3

    invoke-virtual {p1, v0}, Ly1/b;->a(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    :goto_1
    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ly1/b;->f:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ly1/b;->e:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Le/a;->f(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Ly1/b;->f:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly1/b;->e:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v2, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
