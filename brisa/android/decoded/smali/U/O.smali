.class public final LU/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/G;


# instance fields
.field public final a:LU/Z;

.field public final b:LU/Z;

.field public final c:Lb0/l;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LU/Z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/O;->a:LU/Z;

    iput-object p1, p0, LU/O;->b:LU/Z;

    new-instance p1, Lb0/l;

    invoke-direct {p1}, Lb0/l;-><init>()V

    iput-object p1, p0, LU/O;->c:Lb0/l;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LU/O;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(ILJ/D;)V
    .locals 1

    invoke-virtual {p0}, LU/O;->h()Lb0/G;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lb0/G;->a(ILJ/D;)V

    return-void
.end method

.method public final b(LG/x;)V
    .locals 1

    iget-object v0, p0, LU/O;->a:LU/Z;

    invoke-virtual {v0, p1}, LU/Z;->b(LG/x;)V

    return-void
.end method

.method public final c(LJ/D;II)V
    .locals 1

    invoke-virtual {p0}, LU/O;->h()Lb0/G;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb0/G;->c(LJ/D;II)V

    return-void
.end method

.method public final d(J)V
    .locals 0

    return-void
.end method

.method public final e(LG/o;IZ)I
    .locals 1

    invoke-virtual {p0}, LU/O;->h()Lb0/G;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb0/G;->e(LG/o;IZ)I

    move-result p1

    return p1
.end method

.method public final f(JIIILb0/F;)V
    .locals 7

    invoke-virtual {p0}, LU/O;->h()Lb0/G;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lb0/G;->f(JIIILb0/F;)V

    return-void
.end method

.method public final g(LG/o;IZ)I
    .locals 1

    invoke-virtual {p0}, LU/O;->h()Lb0/G;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lb0/G;->g(LG/o;IZ)I

    move-result p1

    return p1
.end method

.method public final h()Lb0/G;
    .locals 1

    iget-object v0, p0, LU/O;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/O;->c:Lb0/l;

    return-object v0

    :cond_0
    iget-object v0, p0, LU/O;->b:LU/Z;

    return-object v0
.end method
