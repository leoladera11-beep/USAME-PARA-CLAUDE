.class public final Lj2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/x;


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj2/d;->e:I

    iput-object p1, p0, Lj2/d;->f:Ljava/lang/Object;

    iput-object p2, p0, Lj2/d;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget v0, p0, Lj2/d;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj2/d;->g:Ljava/lang/Object;

    check-cast v0, Lj2/z;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lj2/d;->f:Ljava/lang/Object;

    check-cast v0, Lj2/w;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 3

    iget v0, p0, Lj2/d;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj2/d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj2/d;->f:Ljava/lang/Object;

    check-cast v0, Lj2/w;

    iget-object v1, p0, Lj2/d;->g:Ljava/lang/Object;

    check-cast v1, Lj2/d;

    invoke-virtual {v0}, Lj2/e;->h()V

    :try_start_0
    invoke-virtual {v1}, Lj2/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lj2/e;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj2/w;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lj2/e;->i()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lj2/w;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lj2/e;->i()Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(JLj2/g;)J
    .locals 4

    iget p1, p0, Lj2/d;->e:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "sink"

    invoke-static {p3, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lj2/d;->g:Ljava/lang/Object;

    check-cast p1, Lj2/z;

    invoke-virtual {p1}, Lj2/z;->f()V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lj2/g;->v(I)Lj2/s;

    move-result-object p1

    iget p2, p1, Lj2/s;->c:I

    rsub-int p2, p2, 0x2000

    int-to-long v0, p2

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    iget-object v0, p0, Lj2/d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    iget-object v1, p1, Lj2/s;->a:[B

    iget v2, p1, Lj2/s;->c:I

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget p2, p1, Lj2/s;->b:I

    iget v0, p1, Lj2/s;->c:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lj2/s;->a()Lj2/s;

    move-result-object p2

    iput-object p2, p3, Lj2/g;->e:Lj2/s;

    invoke-static {p1}, Lj2/t;->a(Lj2/s;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-wide/16 p1, -0x1

    goto :goto_1

    :cond_1
    iget v0, p1, Lj2/s;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lj2/s;->c:I

    iget-wide v0, p3, Lj2/g;->f:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p3, Lj2/g;->f:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-wide p1

    :goto_2
    invoke-static {p1}, LV0/a;->k(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    throw p1

    :pswitch_0
    const-string p1, "sink"

    invoke-static {p3, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lj2/d;->f:Ljava/lang/Object;

    check-cast p1, Lj2/w;

    iget-object p2, p0, Lj2/d;->g:Ljava/lang/Object;

    check-cast p2, Lj2/d;

    invoke-virtual {p1}, Lj2/e;->h()V

    const-wide/16 v0, 0x2000

    :try_start_1
    invoke-virtual {p2, v0, v1, p3}, Lj2/d;->h(JLj2/g;)J

    move-result-wide p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lj2/e;->i()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide p2

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lj2/w;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    :try_start_2
    invoke-virtual {p1}, Lj2/e;->i()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p2}, Lj2/w;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p2

    :goto_3
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-virtual {p1}, Lj2/e;->i()Z

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lj2/d;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj2/d;->f:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj2/d;->g:Ljava/lang/Object;

    check-cast v1, Lj2/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
