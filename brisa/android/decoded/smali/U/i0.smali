.class public final LU/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/a0;


# instance fields
.field public final e:LU/a0;

.field public final f:J


# direct methods
.method public constructor <init>(LU/a0;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/i0;->e:LU/a0;

    iput-wide p2, p0, LU/i0;->f:J

    return-void
.end method


# virtual methods
.method public final j(LN0/O;LM/f;I)I
    .locals 4

    iget-object v0, p0, LU/i0;->e:LU/a0;

    invoke-interface {v0, p1, p2, p3}, LU/a0;->j(LN0/O;LM/f;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, LM/f;->k:J

    iget-wide v2, p0, LU/i0;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p2, LM/f;->k:J

    :cond_0
    return p1
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, LU/i0;->e:LU/a0;

    invoke-interface {v0}, LU/a0;->o()Z

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, LU/i0;->e:LU/a0;

    invoke-interface {v0}, LU/a0;->r()I

    move-result v0

    return v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, LU/i0;->e:LU/a0;

    invoke-interface {v0}, LU/a0;->x()V

    return-void
.end method

.method public final y(J)I
    .locals 2

    iget-wide v0, p0, LU/i0;->f:J

    sub-long/2addr p1, v0

    iget-object v0, p0, LU/i0;->e:LU/a0;

    invoke-interface {v0, p1, p2}, LU/a0;->y(J)I

    move-result p1

    return p1
.end method
