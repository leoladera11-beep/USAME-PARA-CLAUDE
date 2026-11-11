.class public final synthetic LM0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LN/F;IZ)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    iput p3, p0, LM0/a0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/a0;->g:Ljava/lang/Object;

    iput p2, p0, LM0/a0;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p3, p0, LM0/a0;->e:I

    iput-object p1, p0, LM0/a0;->g:Ljava/lang/Object;

    iput p2, p0, LM0/a0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LM0/a0;->e:I

    const/4 v1, 0x1

    iget v2, p0, LM0/a0;->f:I

    iget-object v3, p0, LM0/a0;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v3, LP/t;

    iget-object v0, v3, LP/t;->b:LN/s;

    sget-object v3, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v0, v0, LN/x;->C:LJ/c;

    new-instance v3, LG/l0;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v4}, LG/l0;-><init>(II)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v0, LJ/c;->c:Ljava/lang/Object;

    check-cast v5, LJ/O;

    iget-object v5, v5, LJ/O;->a:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, LF1/i;->o(Z)V

    iget v4, v0, LJ/c;->a:I

    add-int/2addr v4, v1

    iput v4, v0, LJ/c;->a:I

    new-instance v4, LH/i;

    invoke-direct {v4, v0, v3, v1}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, LJ/c;->e(Ljava/lang/Runnable;)V

    iget-object v1, v0, LJ/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LJ/c;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast v3, LN/F;

    iget-object v0, v3, LN/F;->A:LO/d;

    iget-object v1, v3, LN/F;->e:[LN/f0;

    aget-object v1, v1, v2

    iget-object v1, v1, LN/f0;->a:LN/a;

    iget v1, v1, LN/a;->f:I

    invoke-virtual {v0}, LO/d;->Z()LO/a;

    move-result-object v1

    new-instance v2, LO/b;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LO/b;-><init>(I)V

    const/16 v3, 0x409

    invoke-virtual {v0, v1, v3, v2}, LO/d;->a0(LO/a;ILJ/q;)V

    return-void

    :pswitch_1
    check-cast v3, LM0/l0;

    iget-object v0, v3, LM0/l0;->k:Lh/f;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lh/f;->remove(Ljava/lang/Object;)Z

    iget-object v4, v3, LM0/l0;->l:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, v3, LM0/l0;->n:LM0/o2;

    if-eqz v2, :cond_1

    iget-object v2, v2, LM0/o2;->a:LM0/n2;

    invoke-interface {v2}, LM0/n2;->h()I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    invoke-virtual {v0}, Lh/f;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, LM0/l0;->m:Landroid/os/Handler;

    new-instance v2, LM0/V;

    invoke-direct {v2, v3, v1}, LM0/V;-><init>(LM0/l0;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
