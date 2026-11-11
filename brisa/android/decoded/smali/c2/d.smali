.class public final Lc2/d;
.super Lc2/a;
.source "SourceFile"


# instance fields
.field public h:J

.field public final synthetic i:Lc2/g;


# direct methods
.method public constructor <init>(Lc2/g;J)V
    .locals 2

    iput-object p1, p0, Lc2/d;->i:Lc2/g;

    invoke-direct {p0, p1}, Lc2/a;-><init>(Lc2/g;)V

    iput-wide p2, p0, Lc2/d;->h:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lc2/a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-boolean v0, p0, Lc2/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lc2/d;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, LX1/b;->a:[B

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0}, LX1/b;->t(Lj2/x;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lc2/d;->i:Lc2/g;

    iget-object v0, v0, Lc2/g;->b:La2/k;

    invoke-virtual {v0}, La2/k;->k()V

    invoke-virtual {p0}, Lc2/a;->c()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->f:Z

    return-void
.end method

.method public final h(JLj2/g;)J
    .locals 7

    const-string p1, "sink"

    invoke-static {p3, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lc2/a;->f:Z

    if-nez p1, :cond_3

    iget-wide p1, p0, Lc2/d;->h:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    const-wide/16 v5, 0x2000

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-super {p0, p1, p2, p3}, Lc2/a;->h(JLj2/g;)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_2

    iget-wide v2, p0, Lc2/d;->h:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lc2/d;->h:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lc2/a;->c()V

    :cond_1
    return-wide p1

    :cond_2
    iget-object p1, p0, Lc2/d;->i:Lc2/g;

    iget-object p1, p1, Lc2/g;->b:La2/k;

    invoke-virtual {p1}, La2/k;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc2/a;->c()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
