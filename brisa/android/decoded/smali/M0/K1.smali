.class public final synthetic LM0/K1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/T1;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/T1;


# direct methods
.method public synthetic constructor <init>(LM0/T1;I)V
    .locals 0

    iput p2, p0, LM0/K1;->e:I

    iput-object p1, p0, LM0/K1;->f:LM0/T1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LM0/K1;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LM0/E;

    invoke-direct {v0, p1, p2, p3}, LM0/E;-><init>(LM0/X0;LM0/N0;I)V

    iget-object v1, p0, LM0/K1;->f:LM0/T1;

    invoke-static {p1, p2, p3, v1, v0}, LM0/W1;->I0(LM0/X0;LM0/N0;ILM0/T1;LJ/k;)Lz1/B;

    move-result-object p1

    return-object p1

    :pswitch_0
    if-nez p1, :cond_0

    new-instance p1, LM0/u0;

    const/4 v0, 0x3

    invoke-direct {p1, p2, p3, v0}, LM0/u0;-><init>(Ljava/lang/Object;II)V

    const/4 v0, 0x0

    iget-object v1, p0, LM0/K1;->f:LM0/T1;

    invoke-static {v0, p2, p3, v1, p1}, LM0/W1;->I0(LM0/X0;LM0/N0;ILM0/T1;LJ/k;)Lz1/B;

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
