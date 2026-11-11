.class public final LK/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(LK/x;LK/w;)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget v0, p2, LK/w;->a:I

    iget-object p2, p2, LK/w;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    invoke-static {v0}, LF1/i;->g(Z)V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 7
    new-instance p2, LJ/B;

    .line 8
    invoke-direct {p2, v1, v0}, LJ/B;-><init>([BI)V

    .line 9
    iget-boolean v0, p1, LK/x;->a:Z

    if-nez v0, :cond_10

    .line 10
    invoke-virtual {p2}, LJ/B;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iput-boolean v2, p0, LK/u;->a:Z

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p2, v0}, LJ/B;->g(I)I

    move-result v1

    .line 13
    invoke-virtual {p2}, LJ/B;->f()Z

    move-result v5

    .line 14
    iget-boolean v6, p1, LK/x;->b:Z

    if-nez v6, :cond_f

    if-nez v5, :cond_3

    .line 15
    iput-boolean v4, p0, LK/u;->a:Z

    return-void

    :cond_3
    if-eq v1, v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p2}, LJ/B;->f()Z

    move-result v5

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v4

    .line 17
    :goto_3
    invoke-virtual {p2}, LJ/B;->n()V

    .line 18
    iget-boolean v6, p1, LK/x;->d:Z

    if-eqz v6, :cond_e

    .line 19
    invoke-virtual {p2}, LJ/B;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 20
    iget-boolean v6, p1, LK/x;->e:Z

    if-eqz v6, :cond_6

    .line 21
    invoke-virtual {p2}, LJ/B;->n()V

    goto :goto_4

    .line 22
    :cond_6
    new-instance p1, LK/v;

    .line 23
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 24
    throw p1

    .line 25
    :cond_7
    :goto_4
    iget-boolean v6, p1, LK/x;->c:Z

    if-nez v6, :cond_d

    if-eq v1, v3, :cond_8

    .line 26
    invoke-virtual {p2}, LJ/B;->n()V

    .line 27
    :cond_8
    iget p1, p1, LK/x;->f:I

    invoke-virtual {p2, p1}, LJ/B;->o(I)V

    if-eq v1, v0, :cond_9

    if-eqz v1, :cond_9

    if-nez v5, :cond_9

    .line 28
    invoke-virtual {p2, v3}, LJ/B;->o(I)V

    :cond_9
    if-eq v1, v3, :cond_b

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    const/16 p1, 0x8

    .line 29
    invoke-virtual {p2, p1}, LJ/B;->g(I)I

    move-result p1

    goto :goto_6

    :cond_b
    :goto_5
    const/16 p1, 0xff

    :goto_6
    if-eqz p1, :cond_c

    move v2, v4

    .line 30
    :cond_c
    iput-boolean v2, p0, LK/u;->a:Z

    return-void

    .line 31
    :cond_d
    new-instance p1, LK/v;

    .line 32
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 33
    throw p1

    .line 34
    :cond_e
    new-instance p1, LK/v;

    .line 35
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 36
    throw p1

    .line 37
    :cond_f
    new-instance p1, LK/v;

    .line 38
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 39
    throw p1

    .line 40
    :cond_10
    new-instance p1, LK/v;

    .line 41
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 42
    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, LK/u;->a:Z

    return-void
.end method
