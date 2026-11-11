.class public final LN0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LN0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, LN0/g;->a:I

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_5

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v9, v3

    if-eq v9, v8, :cond_4

    if-eq v9, v7, :cond_3

    if-eq v9, v6, :cond_2

    if-eq v9, v5, :cond_1

    if-eq v9, v4, :cond_0

    invoke-static {v1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :cond_4
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v11

    goto :goto_0

    :cond_5
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v10, Ld1/h;

    invoke-direct/range {v10 .. v15}, Ld1/h;-><init>(IIIZZ)V

    return-object v10

    :pswitch_0
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move v12, v9

    move v15, v12

    move/from16 v16, v15

    move-object v13, v10

    move-object v14, v13

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v9, v3

    if-eq v9, v8, :cond_b

    if-eq v9, v7, :cond_9

    if-eq v9, v6, :cond_8

    if-eq v9, v5, :cond_7

    if-eq v9, v4, :cond_6

    invoke-static {v1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_6
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v16

    goto :goto_1

    :cond_7
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_1

    :cond_8
    sget-object v9, La1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v9}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v14, v3

    check-cast v14, La1/a;

    goto :goto_1

    :cond_9
    invoke-static {v1, v3}, LV0/a;->o(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-nez v3, :cond_a

    move-object v13, v10

    goto :goto_1

    :cond_a
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    add-int/2addr v9, v3

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v13, v11

    goto :goto_1

    :cond_b
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v12

    goto :goto_1

    :cond_c
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v11, Ld1/o;

    invoke-direct/range {v11 .. v16}, Ld1/o;-><init>(ILandroid/os/IBinder;La1/a;ZZ)V

    return-object v11

    :pswitch_1
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move v3, v9

    move-object v4, v10

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ge v11, v2, :cond_11

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    int-to-char v12, v11

    if-eq v12, v8, :cond_10

    if-eq v12, v7, :cond_f

    if-eq v12, v6, :cond_e

    if-eq v12, v5, :cond_d

    invoke-static {v1, v11}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_d
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v11, v4}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_2

    :cond_e
    invoke-static {v1, v11}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_2

    :cond_f
    sget-object v10, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v11, v10}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/accounts/Account;

    goto :goto_2

    :cond_10
    invoke-static {v1, v11}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_2

    :cond_11
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Ld1/n;

    invoke-direct {v1, v9, v10, v3, v4}, Ld1/n;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v1

    :pswitch_2
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    move/from16 v22, v4

    move-wide v15, v5

    move-wide/from16 v17, v15

    move v12, v9

    move v13, v12

    move v14, v13

    move/from16 v21, v14

    move-object/from16 v19, v10

    move-object/from16 v20, v19

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_12

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    packed-switch v5, :pswitch_data_1

    invoke-static {v1, v4}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_3
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v22, v4

    goto :goto_3

    :pswitch_4
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v21, v4

    goto :goto_3

    :pswitch_5
    invoke-static {v1, v4}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_3

    :pswitch_6
    invoke-static {v1, v4}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_3

    :pswitch_7
    invoke-static {v1, v4, v3}, LV0/a;->z(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_3

    :pswitch_8
    invoke-static {v1, v4, v3}, LV0/a;->z(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_3

    :pswitch_9
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    move v14, v4

    goto :goto_3

    :pswitch_a
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    move v13, v4

    goto :goto_3

    :pswitch_b
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v4

    move v12, v4

    goto :goto_3

    :cond_12
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v11, Ld1/f;

    invoke-direct/range {v11 .. v22}, Ld1/f;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v11

    :pswitch_c
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_15

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_14

    if-eq v4, v7, :cond_13

    invoke-static {v1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_13
    sget-object v4, Ld1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->g(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_4

    :cond_14
    invoke-static {v1, v3}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_4

    :cond_15
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Ld1/i;

    invoke-direct {v1, v9, v10}, Ld1/i;-><init>(ILjava/util/List;)V

    return-object v1

    :pswitch_d
    new-instance v2, Ld/d;

    invoke-direct {v2, v1}, Ld/d;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_e
    new-instance v2, Ld/a;

    invoke-direct {v2, v1}, Ld/a;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_f
    new-instance v2, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    return-object v2

    :pswitch_10
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_11
    sget-object v2, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    check-cast v1, Landroid/media/MediaDescription;

    invoke-static {v1}, Landroid/support/v4/media/a;->g(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1}, Landroid/support/v4/media/a;->i(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v1}, Landroid/support/v4/media/a;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v1}, Landroid/support/v4/media/a;->c(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v1}, Landroid/support/v4/media/a;->e(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-static {v1}, Landroid/support/v4/media/a;->f(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v17

    invoke-static {v1}, Landroid/support/v4/media/a;->d(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v2}, Landroid/support/v4/media/session/b;->i(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_16
    const-string v3, "android.support.v4.media.description.MEDIA_URI"

    if-eqz v2, :cond_17

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_5

    :cond_17
    move-object v4, v10

    :goto_5
    if-eqz v4, :cond_19

    const-string v5, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    move-result v6

    if-ne v6, v7, :cond_18

    move-object/from16 v18, v10

    goto :goto_6

    :cond_18
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v18, v2

    :goto_6
    if-eqz v4, :cond_1a

    :goto_7
    move-object/from16 v19, v4

    goto :goto_8

    :cond_1a
    invoke-static {v1}, Landroid/support/v4/media/b;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_7

    :goto_8
    new-instance v11, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct/range {v11 .. v19}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    iput-object v1, v11, Landroid/support/v4/media/MediaDescriptionCompat;->m:Landroid/media/MediaDescription;

    move-object v10, v11

    :cond_1b
    return-object v10

    :pswitch_12
    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_13
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    const-wide/16 v4, -0x1

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ge v11, v2, :cond_1f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    int-to-char v12, v11

    if-eq v12, v8, :cond_1e

    if-eq v12, v7, :cond_1d

    if-eq v12, v6, :cond_1c

    invoke-static {v1, v11}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_1c
    invoke-static {v1, v11, v3}, LV0/a;->z(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    goto :goto_9

    :cond_1d
    invoke-static {v1, v11}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_9

    :cond_1e
    invoke-static {v1, v11}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_1f
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, La1/c;

    invoke-direct {v1, v10, v9, v4, v5}, La1/c;-><init>(Ljava/lang/String;IJ)V

    return-object v1

    :pswitch_14
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move v3, v9

    move-object v4, v10

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ge v11, v2, :cond_24

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    int-to-char v12, v11

    if-eq v12, v8, :cond_23

    if-eq v12, v7, :cond_22

    if-eq v12, v6, :cond_21

    if-eq v12, v5, :cond_20

    invoke-static {v1, v11}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_20
    invoke-static {v1, v11}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_21
    sget-object v10, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v11, v10}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    goto :goto_a

    :cond_22
    invoke-static {v1, v11}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_a

    :cond_23
    invoke-static {v1, v11}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_a

    :cond_24
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, La1/a;

    invoke-direct {v1, v9, v3, v10, v4}, La1/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v1

    :pswitch_15
    new-instance v2, La/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget v3, La/c;->b:I

    if-nez v1, :cond_25

    goto :goto_b

    :cond_25
    const-string v3, "android.support.v4.os.IResultReceiver"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_26

    instance-of v4, v3, La/b;

    if-eqz v4, :cond_26

    move-object v10, v3

    check-cast v10, La/b;

    goto :goto_b

    :cond_26
    new-instance v10, La/a;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v1, v10, La/a;->a:Landroid/os/IBinder;

    :goto_b
    iput-object v10, v2, La/d;->e:La/b;

    return-object v2

    :pswitch_16
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move-object v3, v10

    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v2, :cond_29

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    if-eq v6, v7, :cond_28

    if-eq v6, v4, :cond_27

    invoke-static {v1, v5}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_27
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    goto :goto_c

    :cond_28
    invoke-static {v1, v5}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_29
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-direct {v1, v10, v3}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v1

    :pswitch_17
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move v3, v9

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v2, :cond_2d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v8, :cond_2c

    if-eq v5, v7, :cond_2b

    if-eq v5, v6, :cond_2a

    invoke-static {v1, v4}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_2a
    invoke-static {v1, v4}, LV0/a;->c(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v10

    goto :goto_d

    :cond_2b
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_d

    :cond_2c
    invoke-static {v1, v4}, LV0/a;->n(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_d

    :cond_2d
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v1, LZ0/a;

    invoke-direct {v1, v9, v3, v10}, LZ0/a;-><init>(IILandroid/os/Bundle;)V

    return-object v1

    :pswitch_18
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move-object v4, v10

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v11, v3

    packed-switch v11, :pswitch_data_2

    invoke-static {v1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_19
    sget-object v9, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v9}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/app/PendingIntent;

    goto :goto_e

    :pswitch_1a
    sget-object v8, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v8}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_e

    :pswitch_1b
    invoke-static {v1, v3}, LV0/a;->o(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v3, :cond_2e

    move-object v7, v10

    goto :goto_e

    :cond_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v11

    add-int/2addr v7, v3

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v7, v11

    goto :goto_e

    :pswitch_1c
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :pswitch_1d
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :pswitch_1e
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_2f
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v3, LX0/a;

    invoke-direct/range {v3 .. v9}, LX0/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Landroid/app/PendingIntent;)V

    return-object v3

    :pswitch_1f
    invoke-static {v1}, LV0/a;->y(Landroid/os/Parcel;)I

    move-result v2

    move v14, v9

    move v15, v14

    move/from16 v19, v15

    move/from16 v21, v19

    move-object v12, v10

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v20, v18

    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_30

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    packed-switch v4, :pswitch_data_3

    invoke-static {v1, v3}, LV0/a;->u(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_20
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v21

    goto :goto_f

    :pswitch_21
    invoke-static {v1, v3}, LV0/a;->c(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v20

    goto :goto_f

    :pswitch_22
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v19

    goto :goto_f

    :pswitch_23
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_f

    :pswitch_24
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_f

    :pswitch_25
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->d(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/accounts/Account;

    goto :goto_f

    :pswitch_26
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_f

    :pswitch_27
    invoke-static {v1, v3}, LV0/a;->l(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_f

    :pswitch_28
    invoke-static {v1, v3}, LV0/a;->e(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :pswitch_29
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LV0/a;->g(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_f

    :cond_30
    invoke-static {v1, v2}, LV0/a;->i(Landroid/os/Parcel;I)V

    new-instance v11, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-object v11

    :pswitch_2a
    new-instance v2, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v2, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_2b
    new-instance v2, LR0/Z;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/Z;->e:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/Z;->f:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/Z;->g:I

    if-lez v3, :cond_31

    new-array v3, v3, [I

    iput-object v3, v2, LR0/Z;->h:[I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/Z;->i:I

    if-lez v3, :cond_32

    new-array v3, v3, [I

    iput-object v3, v2, LR0/Z;->j:[I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v8, :cond_33

    move v3, v8

    goto :goto_10

    :cond_33
    move v3, v9

    :goto_10
    iput-boolean v3, v2, LR0/Z;->l:Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v8, :cond_34

    move v3, v8

    goto :goto_11

    :cond_34
    move v3, v9

    :goto_11
    iput-boolean v3, v2, LR0/Z;->m:Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v8, :cond_35

    goto :goto_12

    :cond_35
    move v8, v9

    :goto_12
    iput-boolean v8, v2, LR0/Z;->n:Z

    const-class v3, LR0/Y;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, LR0/Z;->k:Ljava/util/ArrayList;

    return-object v2

    :pswitch_2c
    new-instance v2, LR0/Y;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/Y;->e:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/Y;->f:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v8, :cond_36

    goto :goto_13

    :cond_36
    move v8, v9

    :goto_13
    iput-boolean v8, v2, LR0/Y;->h:Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_37

    new-array v3, v3, [I

    iput-object v3, v2, LR0/Y;->g:[I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_37
    return-object v2

    :pswitch_2d
    new-instance v2, LR0/t;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/t;->e:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, LR0/t;->f:I

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v8, :cond_38

    goto :goto_14

    :cond_38
    move v8, v9

    :goto_14
    iput-boolean v8, v2, LR0/t;->g:Z

    return-object v2

    :pswitch_2e
    new-instance v2, LN0/V;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {v2, v1, v3}, LN0/V;-><init>(FI)V

    return-object v2

    :pswitch_2f
    new-instance v2, LN0/T;

    invoke-direct {v2, v1}, LN0/T;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_30
    new-instance v2, LN0/U;

    invoke-direct {v2, v1}, LN0/U;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_31
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$Token;

    new-instance v2, LN0/N;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v10}, LN0/N;-><init>(Landroid/media/session/MediaSession$Token;LN0/d;)V

    return-object v2

    :pswitch_32
    new-instance v2, LN0/M;

    invoke-direct {v2, v1}, LN0/M;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_33
    new-instance v2, LN0/D;

    invoke-direct {v2, v1}, LN0/D;-><init>(Landroid/os/Parcel;)V

    return-object v2

    :pswitch_34
    sget-object v2, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaDescription;

    invoke-static {v1}, LN0/C;->a(Landroid/media/MediaDescription;)LN0/C;

    move-result-object v1

    return-object v1

    :pswitch_35
    new-instance v2, LN0/h;

    invoke-direct {v2, v1}, LN0/h;-><init>(Landroid/os/Parcel;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_1f
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, LN0/g;->a:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Ld1/h;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Ld1/o;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Ld1/n;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ld1/f;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ld1/i;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Ld/d;

    return-object p1

    :pswitch_5
    new-array p1, p1, [Ld/a;

    return-object p1

    :pswitch_6
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    return-object p1

    :pswitch_7
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object p1

    :pswitch_8
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p1

    :pswitch_9
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object p1

    :pswitch_a
    new-array p1, p1, [La1/c;

    return-object p1

    :pswitch_b
    new-array p1, p1, [La1/a;

    return-object p1

    :pswitch_c
    new-array p1, p1, [La/d;

    return-object p1

    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    return-object p1

    :pswitch_e
    new-array p1, p1, [LZ0/a;

    return-object p1

    :pswitch_f
    new-array p1, p1, [LX0/a;

    return-object p1

    :pswitch_10
    new-array p1, p1, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    return-object p1

    :pswitch_11
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p1

    :pswitch_12
    new-array p1, p1, [LR0/Z;

    return-object p1

    :pswitch_13
    new-array p1, p1, [LR0/Y;

    return-object p1

    :pswitch_14
    new-array p1, p1, [LR0/t;

    return-object p1

    :pswitch_15
    new-array p1, p1, [LN0/V;

    return-object p1

    :pswitch_16
    new-array p1, p1, [LN0/T;

    return-object p1

    :pswitch_17
    new-array p1, p1, [LN0/U;

    return-object p1

    :pswitch_18
    new-array p1, p1, [LN0/N;

    return-object p1

    :pswitch_19
    new-array p1, p1, [LN0/M;

    return-object p1

    :pswitch_1a
    new-array p1, p1, [LN0/D;

    return-object p1

    :pswitch_1b
    new-array p1, p1, [LN0/C;

    return-object p1

    :pswitch_1c
    new-array p1, p1, [LN0/h;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
