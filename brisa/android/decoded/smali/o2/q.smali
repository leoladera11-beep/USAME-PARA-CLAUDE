.class public final Lo2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:Lo2/p;

.field public f:Lo2/p;

.field public g:Lo2/p;

.field public h:Lo2/p;

.field public i:Lo2/p;

.field public final j:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lo2/p;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    iput-object p2, p0, Lo2/q;->j:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo2/p;

    iput-object p2, p0, Lo2/q;->f:Lo2/p;

    :cond_0
    iput-object p1, p0, Lo2/q;->g:Lo2/p;

    iput-object p1, p0, Lo2/q;->h:Lo2/p;

    iput-object p1, p0, Lo2/q;->e:Lo2/p;

    invoke-virtual {p1}, Lo2/p;->x()Lo2/j;

    move-result-object p1

    iput-object p1, p0, Lo2/q;->i:Lo2/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lo2/q;->f:Lo2/p;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo2/q;->i:Lo2/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo2/q;->g:Lo2/p;

    iget-object v0, v0, Lo2/p;->e:Lo2/j;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo2/q;->h:Lo2/p;

    iput-object v0, p0, Lo2/q;->g:Lo2/p;

    :cond_2
    :goto_0
    iget-object v0, p0, Lo2/q;->g:Lo2/p;

    :cond_3
    invoke-virtual {v0}, Lo2/p;->h()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo2/p;->g(I)Lo2/p;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lo2/q;->e:Lo2/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lo2/p;->x()Lo2/j;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lo2/q;->e:Lo2/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lo2/p;->q()Lo2/p;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lo2/q;->j:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo2/p;

    :cond_9
    :goto_2
    iput-object v2, p0, Lo2/q;->f:Lo2/p;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lo2/q;->a()V

    iget-object v0, p0, Lo2/q;->f:Lo2/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lo2/q;->a()V

    iget-object v0, p0, Lo2/q;->f:Lo2/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo2/q;->g:Lo2/p;

    iput-object v1, p0, Lo2/q;->h:Lo2/p;

    iput-object v0, p0, Lo2/q;->g:Lo2/p;

    invoke-virtual {v0}, Lo2/p;->x()Lo2/j;

    move-result-object v1

    iput-object v1, p0, Lo2/q;->i:Lo2/p;

    const/4 v1, 0x0

    iput-object v1, p0, Lo2/q;->f:Lo2/p;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lo2/q;->g:Lo2/p;

    invoke-virtual {v0}, Lo2/p;->z()V

    return-void
.end method
