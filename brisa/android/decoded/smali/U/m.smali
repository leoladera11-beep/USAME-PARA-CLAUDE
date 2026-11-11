.class public final synthetic LU/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/t;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:LL/g;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LN0/O;I)V
    .locals 0

    iput p3, p0, LU/m;->e:I

    iput-object p1, p0, LU/m;->f:Ljava/lang/Object;

    iput-object p2, p0, LU/m;->g:LL/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LU/m;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU/m;->f:Ljava/lang/Object;

    check-cast v0, LN0/j;

    new-instance v1, LU/V;

    iget-object v0, v0, LN0/j;->c:Ljava/lang/Object;

    check-cast v0, Lb0/k;

    iget-object v2, p0, LU/m;->g:LL/g;

    invoke-direct {v1, v2, v0}, LU/V;-><init>(LL/g;Lb0/q;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, LU/m;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, LU/m;->g:LL/g;

    invoke-static {v0, v1}, LU/n;->e(Ljava/lang/Class;LL/g;)LU/z;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, LU/m;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, LU/m;->g:LL/g;

    invoke-static {v0, v1}, LU/n;->e(Ljava/lang/Class;LL/g;)LU/z;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, LU/m;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, LU/m;->g:LL/g;

    invoke-static {v0, v1}, LU/n;->e(Ljava/lang/Class;LL/g;)LU/z;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
