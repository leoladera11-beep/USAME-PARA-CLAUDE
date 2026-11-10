.class public final LG/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field public g:LG/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->h:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->i:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->j:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->k:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->l:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->m:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/n0;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LG/c;->f:LG/c;

    iput-object v0, p0, LG/n0;->g:LG/c;

    return-void
.end method


# virtual methods
.method public final a(II)J
    .locals 2

    iget-object v0, p0, LG/n0;->g:LG/c;

    invoke-virtual {v0, p1}, LG/c;->a(I)LG/a;

    move-result-object p1

    iget v0, p1, LG/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, LG/a;->g:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final b(J)I
    .locals 11

    iget-object v0, p0, LG/n0;->g:LG/c;

    iget-wide v1, p0, LG/n0;->d:J

    iget v3, v0, LG/c;->a:I

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v8

    if-eqz v6, :cond_0

    cmp-long v8, p1, v1

    if-ltz v8, :cond_0

    goto :goto_2

    :cond_0
    iget v8, v0, LG/c;->d:I

    :goto_0
    if-ge v8, v3, :cond_3

    invoke-virtual {v0, v8}, LG/c;->a(I)LG/a;

    move-result-object v9

    iget-wide v9, v9, LG/a;->a:J

    cmp-long v9, v9, v4

    if-eqz v9, :cond_1

    invoke-virtual {v0, v8}, LG/c;->a(I)LG/a;

    move-result-object v9

    iget-wide v9, v9, LG/a;->a:J

    cmp-long v9, v9, p1

    if-lez v9, :cond_2

    :cond_1
    invoke-virtual {v0, v8}, LG/c;->a(I)LG/a;

    move-result-object v9

    iget v10, v9, LG/a;->b:I

    if-eq v10, v7, :cond_3

    invoke-virtual {v9, v7}, LG/a;->a(I)I

    move-result v9

    if-ge v9, v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v8, v3, :cond_5

    if-eqz v6, :cond_4

    invoke-virtual {v0, v8}, LG/c;->a(I)LG/a;

    move-result-object p1

    iget-wide p1, p1, LG/a;->a:J

    cmp-long p1, p1, v1

    if-gtz p1, :cond_5

    :cond_4
    return v8

    :cond_5
    :goto_2
    return v7
.end method

.method public final c(J)I
    .locals 14

    iget-object v0, p0, LG/n0;->g:LG/c;

    iget-wide v1, p0, LG/n0;->d:J

    iget v3, v0, LG/c;->a:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v6, 0x0

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v9, -0x1

    if-ne v4, v3, :cond_0

    invoke-virtual {v0, v4}, LG/c;->a(I)LG/a;

    move-result-object v3

    iget-boolean v10, v3, LG/a;->l:Z

    if-eqz v10, :cond_0

    iget-wide v10, v3, LG/a;->a:J

    cmp-long v10, v10, v7

    if-nez v10, :cond_0

    iget v3, v3, LG/a;->b:I

    if-ne v3, v9, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_5

    cmp-long v3, p1, v7

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v4}, LG/c;->a(I)LG/a;

    move-result-object v3

    iget-wide v10, v3, LG/a;->a:J

    cmp-long v12, v10, v7

    if-nez v12, :cond_3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v1, v12

    if-eqz v12, :cond_4

    iget-boolean v12, v3, LG/a;->l:Z

    if-eqz v12, :cond_2

    cmp-long v10, v10, v7

    if-nez v10, :cond_2

    iget v3, v3, LG/a;->b:I

    if-ne v3, v9, :cond_2

    goto :goto_2

    :cond_2
    cmp-long v3, p1, v1

    if-gez v3, :cond_5

    goto :goto_2

    :cond_3
    cmp-long v3, p1, v10

    if-gez v3, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-ltz v4, :cond_9

    invoke-virtual {v0, v4}, LG/c;->a(I)LG/a;

    move-result-object v0

    iget v1, v0, LG/a;->b:I

    if-ne v1, v9, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    if-ge v6, v1, :cond_9

    iget-object v2, v0, LG/a;->f:[I

    aget v2, v2, v6

    if-eqz v2, :cond_8

    if-ne v2, v5, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return v4

    :cond_9
    return v9
.end method

.method public final d(I)J
    .locals 2

    iget-object v0, p0, LG/n0;->g:LG/c;

    invoke-virtual {v0, p1}, LG/c;->a(I)LG/a;

    move-result-object p1

    iget-wide v0, p1, LG/a;->a:J

    return-wide v0
.end method

.method public final e(II)I
    .locals 2

    iget-object v0, p0, LG/n0;->g:LG/c;

    invoke-virtual {v0, p1}, LG/c;->a(I)LG/a;

    move-result-object p1

    iget v0, p1, LG/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, LG/a;->f:[I

    aget p1, p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, LG/n0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LG/n0;

    iget-object v2, p0, LG/n0;->a:Ljava/lang/Object;

    iget-object v3, p1, LG/n0;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LG/n0;->b:Ljava/lang/Object;

    iget-object v3, p1, LG/n0;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, LG/n0;->c:I

    iget v3, p1, LG/n0;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, LG/n0;->d:J

    iget-wide v4, p1, LG/n0;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, LG/n0;->e:J

    iget-wide v4, p1, LG/n0;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, LG/n0;->f:Z

    iget-boolean v3, p1, LG/n0;->f:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, LG/n0;->g:LG/c;

    iget-object p1, p1, LG/n0;->g:LG/c;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f(I)I
    .locals 1

    iget-object v0, p0, LG/n0;->g:LG/c;

    invoke-virtual {v0, p1}, LG/c;->a(I)LG/a;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, LG/a;->a(I)I

    move-result p1

    return p1
.end method

.method public final g(I)Z
    .locals 5

    iget-object v0, p0, LG/n0;->g:LG/c;

    iget v1, v0, LG/c;->a:I

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, p1}, LG/c;->a(I)LG/a;

    move-result-object p1

    iget-boolean v0, p1, LG/a;->l:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, LG/a;->a:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget p1, p1, LG/a;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, LG/n0;->g:LG/c;

    invoke-virtual {v0, p1}, LG/c;->a(I)LG/a;

    move-result-object p1

    iget-boolean p1, p1, LG/a;->k:Z

    return p1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, LG/n0;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, LG/n0;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, LG/n0;->c:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, LG/n0;->d:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, LG/n0;->e:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, LG/n0;->f:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, LG/n0;->g:LG/c;

    invoke-virtual {v0}, LG/c;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V
    .locals 0

    iput-object p1, p0, LG/n0;->a:Ljava/lang/Object;

    iput-object p2, p0, LG/n0;->b:Ljava/lang/Object;

    iput p3, p0, LG/n0;->c:I

    iput-wide p4, p0, LG/n0;->d:J

    iput-wide p6, p0, LG/n0;->e:J

    iput-object p8, p0, LG/n0;->g:LG/c;

    iput-boolean p9, p0, LG/n0;->f:Z

    return-void
.end method
