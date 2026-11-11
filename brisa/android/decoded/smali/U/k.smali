.class public final LU/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/b0;


# instance fields
.field public final e:LU/b0;

.field public final f:Lu1/P;


# direct methods
.method public constructor <init>(LU/b0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/k;->e:LU/b0;

    invoke-static {p2}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    iput-object p1, p0, LU/k;->f:Lu1/P;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, LU/k;->e:LU/b0;

    invoke-interface {v0}, LU/b0;->b()Z

    move-result v0

    return v0
.end method

.method public final h()J
    .locals 2

    iget-object v0, p0, LU/k;->e:LU/b0;

    invoke-interface {v0}, LU/b0;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j(LN/J;)Z
    .locals 1

    iget-object v0, p0, LU/k;->e:LU/b0;

    invoke-interface {v0, p1}, LU/b0;->j(LN/J;)Z

    move-result p1

    return p1
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, LU/k;->e:LU/b0;

    invoke-interface {v0}, LU/b0;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t(J)V
    .locals 1

    iget-object v0, p0, LU/k;->e:LU/b0;

    invoke-interface {v0, p1, p2}, LU/b0;->t(J)V

    return-void
.end method
