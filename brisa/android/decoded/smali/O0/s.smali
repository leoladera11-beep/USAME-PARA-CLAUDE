.class public final synthetic LO0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:LO0/i;

.field public final synthetic f:LG/g0;

.field public final synthetic g:LG/r0;

.field public final synthetic h:LO0/r;


# direct methods
.method public synthetic constructor <init>(LO0/i;LG/g0;LG/r0;LO0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/s;->e:LO0/i;

    iput-object p2, p0, LO0/s;->f:LG/g0;

    iput-object p3, p0, LO0/s;->g:LG/r0;

    iput-object p4, p0, LO0/s;->h:LO0/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/16 p1, 0x1d

    iget-object v0, p0, LO0/s;->f:LG/g0;

    invoke-interface {v0, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, LG/g0;->x0()LG/w0;

    move-result-object p1

    invoke-virtual {p1}, LG/w0;->a()LG/v0;

    move-result-object p1

    new-instance v1, LG/s0;

    iget-object v2, p0, LO0/s;->h:LO0/r;

    iget v3, v2, LO0/r;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v3

    iget-object v4, p0, LO0/s;->g:LG/r0;

    invoke-direct {v1, v4, v3}, LG/s0;-><init>(LG/r0;Ljava/util/List;)V

    invoke-virtual {p1, v1}, LG/v0;->h(LG/s0;)LG/v0;

    move-result-object p1

    iget-object v1, v2, LO0/r;->a:LG/x0;

    iget-object v1, v1, LG/x0;->b:LG/r0;

    iget v1, v1, LG/r0;->c:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, LG/v0;->l(IZ)LG/v0;

    move-result-object p1

    invoke-virtual {p1}, LG/v0;->b()LG/w0;

    move-result-object p1

    invoke-interface {v0, p1}, LG/g0;->n0(LG/w0;)V

    iget-object p1, v2, LO0/r;->c:Ljava/lang/String;

    iget-object v0, p0, LO0/s;->e:LO0/i;

    iget v1, v0, LO0/i;->e:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, LO0/i;->f:LO0/u;

    iget-object v1, v1, LO0/u;->m:LO0/p;

    const/4 v2, 0x1

    iget-object v1, v1, LO0/p;->d:[Ljava/lang/String;

    aput-object p1, v1, v2

    :goto_0
    iget-object p1, v0, LO0/i;->d:LO0/u;

    iget-object p1, p1, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
