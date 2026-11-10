.class public final Lj2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lj2/s;

.field public g:Lj2/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lj2/s;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lj2/s;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lj2/s;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lj2/s;->a:[B

    .line 7
    iput p2, p0, Lj2/s;->b:I

    .line 8
    iput p3, p0, Lj2/s;->c:I

    .line 9
    iput-boolean p4, p0, Lj2/s;->d:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lj2/s;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lj2/s;
    .locals 4

    iget-object v0, p0, Lj2/s;->f:Lj2/s;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lj2/s;->g:Lj2/s;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lj2/s;->f:Lj2/s;

    iput-object v3, v2, Lj2/s;->f:Lj2/s;

    iget-object v2, p0, Lj2/s;->f:Lj2/s;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lj2/s;->g:Lj2/s;

    iput-object v3, v2, Lj2/s;->g:Lj2/s;

    iput-object v1, p0, Lj2/s;->f:Lj2/s;

    iput-object v1, p0, Lj2/s;->g:Lj2/s;

    return-object v0
.end method

.method public final b(Lj2/s;)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lj2/s;->g:Lj2/s;

    iget-object v0, p0, Lj2/s;->f:Lj2/s;

    iput-object v0, p1, Lj2/s;->f:Lj2/s;

    iget-object v0, p0, Lj2/s;->f:Lj2/s;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lj2/s;->g:Lj2/s;

    iput-object p1, p0, Lj2/s;->f:Lj2/s;

    return-void
.end method

.method public final c()Lj2/s;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/s;->d:Z

    new-instance v1, Lj2/s;

    iget v2, p0, Lj2/s;->b:I

    iget v3, p0, Lj2/s;->c:I

    iget-object v4, p0, Lj2/s;->a:[B

    invoke-direct {v1, v4, v2, v3, v0}, Lj2/s;-><init>([BIIZ)V

    return-object v1
.end method

.method public final d(Lj2/s;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lj2/s;->a:[B

    iget-boolean v1, p1, Lj2/s;->e:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lj2/s;->c:I

    add-int v2, v1, p2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    iget-boolean v4, p1, Lj2/s;->d:Z

    if-nez v4, :cond_1

    iget v4, p1, Lj2/s;->b:I

    sub-int/2addr v2, v4

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, v4, v1, v0, v0}, LF1/g;->p(III[B[B)V

    iget v1, p1, Lj2/s;->c:I

    iget v3, p1, Lj2/s;->b:I

    sub-int/2addr v1, v3

    iput v1, p1, Lj2/s;->c:I

    iput v2, p1, Lj2/s;->b:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget v1, p1, Lj2/s;->c:I

    iget v2, p0, Lj2/s;->b:I

    add-int v3, v2, p2

    iget-object v4, p0, Lj2/s;->a:[B

    invoke-static {v1, v2, v3, v4, v0}, LF1/g;->p(III[B[B)V

    iget v0, p1, Lj2/s;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lj2/s;->c:I

    iget p1, p0, Lj2/s;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lj2/s;->b:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
