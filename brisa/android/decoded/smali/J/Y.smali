.class public final synthetic LJ/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;ZZI)V
    .locals 0

    iput p5, p0, LJ/Y;->e:I

    iput-object p1, p0, LJ/Y;->i:Ljava/lang/Object;

    iput-object p2, p0, LJ/Y;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p3, p0, LJ/Y;->g:Z

    iput-boolean p4, p0, LJ/Y;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LJ/Y;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/Y;->i:Ljava/lang/Object;

    check-cast v0, LJ/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iget-object v2, p0, LJ/Y;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, LJ/Z;->f:Ljava/lang/Object;

    check-cast v0, LN0/O;

    iget-boolean v1, p0, LJ/Y;->g:Z

    iget-boolean v2, p0, LJ/Y;->h:Z

    invoke-virtual {v0, v1, v2}, LN0/O;->k0(ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, LJ/Y;->i:Ljava/lang/Object;

    check-cast v0, LJ/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iget-object v2, p0, LJ/Y;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, LJ/Z;->f:Ljava/lang/Object;

    check-cast v0, LN0/O;

    iget-boolean v1, p0, LJ/Y;->g:Z

    iget-boolean v2, p0, LJ/Y;->h:Z

    invoke-static {v0, v1, v2}, LN0/O;->D(LN0/O;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
