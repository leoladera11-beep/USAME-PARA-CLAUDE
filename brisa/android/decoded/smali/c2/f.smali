.class public final Lc2/f;
.super Lc2/a;
.source "SourceFile"


# instance fields
.field public h:Z


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lc2/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lc2/f;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc2/a;->c()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->f:Z

    return-void
.end method

.method public final h(JLj2/g;)J
    .locals 2

    const-string p1, "sink"

    invoke-static {p3, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lc2/a;->f:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lc2/f;->h:Z

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p1, 0x2000

    invoke-super {p0, p1, p2, p3}, Lc2/a;->h(JLj2/g;)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc2/f;->h:Z

    invoke-virtual {p0}, Lc2/a;->c()V

    return-wide v0

    :cond_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
