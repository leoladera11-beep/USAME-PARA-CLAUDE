.class public final Lc2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/v;


# instance fields
.field public final e:Lj2/k;

.field public f:Z

.field public final synthetic g:Lc2/g;


# direct methods
.method public constructor <init>(Lc2/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/e;->g:Lc2/g;

    new-instance v0, Lj2/k;

    iget-object p1, p1, Lc2/g;->d:Lj2/h;

    invoke-interface {p1}, Lj2/v;->a()Lj2/z;

    move-result-object p1

    invoke-direct {v0, p1}, Lj2/k;-><init>(Lj2/z;)V

    iput-object v0, p0, Lc2/e;->e:Lj2/k;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Lc2/e;->e:Lj2/k;

    return-object v0
.end method

.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lc2/e;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/e;->f:Z

    iget-object v0, p0, Lc2/e;->e:Lj2/k;

    iget-object v1, v0, Lj2/k;->e:Lj2/z;

    sget-object v2, Lj2/z;->d:Lj2/y;

    iput-object v2, v0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v1}, Lj2/z;->a()Lj2/z;

    invoke-virtual {v1}, Lj2/z;->b()Lj2/z;

    const/4 v0, 0x3

    iget-object v1, p0, Lc2/e;->g:Lc2/g;

    iput v0, v1, Lc2/g;->e:I

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lc2/e;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc2/e;->g:Lc2/g;

    iget-object v0, v0, Lc2/g;->d:Lj2/h;

    invoke-interface {v0}, Lj2/h;->flush()V

    return-void
.end method

.method public final k(JLj2/g;)V
    .locals 7

    iget-boolean v0, p0, Lc2/e;->f:Z

    if-nez v0, :cond_0

    iget-wide v1, p3, Lj2/g;->f:J

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, LX1/b;->c(JJJ)V

    iget-object p1, p0, Lc2/e;->g:Lc2/g;

    iget-object p1, p1, Lc2/g;->d:Lj2/h;

    invoke-interface {p1, v5, v6, p3}, Lj2/v;->k(JLj2/g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
