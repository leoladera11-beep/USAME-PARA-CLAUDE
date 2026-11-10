.class public final LW1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final e:LM0/r0;

.field public final f:LW1/r;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:LW1/j;

.field public final j:LW1/k;

.field public final k:LW1/x;

.field public final l:LW1/v;

.field public final m:LW1/v;

.field public final n:LW1/v;

.field public final o:J

.field public final p:J

.field public final q:La2/d;


# direct methods
.method public constructor <init>(LM0/r0;LW1/r;Ljava/lang/String;ILW1/j;LW1/k;LW1/x;LW1/v;LW1/v;LW1/v;JJLa2/d;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/v;->e:LM0/r0;

    iput-object p2, p0, LW1/v;->f:LW1/r;

    iput-object p3, p0, LW1/v;->g:Ljava/lang/String;

    iput p4, p0, LW1/v;->h:I

    iput-object p5, p0, LW1/v;->i:LW1/j;

    iput-object p6, p0, LW1/v;->j:LW1/k;

    iput-object p7, p0, LW1/v;->k:LW1/x;

    iput-object p8, p0, LW1/v;->l:LW1/v;

    iput-object p9, p0, LW1/v;->m:LW1/v;

    iput-object p10, p0, LW1/v;->n:LW1/v;

    iput-wide p11, p0, LW1/v;->o:J

    iput-wide p13, p0, LW1/v;->p:J

    move-object/from16 p1, p15

    iput-object p1, p0, LW1/v;->q:La2/d;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget v2, p0, LW1/v;->h:I

    if-gt v0, v2, :cond_0

    const/16 v0, 0x12c

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, LW1/v;->k:LW1/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LW1/x;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()LW1/u;
    .locals 3

    new-instance v0, LW1/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LW1/v;->e:LM0/r0;

    iput-object v1, v0, LW1/u;->a:LM0/r0;

    iget-object v1, p0, LW1/v;->f:LW1/r;

    iput-object v1, v0, LW1/u;->b:LW1/r;

    iget v1, p0, LW1/v;->h:I

    iput v1, v0, LW1/u;->c:I

    iget-object v1, p0, LW1/v;->g:Ljava/lang/String;

    iput-object v1, v0, LW1/u;->d:Ljava/lang/String;

    iget-object v1, p0, LW1/v;->i:LW1/j;

    iput-object v1, v0, LW1/u;->e:LW1/j;

    iget-object v1, p0, LW1/v;->j:LW1/k;

    invoke-virtual {v1}, LW1/k;->d()LZ0/i;

    move-result-object v1

    iput-object v1, v0, LW1/u;->f:LZ0/i;

    iget-object v1, p0, LW1/v;->k:LW1/x;

    iput-object v1, v0, LW1/u;->g:LW1/x;

    iget-object v1, p0, LW1/v;->l:LW1/v;

    iput-object v1, v0, LW1/u;->h:LW1/v;

    iget-object v1, p0, LW1/v;->m:LW1/v;

    iput-object v1, v0, LW1/u;->i:LW1/v;

    iget-object v1, p0, LW1/v;->n:LW1/v;

    iput-object v1, v0, LW1/u;->j:LW1/v;

    iget-wide v1, p0, LW1/v;->o:J

    iput-wide v1, v0, LW1/u;->k:J

    iget-wide v1, p0, LW1/v;->p:J

    iput-wide v1, v0, LW1/u;->l:J

    iget-object v1, p0, LW1/v;->q:La2/d;

    iput-object v1, v0, LW1/u;->m:La2/d;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LW1/v;->f:LW1/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LW1/v;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW1/v;->e:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LW1/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
