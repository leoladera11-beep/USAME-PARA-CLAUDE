.class public final synthetic LM0/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LM0/t1;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(LM0/t1;JI)V
    .locals 0

    iput p4, p0, LM0/c1;->a:I

    iput-object p1, p0, LM0/c1;->b:LM0/t1;

    iput-wide p2, p0, LM0/c1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 2

    iget p1, p0, LM0/c1;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LM0/c1;->b:LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    iget-wide v0, p0, LM0/c1;->c:J

    invoke-virtual {p1, v0, v1}, LM0/d2;->y0(J)V

    return-void

    :pswitch_0
    iget-object p1, p0, LM0/c1;->b:LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    iget-wide v0, p0, LM0/c1;->c:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, LM0/d2;->n(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
