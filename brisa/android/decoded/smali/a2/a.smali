.class public final La2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW1/n;


# static fields
.field public static final a:La2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La2/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La2/a;->a:La2/a;

    return-void
.end method


# virtual methods
.method public final a(Lb2/g;)LW1/v;
    .locals 9

    iget-object v1, p1, Lb2/g;->a:La2/h;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, La2/h;->p:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v1, La2/h;->o:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, La2/h;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit v1

    iget-object v2, v1, La2/h;->k:La2/e;

    invoke-static {v2}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v0, v1, La2/h;->e:LW1/q;

    :try_start_1
    iget v3, p1, Lb2/g;->f:I

    iget v4, p1, Lb2/g;->g:I

    iget v5, p1, Lb2/g;->h:I

    iget-boolean v6, v0, LW1/q;->j:Z

    iget-object v7, p1, Lb2/g;->e:LM0/r0;

    iget-object v7, v7, LM0/r0;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-string v8, "GET"

    invoke-static {v7, v8}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-virtual/range {v2 .. v7}, La2/e;->a(IIIZZ)La2/k;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, La2/k;->j(LW1/q;Lb2/g;)Lb2/e;

    move-result-object v0
    :try_end_1
    .catch La2/m; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v3, La2/d;

    invoke-direct {v3, v1, v2, v0}, La2/d;-><init>(La2/h;La2/e;Lb2/e;)V

    iput-object v3, v1, La2/h;->m:La2/d;

    iput-object v3, v1, La2/h;->r:La2/d;

    monitor-enter v1

    :try_start_2
    iput-boolean v8, v1, La2/h;->n:Z

    iput-boolean v8, v1, La2/h;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-boolean v0, v1, La2/h;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lb2/g;->a(Lb2/g;ILa2/d;LM0/r0;I)Lb2/g;

    move-result-object v0

    iget-object p1, p1, Lb2/g;->e:LM0/r0;

    invoke-virtual {v0, p1}, Lb2/g;->b(LM0/r0;)LW1/v;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    invoke-virtual {v2, p1}, La2/e;->c(Ljava/io/IOException;)V

    new-instance v0, La2/m;

    invoke-direct {v0, p1}, La2/m;-><init>(Ljava/io/IOException;)V

    throw v0

    :goto_1
    iget-object v0, p1, La2/m;->f:Ljava/io/IOException;

    invoke-virtual {v2, v0}, La2/e;->c(Ljava/io/IOException;)V

    throw p1

    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v1

    throw p1
.end method
