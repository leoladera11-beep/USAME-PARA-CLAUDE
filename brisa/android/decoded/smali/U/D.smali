.class public final synthetic LU/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LC1/e;

.field public final synthetic g:LU/r;

.field public final synthetic h:LU/w;


# direct methods
.method public synthetic constructor <init>(LC1/e;LU/r;LU/w;I)V
    .locals 0

    iput p4, p0, LU/D;->e:I

    iput-object p1, p0, LU/D;->f:LC1/e;

    iput-object p2, p0, LU/D;->g:LU/r;

    iput-object p3, p0, LU/D;->h:LU/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, LU/D;->e:I

    check-cast p1, LU/G;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU/D;->f:LC1/e;

    iget v1, v0, LC1/e;->f:I

    iget-object v0, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, LU/A;

    iget-object v2, p0, LU/D;->g:LU/r;

    iget-object v3, p0, LU/D;->h:LU/w;

    invoke-interface {p1, v1, v0, v2, v3}, LU/G;->A(ILU/A;LU/r;LU/w;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LU/D;->f:LC1/e;

    iget v1, v0, LC1/e;->f:I

    iget-object v0, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, LU/A;

    iget-object v2, p0, LU/D;->g:LU/r;

    iget-object v3, p0, LU/D;->h:LU/w;

    invoke-interface {p1, v1, v0, v2, v3}, LU/G;->P(ILU/A;LU/r;LU/w;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
