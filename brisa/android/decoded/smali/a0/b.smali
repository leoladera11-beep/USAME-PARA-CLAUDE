.class public final La0/b;
.super LN/a;
.source "SourceFile"


# instance fields
.field public A:J

.field public final x:LM/f;

.field public final y:LJ/D;

.field public z:La0/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, LN/a;-><init>(I)V

    new-instance v0, LM/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LM/f;-><init>(I)V

    iput-object v0, p0, La0/b;->x:LM/f;

    new-instance v0, LJ/D;

    invoke-direct {v0}, LJ/D;-><init>()V

    iput-object v0, p0, La0/b;->y:LJ/D;

    return-void
.end method


# virtual methods
.method public final D(LG/x;)I
    .locals 1

    const-string v0, "application/x-camera-motion"

    iget-object p1, p1, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-static {p1, v0, v0, v0}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v0, v0, v0, v0}, LN/a;->e(IIII)I

    move-result p1

    return p1
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    check-cast p2, La0/a;

    iput-object p2, p0, La0/b;->z:La0/a;

    :cond_0
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, LN/a;->l()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, La0/b;->z:La0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La0/a;->c()V

    :cond_0
    return-void
.end method

.method public final r(JZZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, La0/b;->A:J

    iget-object p1, p0, La0/b;->z:La0/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, La0/a;->c()V

    :cond_0
    return-void
.end method

.method public final z(JJ)V
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p0}, LN/a;->l()Z

    move-result p3

    if-nez p3, :cond_7

    iget-wide p3, p0, La0/b;->A:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_7

    iget-object p3, p0, La0/b;->x:LM/f;

    invoke-virtual {p3}, LM/f;->h()V

    iget-object p4, p0, LN/a;->g:LN0/O;

    invoke-virtual {p4}, LN0/O;->I()V

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p3, v0}, LN/a;->y(LN0/O;LM/f;I)I

    move-result p4

    const/4 v1, -0x4

    if-ne p4, v1, :cond_7

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, LK/f;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v1, p3, LM/f;->k:J

    iput-wide v1, p0, La0/b;->A:J

    iget-wide v3, p0, LN/a;->p:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, La0/b;->z:La0/a;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, LM/f;->k()V

    iget-object p3, p3, LM/f;->i:Ljava/nio/ByteBuffer;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/4 p3, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, La0/b;->y:LJ/D;

    invoke-virtual {v3, v1, v2}, LJ/D;->L([BI)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {v3, p3}, LJ/D;->N(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_2
    if-ge v0, p3, :cond_5

    invoke-virtual {v3}, LJ/D;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object p3, p4

    :goto_3
    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    iget-object p4, p0, La0/b;->z:La0/a;

    iget-wide v0, p0, La0/b;->A:J

    iget-wide v2, p0, LN/a;->o:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, La0/a;->a(J[F)V

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method
