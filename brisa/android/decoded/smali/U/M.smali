.class public final synthetic LU/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LU/T;


# direct methods
.method public synthetic constructor <init>(LU/T;I)V
    .locals 0

    iput p2, p0, LU/M;->e:I

    iput-object p1, p0, LU/M;->f:LU/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LU/M;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU/M;->f:LU/T;

    iget-boolean v1, v0, LU/T;->X:Z

    if-nez v1, :cond_0

    iget-object v1, v0, LU/T;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, LU/x;->a(LU/b0;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LU/M;->f:LU/T;

    invoke-virtual {v0}, LU/T;->z()V

    return-void

    :pswitch_1
    iget-object v0, p0, LU/M;->f:LU/T;

    const/4 v1, 0x1

    iput-boolean v1, v0, LU/T;->R:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
