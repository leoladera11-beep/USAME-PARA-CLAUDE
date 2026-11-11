.class public abstract Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj2/x;


# instance fields
.field public final e:Lj2/k;

.field public f:Z

.field public final synthetic g:Lc2/g;


# direct methods
.method public constructor <init>(Lc2/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/a;->g:Lc2/g;

    new-instance v0, Lj2/k;

    iget-object p1, p1, Lc2/g;->c:Lj2/i;

    invoke-interface {p1}, Lj2/x;->a()Lj2/z;

    move-result-object p1

    invoke-direct {v0, p1}, Lj2/k;-><init>(Lj2/z;)V

    iput-object v0, p0, Lc2/a;->e:Lj2/k;

    return-void
.end method


# virtual methods
.method public final a()Lj2/z;
    .locals 1

    iget-object v0, p0, Lc2/a;->e:Lj2/k;

    return-object v0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lc2/a;->g:Lc2/g;

    iget v1, v0, Lc2/g;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lc2/a;->e:Lj2/k;

    iget-object v3, v1, Lj2/k;->e:Lj2/z;

    sget-object v4, Lj2/z;->d:Lj2/y;

    iput-object v4, v1, Lj2/k;->e:Lj2/z;

    invoke-virtual {v3}, Lj2/z;->a()Lj2/z;

    invoke-virtual {v3}, Lj2/z;->b()Lj2/z;

    iput v2, v0, Lc2/g;->e:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lc2/g;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public h(JLj2/g;)J
    .locals 2

    iget-object v0, p0, Lc2/a;->g:Lc2/g;

    const-string v1, "sink"

    invoke-static {p3, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lc2/g;->c:Lj2/i;

    invoke-interface {v1, p1, p2, p3}, Lj2/x;->h(JLj2/g;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, v0, Lc2/g;->b:La2/k;

    invoke-virtual {p2}, La2/k;->k()V

    invoke-virtual {p0}, Lc2/a;->c()V

    throw p1
.end method
