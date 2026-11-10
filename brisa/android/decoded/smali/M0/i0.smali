.class public final LM0/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final synthetic b:LM0/l0;


# direct methods
.method public constructor <init>(LM0/l0;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/i0;->b:LM0/l0;

    iput-object p2, p0, LM0/i0;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, LM0/i0;->b:LM0/l0;

    iget-object p1, p1, LM0/l0;->a:LM0/z;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LH/a;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    const-string v0, "MCImplBase"

    iget-object v1, p0, LM0/i0;->b:LM0/l0;

    iget-object v2, v1, LM0/l0;->e:LM0/o2;

    iget-object v3, v1, LM0/l0;->a:LM0/z;

    const-string v4, "Service "

    const-string v5, "Expected connection to "

    :try_start_0
    iget-object v6, v2, LM0/o2;->a:LM0/n2;

    invoke-interface {v6}, LM0/n2;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, LM0/o2;->a:LM0/n2;

    invoke-interface {v1}, LM0/n2;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but is connected to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, LH/a;

    const/4 p2, 0x3

    invoke-direct {p1, v3, p2}, LH/a;-><init>(Ljava/lang/Object;I)V

    :goto_0
    invoke-virtual {v3, p1}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {p2}, LM0/x1;->w(Landroid/os/IBinder;)LM0/s;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "Service interface is missing."

    invoke-static {v0, p2}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, LH/a;

    const/4 p2, 0x3

    invoke-direct {p1, v3, p2}, LH/a;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, LM0/h;

    iget-object v5, v1, LM0/l0;->d:Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iget-object v7, p0, LM0/i0;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5, v6, v7}, LM0/h;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    invoke-virtual {v2}, LM0/h;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p2, v1, v2}, LM0/s;->S(LM0/o;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has died prematurely"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, LH/a;

    const/4 p2, 0x3

    invoke-direct {p1, v3, p2}, LH/a;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LH/a;

    const/4 v0, 0x3

    invoke-direct {p2, v3, v0}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, p2}, LM0/z;->X0(Ljava/lang/Runnable;)V

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, LM0/i0;->b:LM0/l0;

    iget-object p1, p1, LM0/l0;->a:LM0/z;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LH/a;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void
.end method
