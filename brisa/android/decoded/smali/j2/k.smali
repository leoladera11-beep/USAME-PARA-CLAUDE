.class public final Lj2/k;
.super Lj2/z;
.source "SourceFile"


# instance fields
.field public e:Lj2/z;


# direct methods
.method public constructor <init>(Lj2/z;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/k;->e:Lj2/z;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0}, Lj2/z;->a()Lj2/z;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj2/z;
    .locals 1

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0}, Lj2/z;->b()Lj2/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0}, Lj2/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)Lj2/z;
    .locals 1

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0, p1, p2}, Lj2/z;->d(J)Lj2/z;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0}, Lj2/z;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0}, Lj2/z;->f()V

    return-void
.end method

.method public final g(J)Lj2/z;
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj2/k;->e:Lj2/z;

    invoke-virtual {v0, p1, p2}, Lj2/z;->g(J)Lj2/z;

    move-result-object p1

    return-object p1
.end method
