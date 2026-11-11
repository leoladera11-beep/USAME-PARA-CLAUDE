.class public final LW1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LM0/r0;

.field public b:LW1/r;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:LW1/j;

.field public f:LZ0/i;

.field public g:LW1/x;

.field public h:LW1/v;

.field public i:LW1/v;

.field public j:LW1/v;

.field public k:J

.field public l:J

.field public m:La2/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LW1/u;->c:I

    new-instance v0, LZ0/i;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LZ0/i;-><init>(I)V

    iput-object v0, p0, LW1/u;->f:LZ0/i;

    return-void
.end method

.method public static b(Ljava/lang/String;LW1/v;)V
    .locals 1

    if-eqz p1, :cond_4

    iget-object v0, p1, LW1/v;->k:LW1/x;

    if-nez v0, :cond_3

    iget-object v0, p1, LW1/v;->l:LW1/v;

    if-nez v0, :cond_2

    iget-object v0, p1, LW1/v;->m:LW1/v;

    if-nez v0, :cond_1

    iget-object p1, p1, LW1/v;->n:LW1/v;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()LW1/v;
    .locals 17

    move-object/from16 v0, p0

    iget v5, v0, LW1/u;->c:I

    if-ltz v5, :cond_3

    iget-object v2, v0, LW1/u;->a:LM0/r0;

    if-eqz v2, :cond_2

    iget-object v3, v0, LW1/u;->b:LW1/r;

    if-eqz v3, :cond_1

    iget-object v4, v0, LW1/u;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v6, v0, LW1/u;->e:LW1/j;

    iget-object v1, v0, LW1/u;->f:LZ0/i;

    invoke-virtual {v1}, LZ0/i;->k()LW1/k;

    move-result-object v7

    iget-object v8, v0, LW1/u;->g:LW1/x;

    iget-object v9, v0, LW1/u;->h:LW1/v;

    iget-object v10, v0, LW1/u;->i:LW1/v;

    iget-object v11, v0, LW1/u;->j:LW1/v;

    iget-wide v12, v0, LW1/u;->k:J

    iget-wide v14, v0, LW1/u;->l:J

    iget-object v1, v0, LW1/u;->m:La2/d;

    move-object/from16 v16, v1

    new-instance v1, LW1/v;

    invoke-direct/range {v1 .. v16}, LW1/v;-><init>(LM0/r0;LW1/r;Ljava/lang/String;ILW1/j;LW1/k;LW1/x;LW1/v;LW1/v;LW1/v;JJLa2/d;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, LW1/u;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
