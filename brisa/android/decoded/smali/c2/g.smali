.class public final Lc2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/e;


# instance fields
.field public final a:LW1/q;

.field public final b:La2/k;

.field public final c:Lj2/i;

.field public final d:Lj2/h;

.field public e:I

.field public final f:LR0/b;

.field public g:LW1/k;


# direct methods
.method public constructor <init>(LW1/q;La2/k;Lj2/r;Lj2/p;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/g;->a:LW1/q;

    iput-object p2, p0, Lc2/g;->b:La2/k;

    iput-object p3, p0, Lc2/g;->c:Lj2/i;

    iput-object p4, p0, Lc2/g;->d:Lj2/h;

    new-instance p1, LR0/b;

    invoke-direct {p1, p3}, LR0/b;-><init>(Lj2/i;)V

    iput-object p1, p0, Lc2/g;->f:LR0/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc2/g;->d:Lj2/h;

    invoke-interface {v0}, Lj2/h;->flush()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lc2/g;->d:Lj2/h;

    invoke-interface {v0}, Lj2/h;->flush()V

    return-void
.end method

.method public final c(LW1/v;)Lj2/x;
    .locals 8

    invoke-static {p1}, Lb2/f;->a(LW1/v;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc2/g;->i(J)Lc2/d;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, LW1/v;->j:LW1/k;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state: "

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    iget-object p1, p1, LW1/v;->e:LM0/r0;

    iget-object p1, p1, LM0/r0;->c:Ljava/lang/Object;

    check-cast p1, LW1/m;

    iget v0, p0, Lc2/g;->e:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lc2/g;->e:I

    new-instance v0, Lc2/c;

    invoke-direct {v0, p0, p1}, Lc2/c;-><init>(Lc2/g;LW1/m;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lc2/g;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1}, LX1/b;->j(LW1/v;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_4

    invoke-virtual {p0, v4, v5}, Lc2/g;->i(J)Lc2/d;

    move-result-object p1

    return-object p1

    :cond_4
    iget p1, p0, Lc2/g;->e:I

    if-ne p1, v3, :cond_5

    iput v2, p0, Lc2/g;->e:I

    iget-object p1, p0, Lc2/g;->b:La2/k;

    invoke-virtual {p1}, La2/k;->k()V

    new-instance p1, Lc2/f;

    invoke-direct {p1, p0}, Lc2/a;-><init>(Lc2/g;)V

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lc2/g;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lc2/g;->b:La2/k;

    iget-object v0, v0, La2/k;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, LX1/b;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final d(LM0/r0;J)Lj2/v;
    .locals 5

    iget-object p1, p1, LM0/r0;->e:Ljava/lang/Object;

    check-cast p1, LW1/k;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lc2/g;->e:I

    if-ne p1, v2, :cond_0

    iput v1, p0, Lc2/g;->e:I

    new-instance p1, Lc2/b;

    invoke-direct {p1, p0}, Lc2/b;-><init>(Lc2/g;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lc2/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    iget p1, p0, Lc2/g;->e:I

    if-ne p1, v2, :cond_2

    iput v1, p0, Lc2/g;->e:I

    new-instance p1, Lc2/e;

    invoke-direct {p1, p0}, Lc2/e;-><init>(Lc2/g;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lc2/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(LW1/v;)J
    .locals 2

    invoke-static {p1}, Lb2/f;->a(LW1/v;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p1, LW1/v;->j:LW1/k;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2
    invoke-static {p1}, LX1/b;->j(LW1/v;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Z)LW1/u;
    .locals 8

    iget-object v0, p0, Lc2/g;->f:LR0/b;

    iget v1, p0, Lc2/g;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lc2/g;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, LR0/b;->g:Ljava/lang/Object;

    check-cast v2, Lj2/i;

    iget-wide v4, v0, LR0/b;->f:J

    invoke-interface {v2, v4, v5}, Lj2/i;->j(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, LR0/b;->f:J

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, v0, LR0/b;->f:J

    invoke-static {v2}, Lcom/brisa/local/d0;->r(Ljava/lang/String;)LC1/e;

    move-result-object v2

    iget v4, v2, LC1/e;->f:I

    new-instance v5, LW1/u;

    invoke-direct {v5}, LW1/u;-><init>()V

    iget-object v6, v2, LC1/e;->g:Ljava/lang/Object;

    check-cast v6, LW1/r;

    iput-object v6, v5, LW1/u;->b:LW1/r;

    iput v4, v5, LW1/u;->c:I

    iget-object v2, v2, LC1/e;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v5, LW1/u;->d:Ljava/lang/String;

    invoke-virtual {v0}, LR0/b;->k()LW1/k;

    move-result-object v0

    invoke-virtual {v0}, LW1/k;->d()LZ0/i;

    move-result-object v0

    iput-object v0, v5, LW1/u;->f:LZ0/i;

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v4, v0, :cond_2

    return-object v1

    :cond_2
    if-ne v4, v0, :cond_3

    iput v3, p0, Lc2/g;->e:I

    return-object v5

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v4, :cond_4

    const/16 p1, 0xc8

    if-ge v4, p1, :cond_4

    iput v3, p0, Lc2/g;->e:I

    return-object v5

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lc2/g;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_1
    iget-object v0, p0, Lc2/g;->b:La2/k;

    iget-object v0, v0, La2/k;->b:LW1/y;

    iget-object v0, v0, LW1/y;->a:LW1/a;

    iget-object v0, v0, LW1/a;->h:LW1/m;

    const-string v2, "/..."

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v3, LW1/l;

    invoke-direct {v3}, LW1/l;-><init>()V

    invoke-virtual {v3, v0, v2}, LW1/l;->d(LW1/m;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    :catch_1
    invoke-static {v1}, LO1/d;->b(Ljava/lang/Object;)V

    const-string v0, ""

    const/4 v2, 0x0

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v4, 0xfb

    invoke-static {v0, v2, v2, v3, v4}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, LW1/l;->b:Ljava/lang/String;

    invoke-static {v0, v2, v2, v3, v4}, LW1/b;->c(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LW1/l;->c:Ljava/lang/String;

    invoke-virtual {v1}, LW1/l;->b()LW1/m;

    move-result-object v0

    iget-object v0, v0, LW1/m;->h:Ljava/lang/String;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g(LM0/r0;)V
    .locals 4

    iget-object v0, p0, Lc2/g;->b:La2/k;

    iget-object v0, v0, La2/k;->b:LW1/y;

    iget-object v0, v0, LW1/y;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, LM0/r0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LW1/m;

    iget-boolean v3, v2, LW1/m;->i:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LW1/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, LW1/m;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LM0/r0;->e:Ljava/lang/Object;

    check-cast p1, LW1/k;

    invoke-virtual {p0, p1, v0}, Lc2/g;->j(LW1/k;Ljava/lang/String;)V

    return-void
.end method

.method public final h()La2/k;
    .locals 1

    iget-object v0, p0, Lc2/g;->b:La2/k;

    return-object v0
.end method

.method public final i(J)Lc2/d;
    .locals 2

    iget v0, p0, Lc2/g;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lc2/g;->e:I

    new-instance v0, Lc2/d;

    invoke-direct {v0, p0, p1, p2}, Lc2/d;-><init>(Lc2/g;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lc2/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final j(LW1/k;Ljava/lang/String;)V
    .locals 5

    const-string v0, "requestLine"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lc2/g;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lc2/g;->d:Lj2/h;

    invoke-interface {v0, p2}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    move-result-object p2

    const-string v1, "\r\n"

    invoke-interface {p2, v1}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    invoke-virtual {p1}, LW1/k;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2}, LW1/k;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    move-result-object v3

    invoke-virtual {p1, v2}, LW1/k;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    move-result-object v3

    invoke-interface {v3, v1}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lj2/h;->m(Ljava/lang/String;)Lj2/h;

    const/4 p1, 0x1

    iput p1, p0, Lc2/g;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lc2/g;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
