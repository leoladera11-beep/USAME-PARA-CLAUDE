.class public final Lf1/c;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field public final y:Ld1/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Ld1/j;Lc1/o;Lc1/o;)V
    .locals 8

    const/16 v3, 0x10e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILM0/r0;Lb1/i;Lb1/j;I)V

    iput-object p4, v0, Lf1/c;->y:Ld1/j;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const v0, 0xc1fa340

    return v0
.end method

.method public final m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lf1/a;

    if-eqz v2, :cond_1

    check-cast v1, Lf1/a;

    return-object v1

    :cond_1
    new-instance v1, Lf1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lm1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final n()[La1/c;
    .locals 1

    sget-object v0, Ln1/b;->b:[La1/c;

    return-object v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lf1/c;->y:Ld1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.telemetry.service.START"

    return-object v0
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
