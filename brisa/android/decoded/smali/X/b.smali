.class public final synthetic LX/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LX/c;

.field public final synthetic f:I

.field public final synthetic g:J

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(LX/c;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/b;->e:LX/c;

    iput p2, p0, LX/b;->f:I

    iput-wide p3, p0, LX/b;->g:J

    iput-wide p5, p0, LX/b;->h:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, LX/b;->e:LX/c;

    iget-object v0, v0, LX/c;->b:LO/d;

    iget-object v1, v0, LO/d;->h:LM0/r0;

    iget-object v2, v1, LM0/r0;->b:Ljava/lang/Object;

    check-cast v2, Lu1/P;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Lu1/P;

    invoke-static {v1}, Lu1/s;->k(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/A;

    :goto_0
    invoke-virtual {v0, v1}, LO/d;->X(LU/A;)LO/a;

    move-result-object v3

    new-instance v2, LM0/b0;

    iget v4, p0, LX/b;->f:I

    iget-wide v5, p0, LX/b;->g:J

    iget-wide v7, p0, LX/b;->h:J

    invoke-direct/range {v2 .. v8}, LM0/b0;-><init>(LO/a;IJJ)V

    const/16 v1, 0x3ee

    invoke-virtual {v0, v3, v1, v2}, LO/d;->a0(LO/a;ILJ/q;)V

    return-void
.end method
