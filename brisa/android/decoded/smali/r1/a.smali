.class public final Lr1/a;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"

# interfaces
.implements Lb1/b;


# instance fields
.field public final A:Landroid/os/Bundle;

.field public final B:Ljava/lang/Integer;

.field public final y:Z

.field public final z:LM0/r0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Landroid/os/Bundle;Lb1/i;Lb1/j;)V
    .locals 8

    const/16 v3, 0x2c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILM0/r0;Lb1/i;Lb1/j;I)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lr1/a;->y:Z

    iput-object v4, v0, Lr1/a;->z:LM0/r0;

    iput-object p4, v0, Lr1/a;->A:Landroid/os/Bundle;

    iget-object p1, v4, LM0/r0;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v0, Lr1/a;->B:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lr1/a;->y:Z

    return v0
.end method

.method public final m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lr1/c;

    if-eqz v2, :cond_1

    check-cast v1, Lr1/c;

    return-object v1

    :cond_1
    new-instance v1, Lr1/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lm1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final o()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lr1/a;->z:LM0/r0;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lr1/a;->A:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iget-object v0, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method
