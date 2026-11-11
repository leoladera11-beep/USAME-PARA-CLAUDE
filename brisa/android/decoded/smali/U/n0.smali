.class public abstract LU/n0;
.super LU/j;
.source "SourceFile"


# instance fields
.field public final k:LU/a;


# direct methods
.method public constructor <init>(LU/a;)V
    .locals 0

    invoke-direct {p0}, LU/j;-><init>()V

    iput-object p1, p0, LU/n0;->k:LU/a;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LU/n0;->k:LU/a;

    invoke-virtual {p0, v0, v1}, LU/j;->x(Ljava/lang/Object;LU/a;)V

    return-void
.end method

.method public B()V
    .locals 0

    invoke-virtual {p0}, LU/n0;->A()V

    return-void
.end method

.method public final g()LG/q0;
    .locals 1

    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0}, LU/a;->g()LG/q0;

    move-result-object v0

    return-object v0
.end method

.method public final h()LG/P;
    .locals 1

    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0}, LU/a;->h()LG/P;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, LU/n0;->k:LU/a;

    invoke-virtual {v0}, LU/a;->i()Z

    move-result v0

    return v0
.end method

.method public final l(LL/D;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, LU/j;->j:Landroid/os/Handler;

    invoke-virtual {p0}, LU/n0;->B()V

    return-void
.end method

.method public final t(Ljava/lang/Object;LU/A;)LU/A;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p2}, LU/n0;->y(LU/A;)LU/A;

    move-result-object p1

    return-object p1
.end method

.method public final u(JLjava/lang/Object;)J
    .locals 0

    check-cast p3, Ljava/lang/Void;

    return-wide p1
.end method

.method public final v(ILjava/lang/Object;)I
    .locals 0

    check-cast p2, Ljava/lang/Void;

    return p1
.end method

.method public final w(Ljava/lang/Object;LU/a;LG/q0;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p3}, LU/n0;->z(LG/q0;)V

    return-void
.end method

.method public y(LU/A;)LU/A;
    .locals 0

    return-object p1
.end method

.method public abstract z(LG/q0;)V
.end method
