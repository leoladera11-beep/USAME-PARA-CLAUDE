.class public final LP/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:LG/e;

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(LP/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, LP/o;->a:I

    iput v0, p0, LP/p;->a:I

    iget v0, p1, LP/o;->b:I

    iput v0, p0, LP/p;->b:I

    iget v0, p1, LP/o;->c:I

    iput v0, p0, LP/p;->c:I

    iget-boolean v0, p1, LP/o;->d:Z

    iput-boolean v0, p0, LP/p;->d:Z

    iget-boolean v0, p1, LP/o;->e:Z

    iput-boolean v0, p0, LP/p;->e:Z

    iget v0, p1, LP/o;->f:I

    iput v0, p0, LP/p;->f:I

    iget-object v0, p1, LP/o;->g:LG/e;

    iput-object v0, p0, LP/p;->g:LG/e;

    iget v0, p1, LP/o;->h:I

    iput v0, p0, LP/p;->h:I

    iget v0, p1, LP/o;->i:I

    iput v0, p0, LP/p;->i:I

    iget-boolean v0, p1, LP/o;->j:Z

    iput-boolean v0, p0, LP/p;->j:Z

    iget-boolean p1, p1, LP/o;->k:Z

    iput-boolean p1, p0, LP/p;->k:Z

    return-void
.end method


# virtual methods
.method public final a()LP/o;
    .locals 2

    new-instance v0, LP/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, LP/p;->a:I

    iput v1, v0, LP/o;->a:I

    iget v1, p0, LP/p;->b:I

    iput v1, v0, LP/o;->b:I

    iget v1, p0, LP/p;->c:I

    iput v1, v0, LP/o;->c:I

    iget-boolean v1, p0, LP/p;->d:Z

    iput-boolean v1, v0, LP/o;->d:Z

    iget-boolean v1, p0, LP/p;->e:Z

    iput-boolean v1, v0, LP/o;->e:Z

    iget v1, p0, LP/p;->f:I

    iput v1, v0, LP/o;->f:I

    iget-object v1, p0, LP/p;->g:LG/e;

    iput-object v1, v0, LP/o;->g:LG/e;

    iget v1, p0, LP/p;->h:I

    iput v1, v0, LP/o;->h:I

    iget v1, p0, LP/p;->i:I

    iput v1, v0, LP/o;->i:I

    iget-boolean v1, p0, LP/p;->j:Z

    iput-boolean v1, v0, LP/o;->j:Z

    iget-boolean v1, p0, LP/p;->k:Z

    iput-boolean v1, v0, LP/o;->k:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, LP/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, LP/p;

    iget v0, p0, LP/p;->a:I

    iget v1, p1, LP/p;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LP/p;->b:I

    iget v1, p1, LP/p;->b:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LP/p;->c:I

    iget v1, p1, LP/p;->c:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LP/p;->d:Z

    iget-boolean v1, p1, LP/p;->d:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LP/p;->e:Z

    iget-boolean v1, p1, LP/p;->e:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, LP/p;->f:I

    iget v1, p1, LP/p;->f:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LP/p;->h:I

    iget v1, p1, LP/p;->h:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LP/p;->i:I

    iget v1, p1, LP/p;->i:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LP/p;->j:Z

    iget-boolean v1, p1, LP/p;->j:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LP/p;->k:Z

    iget-boolean v1, p1, LP/p;->k:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LP/p;->g:LG/e;

    iget-object p1, p1, LP/p;->g:LG/e;

    invoke-virtual {v0, p1}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 12

    iget v0, p0, LP/p;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, LP/p;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, LP/p;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, LP/p;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, LP/p;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, LP/p;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, LP/p;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, LP/p;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v0, p0, LP/p;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, p0, LP/p;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v7, p0, LP/p;->g:LG/e;

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
