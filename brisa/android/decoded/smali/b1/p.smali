.class public final Lb1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field public static final b:Lb1/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb1/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb1/p;-><init>(I)V

    sput-object v0, Lb1/p;->b:Lb1/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lb1/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lb1/p;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-static {p1, v5}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v3, La1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v3}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, La1/a;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v2}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    invoke-static {p1, v5}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p1, v5}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v4, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    return-object p1

    :pswitch_0
    invoke-static {p1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    invoke-static {p1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_5
    invoke-static {p1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {p1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_1

    :cond_7
    invoke-static {p1, v0}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object p1

    :pswitch_1
    invoke-static {p1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v1

    move v3, v2

    move v4, v3

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v1, :cond_b

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    const/4 v8, 0x3

    if-eq v7, v8, :cond_9

    const/4 v8, 0x4

    if-eq v7, v8, :cond_8

    invoke-static {p1, v6}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_8
    invoke-static {p1, v6}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_2

    :cond_9
    invoke-static {p1, v6}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :cond_a
    invoke-static {p1, v6}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_2

    :cond_b
    invoke-static {p1, v6}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_2

    :cond_c
    invoke-static {p1, v0}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance p1, Lb1/f;

    invoke-direct {p1, v2, v3, v4, v5}, Lb1/f;-><init>(IIIZ)V

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, -0xc2a5d3a

    if-ne v1, v2, :cond_f

    invoke-static {p1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    invoke-static {p1, v2}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_d
    sget-object v1, Lb1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lb1/f;

    goto :goto_3

    :cond_e
    invoke-static {p1, v0}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance p1, Lb1/e;

    invoke-direct {p1, v1}, Lb1/e;-><init>(Lb1/f;)V

    goto :goto_4

    :cond_f
    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p1, Lb1/e;->f:Lb1/e;

    :goto_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb1/p;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lb1/f;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lb1/e;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
