.class public final LM0/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu1/P;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/util/List;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    iput-object p1, p0, LM0/O0;->a:Lu1/P;

    iput p2, p0, LM0/O0;->b:I

    iput-wide p3, p0, LM0/O0;->c:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LM0/O0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LM0/O0;

    iget-object v1, p0, LM0/O0;->a:Lu1/P;

    iget-object v3, p1, LM0/O0;->a:Lu1/P;

    invoke-virtual {v1, v3}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LM0/O0;->b:I

    iget v3, p1, LM0/O0;->b:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, LM0/O0;->c:J

    iget-wide v5, p1, LM0/O0;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LM0/O0;->a:Lu1/P;

    invoke-virtual {v0}, Lu1/P;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LM0/O0;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LM0/O0;->c:J

    invoke-static {v1, v2}, Le/a;->f(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
