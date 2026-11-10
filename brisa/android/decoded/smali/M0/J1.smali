.class public final synthetic LM0/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LM0/W1;

.field public final synthetic f:Landroid/os/IBinder;

.field public final synthetic g:LM0/i2;

.field public final synthetic h:LM0/X0;

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:LM0/T1;


# direct methods
.method public synthetic constructor <init>(LM0/W1;Landroid/os/IBinder;LM0/i2;LM0/X0;IILM0/T1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/J1;->e:LM0/W1;

    iput-object p2, p0, LM0/J1;->f:Landroid/os/IBinder;

    iput-object p3, p0, LM0/J1;->g:LM0/i2;

    iput-object p4, p0, LM0/J1;->h:LM0/X0;

    iput p5, p0, LM0/J1;->i:I

    iput p6, p0, LM0/J1;->j:I

    iput-object p7, p0, LM0/J1;->k:LM0/T1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, LM0/J1;->e:LM0/W1;

    iget-object v0, v0, LM0/W1;->b:LB/A;

    iget-object v1, p0, LM0/J1;->f:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, LB/A;->K(LM0/N0;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, LM0/J1;->g:LM0/i2;

    iget-object v3, p0, LM0/J1;->h:LM0/X0;

    iget v4, p0, LM0/J1;->i:I

    const/4 v5, -0x4

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, v2}, LB/A;->M(LM0/N0;LM0/i2;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, LM0/m2;

    invoke-direct {v0, v5}, LM0/m2;-><init>(I)V

    invoke-static {v3, v1, v4, v0}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    return-void

    :cond_2
    invoke-virtual {v0}, LB/A;->V()V

    iget-object v0, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/g;

    if-eqz v0, :cond_4

    iget-object v0, v0, LM0/g;->d:LM0/j2;

    iget v2, p0, LM0/J1;->j:I

    invoke-virtual {v0, v2}, LM0/j2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, LM0/J1;->k:LM0/T1;

    invoke-interface {v0, v3, v1, v4}, LM0/T1;->i(LM0/X0;LM0/N0;I)Ljava/lang/Object;

    return-void

    :cond_4
    new-instance v0, LM0/m2;

    invoke-direct {v0, v5}, LM0/m2;-><init>(I)V

    invoke-static {v3, v1, v4, v0}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    return-void
.end method
