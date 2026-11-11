.class public final synthetic LM0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;
.implements Lz1/r;
.implements LW/l;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LM0/n0;->e:I

    iput-object p2, p0, LM0/n0;->f:Ljava/lang/Object;

    iput-object p3, p0, LM0/n0;->g:Ljava/lang/Object;

    iput-object p4, p0, LM0/n0;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lz1/B;
    .locals 11

    iget v0, p0, LM0/n0;->e:I

    const/4 v1, 0x0

    iget-object v2, p0, LM0/n0;->h:Ljava/lang/Object;

    iget-object v3, p0, LM0/n0;->g:Ljava/lang/Object;

    iget-object v4, p0, LM0/n0;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v4

    check-cast v6, LM0/X0;

    move-object v8, v3

    check-cast v8, LM0/N0;

    move-object v7, v2

    check-cast v7, LM0/R1;

    move-object v9, p1

    check-cast v9, Ljava/util/List;

    iget-object p1, v6, LM0/X0;->l:Landroid/os/Handler;

    new-instance v5, LM0/B0;

    const/4 v10, 0x6

    invoke-direct/range {v5 .. v10}, LM0/B0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, LH/i;

    invoke-direct {v0, v6, v8, v5}, LH/i;-><init>(LM0/X0;LM0/N0;Ljava/lang/Runnable;)V

    new-instance v2, LM0/m2;

    invoke-direct {v2, v1}, LM0/m2;-><init>(I)V

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    new-instance v1, Lz1/H;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, LJ/U;

    invoke-direct {v3, v1, v0, v2}, LJ/U;-><init>(Lz1/H;LH/i;LM0/m2;)V

    invoke-static {p1, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_0
    check-cast v4, LM0/X0;

    check-cast v3, LM0/N0;

    check-cast v2, LM0/E1;

    check-cast p1, LM0/O0;

    iget-object v0, v4, LM0/X0;->l:Landroid/os/Handler;

    new-instance v5, LJ/U;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v4, v2, p1}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LH/i;

    invoke-direct {p1, v4, v3, v5}, LH/i;-><init>(LM0/X0;LM0/N0;Ljava/lang/Runnable;)V

    new-instance v2, LM0/m2;

    invoke-direct {v2, v1}, LM0/m2;-><init>(I)V

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    new-instance v1, Lz1/H;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, LJ/U;

    invoke-direct {v3, v1, p1, v2}, LJ/U;-><init>(Lz1/H;LH/i;LM0/m2;)V

    invoke-static {v0, v3}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(ILG/r0;[I)Lu1/C0;
    .locals 9

    iget-object v0, p0, LM0/n0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LW/j;

    iget-object v0, p0, LM0/n0;->g:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, LM0/n0;->h:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, p2, LG/r0;->a:I

    if-ge v4, v1, :cond_0

    new-instance v1, LW/k;

    aget v6, p3, v4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, LW/k;-><init>(ILG/r0;ILW/j;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LM0/n0;->f:Ljava/lang/Object;

    check-cast v0, LM0/r0;

    iget-object v1, p0, LM0/n0;->g:Ljava/lang/Object;

    check-cast v1, LM0/r0;

    iget-object v2, p0, LM0/n0;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast p1, LG/e0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-object v0, v0, LM0/l2;->a:LG/f0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget-object v1, v1, LM0/b2;->c:LM0/l2;

    iget-object v1, v1, LM0/l2;->a:LG/f0;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2, v0, v1}, LG/e0;->l(ILG/f0;LG/f0;)V

    return-void
.end method
