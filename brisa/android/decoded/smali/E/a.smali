.class public final LE/a;
.super LB/o;
.source "SourceFile"


# instance fields
.field public final l:LZ0/d;

.field public m:LB/g;

.field public n:LE/b;


# direct methods
.method public constructor <init>(LZ0/d;)V
    .locals 1

    invoke-direct {p0}, LB/o;-><init>()V

    iput-object p1, p0, LE/a;->l:LZ0/d;

    iget-object v0, p1, LZ0/d;->a:LE/a;

    if-nez v0, :cond_0

    iput-object p0, p1, LZ0/d;->a:LE/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final e()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, LE/a;->l:LZ0/d;

    iput-boolean v0, v1, LZ0/d;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, LZ0/d;->d:Z

    iput-boolean v0, v1, LZ0/d;->c:Z

    iget-object v0, v1, LZ0/d;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    invoke-virtual {v1}, LZ0/d;->c()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, LE/a;->l:LZ0/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, LZ0/d;->b:Z

    return-void
.end method

.method public final g(LB/p;)V
    .locals 0

    invoke-super {p0, p1}, LB/o;->g(LB/p;)V

    const/4 p1, 0x0

    iput-object p1, p0, LE/a;->m:LB/g;

    iput-object p1, p0, LE/a;->n:LE/b;

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, LE/a;->m:LB/g;

    iget-object v1, p0, LE/a;->n:LE/b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, LB/o;->g(LB/p;)V

    invoke-virtual {p0, v0, v1}, LB/o;->d(LB/g;LB/p;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LE/a;->l:LZ0/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
