.class public final Ld1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld1/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ld1/d;Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Ld1/d;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Ld1/d;->f:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Ld1/d;->g:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Ld1/d;->h:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Ld1/d;->i:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    invoke-static {p1, v2}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v2}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x6

    iget-object v2, p0, Ld1/d;->j:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->m(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Ld1/d;->k:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->j(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0x8

    iget-object v2, p0, Ld1/d;->l:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Ld1/d;->m:[La1/c;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->m(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Ld1/d;->n:[La1/c;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->m(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Ld1/d;->o:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, v3}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Ld1/d;->p:I

    const/16 v1, 0xd

    invoke-static {p1, v1, v3}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Ld1/d;->q:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, v3}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    iget-object p0, p0, Ld1/d;->r:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ld1/A;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lz/E;

    invoke-direct {v2, v1}, Lz/E;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_0
    new-instance v2, Lz/B;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lz/B;->i:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lz/B;->j:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lz/B;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lz/B;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lz/B;->f:Ljava/util/ArrayList;

    sget-object v3, Lz/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lz/b;

    iput-object v3, v2, Lz/B;->g:[Lz/b;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lz/B;->h:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lz/B;->i:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lz/B;->j:Ljava/util/ArrayList;

    sget-object v3, Lz/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lz/B;->k:Ljava/util/ArrayList;

    sget-object v3, Lz/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Lz/B;->l:Ljava/util/ArrayList;

    return-object v2

    :pswitch_1
    new-instance v2, Lz/x;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lz/x;->e:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v2, Lz/x;->f:I

    return-object v2

    :pswitch_2
    new-instance v2, Lz/c;

    invoke-direct {v2, v1}, Lz/c;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_3
    new-instance v2, Lz/b;

    invoke-direct {v2, v1}, Lz/b;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_4
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_3

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    invoke-static {v1, v6}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v4, Ld1/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Ld1/o;

    goto :goto_0

    :cond_1
    sget-object v3, La1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, La1/a;

    goto :goto_0

    :cond_2
    invoke-static {v1, v6}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Lr1/e;

    invoke-direct {v1, v5, v3, v4}, Lr1/e;-><init>(ILa1/a;Ld1/o;)V

    return-object v1

    :pswitch_5
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_7

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    invoke-static {v1, v6}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-static {v1, v6}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    invoke-static {v1, v6}, LV0/a;->o(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-nez v4, :cond_6

    move-object v4, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    add-int/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v4, v7

    goto :goto_1

    :cond_7
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Lr1/d;

    invoke-direct {v1, v5, v4}, Lr1/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1

    :pswitch_6
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v2, :cond_b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    invoke-static {v1, v6}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_8
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_2

    :cond_9
    invoke-static {v1, v6}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_2

    :cond_a
    invoke-static {v1, v6}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :cond_b
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Lr1/b;

    invoke-direct {v1, v4, v5, v3}, Lr1/b;-><init>(IILandroid/content/Intent;)V

    return-object v1

    :pswitch_7
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Ld1/d;->s:[Lcom/google/android/gms/common/api/Scope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Ld1/d;->t:[La1/c;

    move-object v15, v3

    move-object v14, v4

    move-object v12, v5

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v22, v16

    move v9, v6

    move v10, v9

    move v11, v10

    move/from16 v19, v11

    move/from16 v20, v19

    move/from16 v21, v20

    move-object/from16 v17, v7

    move-object/from16 v18, v17

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_1

    :pswitch_8
    invoke-static {v1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_9
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    :pswitch_a
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v21

    goto :goto_3

    :pswitch_b
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v20

    goto :goto_3

    :pswitch_c
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_3

    :pswitch_d
    sget-object v4, La1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [La1/c;

    goto :goto_3

    :pswitch_e
    sget-object v4, La1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, [La1/c;

    goto :goto_3

    :pswitch_f
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/accounts/Account;

    goto :goto_3

    :pswitch_10
    invoke-static {v1, v3}, LV0/a;->c(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v15

    goto :goto_3

    :pswitch_11
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_3

    :pswitch_12
    invoke-static {v1, v3}, LV0/a;->o(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_c

    move-object v13, v5

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v13, v6

    goto :goto_3

    :pswitch_13
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_14
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_3

    :pswitch_15
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_3

    :pswitch_16
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_3

    :cond_d
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v8, Ld1/d;

    invoke-direct/range {v8 .. v22}, Ld1/d;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[La1/c;[La1/c;ZIZLjava/lang/String;)V

    return-object v8

    :pswitch_17
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v9, v6

    move-object v11, v9

    move v7, v4

    move v8, v7

    move v10, v8

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_10

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_2

    invoke-static {v1, v4}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_18
    invoke-static {v1, v4}, LV0/a;->o(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_e

    move-object v11, v3

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_4

    :pswitch_19
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_4

    :pswitch_1a
    invoke-static {v1, v4}, LV0/a;->o(Landroid/os/Parcel;I)I

    move-result v4

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-nez v4, :cond_f

    move-object v9, v3

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_4

    :pswitch_1b
    invoke-static {v1, v4}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_4

    :pswitch_1c
    invoke-static {v1, v4}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_4

    :pswitch_1d
    sget-object v5, Ld1/h;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v5}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ld1/h;

    goto :goto_4

    :cond_10
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v5, Ld1/c;

    invoke-direct/range {v5 .. v11}, Ld1/c;-><init>(Ld1/h;ZZ[II[I)V

    return-object v5

    :pswitch_1e
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move-object v4, v5

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v2, :cond_15

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_14

    const/4 v9, 0x2

    if-eq v8, v9, :cond_13

    const/4 v9, 0x3

    if-eq v8, v9, :cond_12

    const/4 v9, 0x4

    if-eq v8, v9, :cond_11

    invoke-static {v1, v7}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_11
    sget-object v5, Ld1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v5}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Ld1/c;

    goto :goto_5

    :cond_12
    invoke-static {v1, v7}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_5

    :cond_13
    sget-object v4, La1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v7, v4}, LV0/a;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [La1/c;

    goto :goto_5

    :cond_14
    invoke-static {v1, v7}, LV0/a;->c(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_5

    :cond_15
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Ld1/z;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Ld1/z;->e:Landroid/os/Bundle;

    iput-object v4, v1, Ld1/z;->f:[La1/c;

    iput v6, v1, Ld1/z;->g:I

    iput-object v5, v1, Ld1/z;->h:Ld1/c;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_17
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_8
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld1/A;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lz/E;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lz/B;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lz/x;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Lz/c;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Lz/b;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Lr1/e;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Lr1/d;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Lr1/b;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Ld1/d;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Ld1/c;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Ld1/z;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
