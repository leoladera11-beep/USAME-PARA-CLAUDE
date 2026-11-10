.class public final LZ0/g;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"


# instance fields
.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lb1/k;I)V
    .locals 0

    iput p2, p0, LZ0/g;->n:I

    const-string p2, "GoogleApiClient must not be null"

    invoke-static {p1, p2}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lb1/k;)V

    const-string p1, "Api must not be null"

    sget-object p2, LW0/a;->a:LW0/c;

    invoke-static {p2, p1}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic D(Lcom/google/android/gms/common/api/Status;)Lb1/m;
    .locals 1

    iget v0, p0, LZ0/g;->n:I

    return-object p1
.end method

.method public final H(Lb1/b;)V
    .locals 4

    iget v0, p0, LZ0/g;->n:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LZ0/e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LZ0/k;

    new-instance v1, LZ0/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LZ0/f;-><init>(LZ0/g;I)V

    iget-object p1, p1, LZ0/e;->y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, v0, Lm1/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Lm1/f;->a:I

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v2, p1}, Lm1/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    invoke-virtual {v0, v2, p1}, Lm1/a;->w(Landroid/os/Parcel;I)V

    return-void

    :pswitch_0
    check-cast p1, LZ0/e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LZ0/k;

    new-instance v1, LZ0/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LZ0/f;-><init>(LZ0/g;I)V

    iget-object p1, p1, LZ0/e;->y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, v0, Lm1/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Lm1/f;->a:I

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v2, p1}, Lm1/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x66

    invoke-virtual {v0, v2, p1}, Lm1/a;->w(Landroid/os/Parcel;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->e:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    const-string v1, "Failed result must not be success"

    invoke-static {v1, v0}, Ld1/s;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->D(Lcom/google/android/gms/common/api/Status;)Lb1/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->G(Lb1/m;)V

    return-void
.end method
