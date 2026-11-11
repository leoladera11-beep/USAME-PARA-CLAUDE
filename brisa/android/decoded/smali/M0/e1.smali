.class public final synthetic LM0/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LM0/t1;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(LM0/t1;II)V
    .locals 0

    iput p3, p0, LM0/e1;->a:I

    iput-object p1, p0, LM0/e1;->b:LM0/t1;

    iput p2, p0, LM0/e1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 1

    iget p1, p0, LM0/e1;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LM0/e1;->b:LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    iget v0, p0, LM0/e1;->c:I

    invoke-static {v0}, LM0/u;->r(I)Z

    move-result v0

    invoke-virtual {p1, v0}, LM0/d2;->B(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, LM0/e1;->b:LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    iget v0, p0, LM0/e1;->c:I

    invoke-static {v0}, LM0/u;->p(I)I

    move-result v0

    invoke-virtual {p1, v0}, LM0/d2;->b0(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
