.class public final Lp0/c;
.super Lp0/i;
.source "SourceFile"

# interfaces
.implements Lk0/a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:[Lp0/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ[Lp0/i;)V
    .locals 4

    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lp0/i;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gt p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    iput-object p1, p0, Lp0/c;->b:Ljava/lang/String;

    iput p2, p0, Lp0/c;->c:I

    iput p3, p0, Lp0/c;->d:I

    array-length p1, p8

    move p2, v0

    :goto_1
    const/4 p3, 0x0

    if-ge p2, p1, :cond_2

    aget-object v1, p8, p2

    instance-of v2, v1, Lp0/n;

    if-eqz v2, :cond_1

    check-cast v1, Lp0/n;

    iget-object v2, v1, Lp0/i;->a:Ljava/lang/String;

    iget-object v1, v1, Lp0/n;->c:Lu1/P;

    const-string v3, "TIT2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move-object p1, p3

    :goto_2
    if-eqz p1, :cond_3

    new-instance p2, LG/B;

    invoke-direct {p2, p3, p1}, LG/B;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-wide p4, p0, Lp0/c;->e:J

    iput-wide p6, p0, Lp0/c;->f:J

    iput-object p8, p0, Lp0/c;->g:[Lp0/i;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lp0/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lp0/c;

    iget v2, p0, Lp0/c;->c:I

    iget v3, p1, Lp0/c;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lp0/c;->d:I

    iget v3, p1, Lp0/c;->d:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lp0/c;->e:J

    iget-wide v4, p1, Lp0/c;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lp0/c;->f:J

    iget-wide v4, p1, Lp0/c;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lp0/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lp0/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lp0/c;->g:[Lp0/i;

    iget-object p1, p1, Lp0/c;->g:[Lp0/i;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x20f

    iget v1, p0, Lp0/c;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp0/c;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp0/c;->e:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp0/c;->f:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp0/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
