.class public final synthetic LN/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/q;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LG/C0;


# direct methods
.method public synthetic constructor <init>(LG/C0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LN/r;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/r;->f:LG/C0;

    return-void
.end method

.method public synthetic constructor <init>(LO/a;LG/C0;)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput p1, p0, LN/r;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LN/r;->f:LG/C0;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, LN/r;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LO/i;

    iget-object v0, p1, LO/i;->p:LN0/O;

    iget-object v1, p0, LN/r;->f:LG/C0;

    if-eqz v0, :cond_0

    iget-object v2, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget v3, v2, LG/x;->x:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, LG/x;->a()LG/w;

    move-result-object v2

    iget v3, v1, LG/C0;->a:I

    iput v3, v2, LG/w;->v:I

    iget v3, v1, LG/C0;->b:I

    iput v3, v2, LG/w;->w:I

    new-instance v3, LG/x;

    invoke-direct {v3, v2}, LG/x;-><init>(LG/w;)V

    new-instance v2, LN0/O;

    iget-object v0, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x14

    invoke-direct {v2, v3, v0, v4}, LN0/O;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v2, p1, LO/i;->p:LN0/O;

    :cond_0
    iget p1, v1, LG/C0;->a:I

    return-void

    :pswitch_0
    iget-object v0, p0, LN/r;->f:LG/C0;

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->a(LG/C0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
