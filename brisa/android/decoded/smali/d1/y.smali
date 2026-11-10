.class public final Ld1/y;
.super Ld1/p;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/google/android/gms/common/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Ld1/y;->g:Lcom/google/android/gms/common/internal/a;

    invoke-direct {p0, p1, p2, p3}, Ld1/p;-><init>(Lcom/google/android/gms/common/internal/a;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(La1/a;)V
    .locals 1

    iget-object v0, p0, Ld1/y;->g:Lcom/google/android/gms/common/internal/a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/a;->i:Ld1/b;

    invoke-interface {v0, p1}, Ld1/b;->a(La1/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Ld1/y;->g:Lcom/google/android/gms/common/internal/a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/a;->i:Ld1/b;

    sget-object v1, La1/a;->i:La1/a;

    invoke-interface {v0, v1}, Ld1/b;->a(La1/a;)V

    const/4 v0, 0x1

    return v0
.end method
