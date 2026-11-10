.class public final synthetic LM0/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    iput p5, p0, LM0/S;->e:I

    iput-object p1, p0, LM0/S;->f:Ljava/lang/Object;

    iput-object p2, p0, LM0/S;->i:Ljava/lang/Object;

    iput p3, p0, LM0/S;->g:I

    iput p4, p0, LM0/S;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 9

    iget v0, p0, LM0/S;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/S;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-object v1, p0, LM0/S;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    new-instance v5, LG/g;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/P;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    invoke-direct {v5, v1}, LG/g;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v1

    const/4 v3, 0x2

    iget v4, p0, LM0/S;->g:I

    move v6, v4

    iget v4, p0, LM0/S;->h:I

    if-lt v1, v3, :cond_1

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    move-object v0, p1

    move v2, p2

    move v3, v6

    invoke-interface/range {v0 .. v5}, LM0/q;->F(LM0/o;IIILandroid/os/IBinder;)V

    goto :goto_1

    :cond_1
    move v3, v6

    invoke-interface {p1, v2, p2, v4, v5}, LM0/q;->v(LM0/o;IILandroid/os/IBinder;)V

    invoke-interface {p1, v2, p2, v3, v4}, LM0/q;->o0(LM0/o;III)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, LM0/S;->f:Ljava/lang/Object;

    check-cast v2, LM0/l0;

    iget-object v3, p0, LM0/S;->i:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    iget v5, p0, LM0/S;->h:I

    iget-object v2, v2, LM0/l0;->c:LM0/y0;

    iget v4, p0, LM0/S;->g:I

    move-object v0, p1

    move-object v1, v2

    move v2, p2

    invoke-interface/range {v0 .. v5}, LM0/q;->p(LM0/o;ILandroid/view/Surface;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LM0/S;->f:Ljava/lang/Object;

    check-cast v0, LM0/W1;

    iget-object v1, p0, LM0/S;->i:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    check-cast p1, LM0/d2;

    iget-object v2, v0, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/X0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LM0/d2;->I0(Landroid/view/SurfaceHolder;)V

    iput-object v1, v0, LM0/W1;->l:LM0/U1;

    return-void

    :cond_0
    new-instance v2, LM0/U1;

    iget v3, p0, LM0/S;->g:I

    iget v4, p0, LM0/S;->h:I

    invoke-direct {v2, v1, v3, v4}, LM0/U1;-><init>(Landroid/view/Surface;II)V

    iput-object v2, v0, LM0/W1;->l:LM0/U1;

    invoke-virtual {p1, v2}, LM0/d2;->I0(Landroid/view/SurfaceHolder;)V

    return-void
.end method
