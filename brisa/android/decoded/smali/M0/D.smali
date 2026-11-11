.class public final synthetic LM0/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/l0;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LM0/l0;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, LM0/D;->e:I

    iput-object p1, p0, LM0/D;->f:LM0/l0;

    iput-object p2, p0, LM0/D;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 8

    iget v0, p0, LM0/D;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/D;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    new-instance v2, LG/g;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, LM0/D;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/P;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-direct {v2, v0}, LG/g;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1, p2, v2}, LM0/q;->O(LM0/o;ILandroid/os/IBinder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/D;->f:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    new-instance v2, LG/g;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, LM0/D;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LG/P;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v6

    invoke-virtual {v5, v6, v7}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-direct {v2, v0}, LG/g;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1, p2, v2, v7}, LM0/q;->q0(LM0/o;ILandroid/os/IBinder;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
