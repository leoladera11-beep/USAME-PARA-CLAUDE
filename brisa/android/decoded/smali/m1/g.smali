.class public final Lm1/g;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field public final y:LW0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;LW0/d;Lc1/o;Lc1/o;)V
    .locals 8

    const/16 v3, 0x44

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILM0/r0;Lb1/i;Lb1/j;I)V

    new-instance p1, LW0/c;

    if-nez p4, :cond_0

    sget-object p4, LW0/d;->g:LW0/d;

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, LW0/c;-><init>(IZ)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, LW0/c;->f:Ljava/lang/Object;

    iget-boolean p2, p4, LW0/d;->e:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, LW0/c;->f:Ljava/lang/Object;

    iget-object p2, p4, LW0/d;->f:Ljava/lang/String;

    iput-object p2, p1, LW0/c;->g:Ljava/lang/Object;

    invoke-static {}, Lm1/d;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, LW0/c;->g:Ljava/lang/Object;

    new-instance p2, LW0/d;

    invoke-direct {p2, p1}, LW0/d;-><init>(LW0/c;)V

    iput-object p2, v0, Lm1/g;->y:LW0/d;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lm1/h;

    if-eqz v2, :cond_1

    check-cast v1, Lm1/h;

    return-object v1

    :cond_1
    new-instance v1, Lm1/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lm1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final o()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lm1/g;->y:LW0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "consumer_package"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "force_save_dialog"

    iget-boolean v3, v0, LW0/d;->e:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "log_session_id"

    iget-object v0, v0, LW0/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method
