.class public final synthetic LM0/L1;
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

.field public final synthetic j:LM0/o;


# direct methods
.method public synthetic constructor <init>(LM0/W1;Landroid/os/IBinder;LM0/i2;LM0/X0;ILM0/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/L1;->e:LM0/W1;

    iput-object p2, p0, LM0/L1;->f:Landroid/os/IBinder;

    iput-object p3, p0, LM0/L1;->g:LM0/i2;

    iput-object p4, p0, LM0/L1;->h:LM0/X0;

    iput p5, p0, LM0/L1;->i:I

    iput-object p6, p0, LM0/L1;->j:LM0/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, LM0/L1;->g:LM0/i2;

    iget-object v1, v0, LM0/i2;->b:Ljava/lang/String;

    iget-object v2, p0, LM0/L1;->h:LM0/X0;

    iget v5, p0, LM0/L1;->i:I

    const-string v3, "MediaSessionStub"

    move-object v4, v3

    iget-object v3, p0, LM0/L1;->e:LM0/W1;

    iget-object v6, v3, LM0/W1;->b:LB/A;

    iget-object v7, p0, LM0/L1;->f:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v7}, LB/A;->K(LM0/N0;)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {v0}, LM0/c;->d(LM0/i2;)LM0/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, v0, LM0/c;->j:Ljava/lang/Object;

    iget v9, v0, LM0/c;->b:I

    invoke-virtual {v0}, LM0/c;->b()Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t execute predefined custom command: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LM0/m2;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, LM0/m2;-><init>(I)V

    invoke-static {v2, v7, v5, v0}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    return-void

    :cond_2
    iget-object v1, v0, LM0/c;->a:LM0/i2;

    const/4 v4, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_4

    iget v1, v1, LM0/i2;->a:I

    const v2, 0x9c4a

    if-ne v1, v2, :cond_3

    move v4, v10

    :cond_3
    invoke-static {v4}, LF1/i;->o(Z)V

    new-instance v1, LM0/O1;

    invoke-direct {v1, v0}, LM0/O1;-><init>(LM0/c;)V

    new-instance v8, LM0/K1;

    const/4 v0, 0x1

    invoke-direct {v8, v1, v0}, LM0/K1;-><init>(LM0/T1;I)V

    const/4 v6, 0x0

    iget-object v4, p0, LM0/L1;->j:LM0/o;

    const v7, 0x9c4a

    invoke-virtual/range {v3 .. v8}, LM0/W1;->H0(LM0/o;ILM0/i2;ILM0/T1;)V

    return-void

    :cond_4
    invoke-virtual {v2}, LM0/X0;->x()V

    iget-object v1, v2, LM0/X0;->t:LM0/d2;

    if-eq v9, v10, :cond_5

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {v1}, LM0/d2;->z()Z

    move-result v1

    if-nez v1, :cond_7

    move v4, v10

    goto :goto_1

    :cond_6
    move-object v1, v8

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_7
    :goto_1
    if-eqz v4, :cond_8

    invoke-virtual {v3, v7, v5}, LM0/W1;->K0(LM0/N0;I)V

    goto :goto_2

    :cond_8
    const/16 v1, 0x1f

    if-ne v9, v1, :cond_9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, LG/P;

    new-instance v0, LI0/E;

    const/16 v2, 0xa

    invoke-direct {v0, v8, v2}, LI0/E;-><init>(Ljava/lang/Object;I)V

    new-instance v2, LM0/E1;

    const/16 v4, 0x17

    invoke-direct {v2, v4}, LM0/E1;-><init>(I)V

    new-instance v4, LM0/K;

    const/16 v8, 0xd

    invoke-direct {v4, v0, v2, v8}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, LM0/K1;

    const/4 v2, 0x1

    invoke-direct {v0, v4, v2}, LM0/K1;-><init>(LM0/T1;I)V

    invoke-virtual {v3, v7, v5, v1, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    goto :goto_2

    :cond_9
    new-instance v1, LM0/O1;

    invoke-direct {v1, v0}, LM0/O1;-><init>(LM0/c;)V

    invoke-static {v1}, LM0/W1;->R0(LJ/k;)LI0/E;

    move-result-object v0

    invoke-virtual {v3, v7, v5, v9, v0}, LM0/W1;->M0(LM0/N0;IILM0/T1;)V

    :goto_2
    invoke-virtual {v6, v7}, LB/A;->w(LM0/N0;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Failed to convert predefined custom command: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, LM0/m2;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, LM0/m2;-><init>(I)V

    invoke-static {v2, v7, v5, v0}, LM0/W1;->Q0(LM0/X0;LM0/N0;ILM0/m2;)V

    return-void
.end method
