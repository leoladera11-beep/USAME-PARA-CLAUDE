.class public abstract LH/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/o;


# instance fields
.field public b:LH/k;

.field public c:LH/k;

.field public d:LH/k;

.field public e:LH/k;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/p;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    sget-object v0, LH/k;->e:LH/k;

    iput-object v0, p0, LH/p;->d:LH/k;

    iput-object v0, p0, LH/p;->e:LH/k;

    iput-object v0, p0, LH/p;->b:LH/k;

    iput-object v0, p0, LH/p;->c:LH/k;

    return-void
.end method


# virtual methods
.method public abstract a(LH/k;)LH/k;
.end method

.method public b()Z
    .locals 2

    iget-boolean v0, p0, LH/p;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    sget-object v1, LH/o;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    sget-object v1, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LH/p;->h:Z

    invoke-virtual {p0}, LH/p;->k()V

    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, LH/p;->e:LH/k;

    sget-object v1, LH/k;->e:LH/k;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(LH/k;)LH/k;
    .locals 0

    iput-object p1, p0, LH/p;->d:LH/k;

    invoke-virtual {p0, p1}, LH/p;->a(LH/k;)LH/k;

    move-result-object p1

    iput-object p1, p0, LH/p;->e:LH/k;

    invoke-virtual {p0}, LH/p;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LH/p;->e:LH/k;

    return-object p1

    :cond_0
    sget-object p1, LH/k;->e:LH/k;

    return-object p1
.end method

.method public final i(LH/m;)V
    .locals 0

    sget-object p1, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object p1, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput-boolean p1, p0, LH/p;->h:Z

    iget-object p1, p0, LH/p;->d:LH/k;

    iput-object p1, p0, LH/p;->b:LH/k;

    iget-object p1, p0, LH/p;->e:LH/k;

    iput-object p1, p0, LH/p;->c:LH/k;

    invoke-virtual {p0}, LH/p;->j()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final m(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LH/p;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, LH/p;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LH/p;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, LH/p;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final reset()V
    .locals 2

    sget-object v0, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LH/p;->g:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, LH/p;->h:Z

    iput-object v0, p0, LH/p;->f:Ljava/nio/ByteBuffer;

    sget-object v0, LH/k;->e:LH/k;

    iput-object v0, p0, LH/p;->d:LH/k;

    iput-object v0, p0, LH/p;->e:LH/k;

    iput-object v0, p0, LH/p;->b:LH/k;

    iput-object v0, p0, LH/p;->c:LH/k;

    invoke-virtual {p0}, LH/p;->l()V

    return-void
.end method
