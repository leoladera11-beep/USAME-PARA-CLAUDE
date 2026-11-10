.class public final LV/b;
.super LM/i;
.source "SourceFile"

# interfaces
.implements Ly0/e;


# instance fields
.field public final n:Ly0/m;


# direct methods
.method public constructor <init>(Ly0/m;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ly0/i;

    new-array v0, v0, [Ly0/c;

    invoke-direct {p0, v1, v0}, LM/i;-><init>([LM/f;[LM/g;)V

    iget v0, p0, LM/i;->g:I

    iget-object v1, p0, LM/i;->e:[LM/f;

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    array-length v0, v1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    const/16 v4, 0x400

    invoke-virtual {v2, v4}, LM/f;->j(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, LV/b;->n:Ly0/m;

    return-void
.end method


# virtual methods
.method public final d(J)V
    .locals 0

    return-void
.end method

.method public final g()LM/f;
    .locals 2

    new-instance v0, Ly0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LM/f;-><init>(I)V

    return-object v0
.end method

.method public final h()LM/g;
    .locals 1

    new-instance v0, Ly0/c;

    invoke-direct {v0, p0}, Ly0/c;-><init>(LV/b;)V

    return-object v0
.end method

.method public final i(Ljava/lang/Throwable;)LM/d;
    .locals 2

    new-instance v0, Ly0/f;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final j(LM/f;LM/g;Z)LM/d;
    .locals 7

    check-cast p1, Ly0/i;

    check-cast p2, Ly0/c;

    :try_start_0
    iget-object v0, p1, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v2, p0, LV/b;->n:Ly0/m;

    if-eqz p3, :cond_0

    invoke-interface {v2}, Ly0/m;->reset()V

    :cond_0
    const/4 p3, 0x0

    invoke-interface {v2, p3, v1, v0}, Ly0/m;->g(I[BI)Ly0/d;

    move-result-object v0

    iget-wide v1, p1, LM/f;->k:J

    iget-wide v3, p1, Ly0/i;->n:J

    iput-wide v1, p2, LM/g;->g:J

    iput-object v0, p2, Ly0/c;->i:Ly0/d;

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    iput-wide v1, p2, Ly0/c;->j:J

    iput-boolean p3, p2, LM/g;->h:Z
    :try_end_0
    .catch Ly0/f; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method
