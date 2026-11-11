.class public final synthetic LM0/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LM0/t1;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/t1;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LM0/i1;->a:I

    iput-object p1, p0, LM0/i1;->b:LM0/t1;

    iput-object p2, p0, LM0/i1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 6

    iget p1, p0, LM0/i1;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LM0/i1;->c:Ljava/lang/Object;

    check-cast p1, LN0/C;

    iget-object p1, p1, LN0/C;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionLegacyStub"

    if-eqz v0, :cond_0

    const-string p1, "onRemoveQueueItem(): Media ID shouldn\'t be null"

    invoke-static {v1, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, LM0/i1;->b:LM0/t1;

    iget-object v0, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, LM0/d2;->S0(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Can\'t remove item by ID without COMMAND_GET_TIMELINE being available"

    invoke-static {v1, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LM0/d2;->p0()LG/q0;

    move-result-object v1

    new-instance v2, LG/p0;

    invoke-direct {v2}, LG/p0;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, LG/q0;->o()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v4

    iget-object v4, v4, LG/p0;->c:LG/P;

    iget-object v4, v4, LG/P;->a:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, LM0/d2;->s0(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, LM0/i1;->c:Ljava/lang/Object;

    check-cast p1, LM0/c;

    iget-object v0, p0, LM0/i1;->b:LM0/t1;

    iget-object v0, v0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1, v0}, LM0/c;->h(LG/g0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
