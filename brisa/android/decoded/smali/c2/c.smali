.class public final Lc2/c;
.super Lc2/a;
.source "SourceFile"


# instance fields
.field public final h:LW1/m;

.field public i:J

.field public j:Z

.field public final synthetic k:Lc2/g;


# direct methods
.method public constructor <init>(Lc2/g;LW1/m;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc2/c;->k:Lc2/g;

    invoke-direct {p0, p1}, Lc2/a;-><init>(Lc2/g;)V

    iput-object p2, p0, Lc2/c;->h:LW1/m;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lc2/c;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc2/c;->j:Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lc2/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lc2/c;->j:Z

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

    iget-object v0, p0, Lc2/c;->k:Lc2/g;

    iget-object v0, v0, Lc2/g;->b:La2/k;

    invoke-virtual {v0}, La2/k;->k()V

    invoke-virtual {p0}, Lc2/a;->c()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->f:Z

    return-void
.end method

.method public final h(JLj2/g;)J
    .locals 9

    iget-object p1, p0, Lc2/c;->k:Lc2/g;

    iget-object p2, p1, Lc2/g;->c:Lj2/i;

    const-string v0, "sink"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lc2/a;->f:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lc2/c;->j:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lc2/c;->i:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    :cond_1
    const-string v0, "expected chunk size and optional extensions but was \""

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    invoke-interface {p2}, Lj2/i;->f()Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-interface {p2}, Lj2/i;->n()J

    move-result-wide v3

    iput-wide v3, p0, Lc2/c;->i:J

    invoke-interface {p2}, Lj2/i;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-wide v3, p0, Lc2/c;->i:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3

    const-string v3, ";"

    invoke-static {p2, v3, v4}, LS1/l;->A(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    iget-wide v7, p0, Lc2/c;->i:J

    cmp-long p2, v7, v5

    if-nez p2, :cond_4

    iput-boolean v4, p0, Lc2/c;->j:Z

    iget-object p2, p1, Lc2/g;->f:LR0/b;

    invoke-virtual {p2}, LR0/b;->k()LW1/k;

    move-result-object p2

    iput-object p2, p1, Lc2/g;->g:LW1/k;

    iget-object p2, p1, Lc2/g;->a:LW1/q;

    invoke-static {p2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object p2, p2, LW1/q;->n:LW1/b;

    iget-object v0, p1, Lc2/g;->g:LW1/k;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lc2/c;->h:LW1/m;

    invoke-static {p2, v3, v0}, Lb2/f;->b(LW1/b;LW1/m;LW1/k;)V

    invoke-virtual {p0}, Lc2/a;->c()V

    :cond_4
    iget-boolean p2, p0, Lc2/c;->j:Z

    if-nez p2, :cond_5

    :goto_1
    return-wide v1

    :cond_5
    iget-wide v3, p0, Lc2/c;->i:J

    const-wide/16 v5, 0x2000

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-super {p0, v3, v4, p3}, Lc2/a;->h(JLj2/g;)J

    move-result-wide p2

    cmp-long v0, p2, v1

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lc2/c;->i:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lc2/c;->i:J

    return-wide p2

    :cond_6
    iget-object p1, p1, Lc2/g;->b:La2/k;

    invoke-virtual {p1}, La2/k;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc2/a;->c()V

    throw p1

    :cond_7
    :try_start_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lc2/c;->i:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    new-instance p2, Ljava/net/ProtocolException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
