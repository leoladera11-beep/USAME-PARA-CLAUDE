.class public final synthetic LN/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LN/T;

.field public final synthetic g:Landroid/util/Pair;

.field public final synthetic h:LU/r;

.field public final synthetic i:LU/w;


# direct methods
.method public synthetic constructor <init>(LN/T;Landroid/util/Pair;LU/r;LU/w;I)V
    .locals 0

    iput p5, p0, LN/Q;->e:I

    iput-object p1, p0, LN/Q;->f:LN/T;

    iput-object p2, p0, LN/Q;->g:Landroid/util/Pair;

    iput-object p3, p0, LN/Q;->h:LU/r;

    iput-object p4, p0, LN/Q;->i:LU/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LN/Q;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN/Q;->f:LN/T;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v0, v0, LN/W;->i:LO/d;

    iget-object v1, p0, LN/Q;->g:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LU/A;

    iget-object v3, p0, LN/Q;->h:LU/r;

    iget-object v4, p0, LN/Q;->i:LU/w;

    invoke-virtual {v0, v2, v1, v3, v4}, LO/d;->P(ILU/A;LU/r;LU/w;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LN/Q;->f:LN/T;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v0, v0, LN/W;->i:LO/d;

    iget-object v1, p0, LN/Q;->g:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LU/A;

    iget-object v3, p0, LN/Q;->h:LU/r;

    iget-object v4, p0, LN/Q;->i:LU/w;

    invoke-virtual {v0, v2, v1, v3, v4}, LO/d;->A(ILU/A;LU/r;LU/w;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
