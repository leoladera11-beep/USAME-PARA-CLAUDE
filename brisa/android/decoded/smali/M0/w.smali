.class public final synthetic LM0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LM0/B;

.field public final synthetic g:LM0/z;


# direct methods
.method public synthetic constructor <init>(LM0/B;LM0/z;I)V
    .locals 0

    iput p3, p0, LM0/w;->e:I

    iput-object p1, p0, LM0/w;->f:LM0/B;

    iput-object p2, p0, LM0/w;->g:LM0/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LM0/w;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/w;->f:LM0/B;

    iget-object v1, p0, LM0/w;->g:LM0/z;

    iget-object v0, v0, Lz1/p;->e:Ljava/lang/Object;

    instance-of v0, v0, Lz1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, LM0/z;->p()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LM0/w;->f:LM0/B;

    iget-object v1, p0, LM0/w;->g:LM0/z;

    iput-object v1, v0, LM0/B;->m:LM0/z;

    iget-boolean v2, v0, LM0/B;->n:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lz1/p;->k(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, LM0/w;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, LM0/w;-><init>(LM0/B;LM0/z;I)V

    new-instance v1, LM0/A;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, v1}, Lz1/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
