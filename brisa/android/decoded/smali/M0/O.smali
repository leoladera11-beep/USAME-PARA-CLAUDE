.class public final synthetic LM0/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/b2;

.field public final synthetic g:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(LM0/b2;Ljava/lang/Integer;I)V
    .locals 0

    iput p3, p0, LM0/O;->e:I

    iput-object p1, p0, LM0/O;->f:LM0/b2;

    iput-object p2, p0, LM0/O;->g:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LM0/O;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/O;->f:LM0/b2;

    iget-boolean v0, v0, LM0/b2;->v:Z

    iget-object v1, p0, LM0/O;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v0}, LG/e0;->v(IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/O;->f:LM0/b2;

    iget-object v1, v0, LM0/b2;->d:LG/f0;

    iget-object v0, v0, LM0/b2;->e:LG/f0;

    iget-object v2, p0, LM0/O;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2, v1, v0}, LG/e0;->l(ILG/f0;LG/f0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/O;->f:LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    iget-object v1, p0, LM0/O;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, LG/e0;->j(LG/q0;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
