.class public final LF2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final e:LB1/r;

.field public f:LB1/r;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, LF2/c;->f:LF2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF2/b;->e:LB1/r;

    invoke-virtual {v0}, LB1/r;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, LB1/r;->e()LB1/r;

    move-result-object v0

    iput-object v0, p0, LF2/b;->f:LB1/r;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()LB1/r;
    .locals 3

    iget-object v0, p0, LF2/b;->f:LB1/r;

    invoke-virtual {v0}, LB1/r;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LF2/b;->f:LB1/r;

    return-object v0

    :cond_0
    iget-object v0, p0, LF2/b;->f:LB1/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LB1/B;->c:LB1/B;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, LB1/B;->a(Ljava/lang/Class;)LB1/E;

    move-result-object v1

    invoke-interface {v1, v0}, LB1/E;->c(Ljava/lang/Object;)V

    iget v1, v0, LB1/r;->b:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, LB1/r;->b:I

    iget-object v0, p0, LF2/b;->f:LB1/r;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LF2/b;->e:LB1/r;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LB1/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF2/b;

    invoke-virtual {p0}, LF2/b;->a()LB1/r;

    move-result-object v1

    iput-object v1, v0, LF2/b;->f:LB1/r;

    return-object v0
.end method
