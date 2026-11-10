.class public final synthetic LM0/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/Q1;
.implements LM0/R1;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/W1;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LM0/W1;II)V
    .locals 0

    iput p3, p0, LM0/C1;->e:I

    iput-object p1, p0, LM0/C1;->f:LM0/W1;

    iput p2, p0, LM0/C1;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/d2;LM0/N0;Ljava/util/List;)V
    .locals 4

    iget v0, p0, LM0/C1;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/C1;->f:LM0/W1;

    iget v1, p0, LM0/C1;->g:I

    invoke-virtual {v0, p2, p1, v1}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, p2, p3}, LM0/d2;->v(ILjava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/C1;->f:LM0/W1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, LM0/C1;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, p2, p1, v2}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LG/P;

    invoke-virtual {p1, p2, p3}, LM0/d2;->u0(ILG/P;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p1, v2}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result v1

    add-int/2addr v2, v3

    invoke-virtual {v0, p2, p1, v2}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, v1, p3, p2}, LM0/d2;->q0(ILjava/util/List;I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, LM0/C1;->f:LM0/W1;

    iget v1, p0, LM0/C1;->g:I

    invoke-virtual {v0, p2, p1, v1}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, p2, p3}, LM0/d2;->v(ILjava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(LM0/d2;LM0/N0;)V
    .locals 2

    iget v0, p0, LM0/C1;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/C1;->f:LM0/W1;

    iget v1, p0, LM0/C1;->g:I

    invoke-virtual {v0, p2, p1, v1}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, p2}, LM0/d2;->s0(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/C1;->f:LM0/W1;

    iget v1, p0, LM0/C1;->g:I

    invoke-virtual {v0, p2, p1, v1}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, p2}, LM0/d2;->n(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
