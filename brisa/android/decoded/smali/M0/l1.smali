.class public final synthetic LM0/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LM0/m1;

.field public final synthetic f:LM0/O0;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:LM0/N0;


# direct methods
.method public synthetic constructor <init>(LM0/m1;LM0/O0;ZZLM0/N0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/l1;->e:LM0/m1;

    iput-object p2, p0, LM0/l1;->f:LM0/O0;

    iput-boolean p3, p0, LM0/l1;->g:Z

    iput-boolean p4, p0, LM0/l1;->h:Z

    iput-object p5, p0, LM0/l1;->i:LM0/N0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LM0/l1;->e:LM0/m1;

    iget-object v0, v0, LM0/m1;->h:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v1, v0, LM0/X0;->t:LM0/d2;

    iget-object v2, p0, LM0/l1;->f:LM0/O0;

    invoke-static {v1, v2}, LM0/Y1;->n(LG/g0;LM0/O0;)V

    invoke-virtual {v1}, LM0/d2;->c()I

    move-result v2

    iget-boolean v3, p0, LM0/l1;->g:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_0

    invoke-virtual {v1, v4}, LM0/d2;->S0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LM0/d2;->e()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v3}, LM0/d2;->S0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LM0/d2;->S()V

    :cond_1
    :goto_0
    iget-boolean v2, p0, LM0/l1;->h:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, LM0/d2;->S0(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, LM0/d2;->Q()V

    :cond_2
    new-instance v1, LG/b0;

    invoke-direct {v1}, LG/b0;-><init>()V

    const/16 v3, 0x1f

    filled-new-array {v3, v4}, [I

    move-result-object v3

    iget-object v4, v1, LG/b0;->a:LE/b;

    invoke-virtual {v4, v3}, LE/b;->c([I)V

    invoke-virtual {v1, v5, v2}, LG/b0;->b(IZ)V

    invoke-virtual {v1}, LG/b0;->c()LG/c0;

    iget-object v1, p0, LM0/l1;->i:LM0/N0;

    invoke-virtual {v0, v1}, LM0/X0;->r(LM0/N0;)V

    return-void
.end method
