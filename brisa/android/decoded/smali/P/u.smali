.class public final LP/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG/x;

.field public final b:Ly1/a;

.field public final c:LG/q0;

.field public final d:LU/A;


# direct methods
.method public constructor <init>(LB0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, LG/x;

    iput-object v0, p0, LP/u;->a:LG/x;

    iget-object v0, p1, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, Ly1/a;

    iput-object v0, p0, LP/u;->b:Ly1/a;

    iget-object v0, p1, LB0/b;->g:Ljava/lang/Object;

    check-cast v0, LG/q0;

    iput-object v0, p0, LP/u;->c:LG/q0;

    iget-object p1, p1, LB0/b;->h:Ljava/lang/Object;

    check-cast p1, LU/A;

    iput-object p1, p0, LP/u;->d:LU/A;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LP/u;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LP/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LP/u;->a:LG/x;

    iget-object v3, p1, LP/u;->a:LG/x;

    invoke-virtual {v1, v3}, LG/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LP/u;->b:Ly1/a;

    iget-object v3, p1, LP/u;->b:Ly1/a;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LP/u;->c:LG/q0;

    iget-object v3, p1, LP/u;->c:LG/q0;

    invoke-virtual {v1, v3}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LP/u;->d:LU/A;

    iget-object p1, p1, LP/u;->d:LU/A;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LP/u;->a:LG/x;

    invoke-virtual {v0}, LG/x;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3c1

    const/4 v1, 0x0

    iget-object v2, p0, LP/u;->b:Ly1/a;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ly1/a;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, LP/u;->c:LG/q0;

    invoke-virtual {v2}, LG/q0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, LP/u;->d:LU/A;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LU/A;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method
