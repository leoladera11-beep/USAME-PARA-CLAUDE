.class public final LM0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/A0;


# static fields
.field public static final h:Lt1/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Landroid/app/NotificationManager;

.field public d:LM0/l;

.field public final e:I

.field public f:LJ/d;

.field public g:LN0/O;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LL/i;-><init>(I)V

    invoke-static {v0}, LS1/e;->o(Lt1/t;)Lt1/t;

    move-result-object v0

    sput-object v0, LM0/m;->h:Lt1/t;

    return-void
.end method

.method public constructor <init>(LM0/k;)V
    .locals 1

    iget-object v0, p1, LM0/k;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget p1, p1, LM0/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LM0/m;->a:Landroid/content/Context;

    iput p1, p0, LM0/m;->b:I

    const-string p1, "notification"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LM0/m;->c:Landroid/app/NotificationManager;

    const p1, 0x7f0700b6

    iput p1, p0, LM0/m;->e:I

    return-void
.end method


# virtual methods
.method public final a(LM0/P0;Lu1/P;La1/g;LM0/E;)LZ0/i;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    iget v3, v1, LM0/m;->b:I

    iget-object v4, v1, LM0/m;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, LJ/W;->a:Ljava/lang/String;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v6, v1, LM0/m;->c:Landroid/app/NotificationManager;

    const-string v7, "default_channel_id"

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/app/NotificationChannel;

    invoke-direct {v8, v7, v3, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/16 v3, 0x1b

    if-gt v5, v3, :cond_1

    invoke-virtual {v8, v9}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    :cond_1
    invoke-virtual {v6, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_0
    iget-object v3, v0, LM0/P0;->a:LM0/X0;

    iget-object v5, v0, LM0/P0;->a:LM0/X0;

    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v3, v3, LM0/X0;->t:LM0/d2;

    iget-object v3, v3, LM0/d2;->a:LG/g0;

    new-instance v6, Lk/i;

    invoke-direct {v6, v4, v7}, Lk/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, LM0/X1;

    invoke-direct {v7, v0}, LM0/X1;-><init>(LM0/P0;)V

    invoke-interface {v3}, LG/g0;->w()LG/c0;

    move-result-object v0

    iget-boolean v8, v5, LM0/X0;->p:Z

    iget-object v11, v5, LM0/X0;->i:Ljava/lang/String;

    invoke-static {v3, v8}, LJ/W;->Q(LG/g0;Z)Z

    move-result v8

    const/16 v12, 0xa

    const/4 v13, 0x1

    move-object/from16 v14, p2

    invoke-static {v14, v13, v13, v12}, LM0/c;->j(Ljava/util/List;ZZI)Lu1/C0;

    move-result-object v12

    invoke-static {v10, v12}, LM0/c;->c(ILjava/util/List;)Z

    move-result v14

    const/4 v15, 0x3

    invoke-static {v15, v12}, LM0/c;->c(ILjava/util/List;)Z

    move-result v16

    new-instance v10, Lu1/M;

    const/4 v15, 0x4

    invoke-direct {v10, v15}, Lu1/I;-><init>(I)V

    const/4 v15, 0x6

    if-eqz v14, :cond_2

    invoke-virtual {v12, v9}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LM0/c;

    invoke-virtual {v10, v14}, Lu1/I;->c(Ljava/lang/Object;)V

    move v9, v13

    goto :goto_1

    :cond_2
    const/4 v14, 0x7

    filled-new-array {v14, v15}, [I

    move-result-object v14

    iget-object v9, v0, LG/c0;->a:LG/u;

    invoke-virtual {v9, v14}, LG/u;->a([I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, LG2/a;

    const v14, 0xe045

    invoke-direct {v9, v14}, LG2/a;-><init>(I)V

    invoke-virtual {v9, v15}, LG2/a;->c(I)V

    const v14, 0x7f0d005e

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, LG2/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v9}, LG2/a;->a()LM0/c;

    move-result-object v9

    invoke-virtual {v10, v9}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v0, v13}, LG/c0;->a(I)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v8, :cond_4

    new-instance v8, LG2/a;

    const v14, 0xe034

    invoke-direct {v8, v14}, LG2/a;-><init>(I)V

    invoke-virtual {v8, v13}, LG2/a;->c(I)V

    const v14, 0x7f0d0059

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, LG2/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v8}, LG2/a;->a()LM0/c;

    move-result-object v8

    invoke-virtual {v10, v8}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v8, LG2/a;

    const v14, 0xe037

    invoke-direct {v8, v14}, LG2/a;-><init>(I)V

    invoke-virtual {v8, v13}, LG2/a;->c(I)V

    const v14, 0x7f0d005a

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, LG2/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v8}, LG2/a;->a()LM0/c;

    move-result-object v8

    invoke-virtual {v10, v8}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    const/16 v8, 0x8

    if-eqz v16, :cond_6

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v12, v9}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LM0/c;

    invoke-virtual {v10, v9}, Lu1/I;->c(Ljava/lang/Object;)V

    move v9, v0

    goto :goto_3

    :cond_6
    const/16 v14, 0x9

    filled-new-array {v14, v8}, [I

    move-result-object v14

    iget-object v0, v0, LG/c0;->a:LG/u;

    invoke-virtual {v0, v14}, LG/u;->a([I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, LG2/a;

    const v14, 0xe044

    invoke-direct {v0, v14}, LG2/a;-><init>(I)V

    invoke-virtual {v0, v8}, LG2/a;->c(I)V

    const v14, 0x7f0d005d

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, LG2/a;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0}, LG2/a;->a()LM0/c;

    move-result-object v0

    invoke-virtual {v10, v0}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    iget v0, v12, Lu1/C0;->h:I

    if-ge v9, v0, :cond_8

    invoke-virtual {v12, v9}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/c;

    invoke-virtual {v10, v0}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v10}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    const/4 v9, 0x3

    new-array v10, v9, [I

    new-array v12, v9, [I

    const/4 v9, -0x1

    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v12, v9}, Ljava/util/Arrays;->fill([II)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_4
    iget v8, v0, Lu1/C0;->h:I

    const-class v15, Lcom/brisa/local/VideoPlaybackService;

    const/16 v18, 0x56

    if-ge v14, v8, :cond_17

    invoke-virtual {v0, v14}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LM0/c;

    iget-object v9, v8, LM0/c;->a:LM0/i2;

    iget v13, v8, LM0/c;->b:I

    move-object/from16 v19, v0

    iget-object v0, v8, LM0/c;->f:Ljava/lang/CharSequence;

    move-object/from16 v20, v4

    iget v4, v8, LM0/c;->d:I

    move-object/from16 v21, v12

    iget-object v12, v8, LM0/c;->h:Ly1/a;

    move/from16 v22, v14

    iget-object v14, v6, Lk/i;->b:Ljava/util/ArrayList;

    if-eqz v9, :cond_c

    iget v13, v9, LM0/i2;->a:I

    move/from16 v17, v13

    iget-object v13, v2, La1/g;->e:Ljava/lang/Object;

    check-cast v13, Lcom/brisa/local/VideoPlaybackService;

    if-nez v17, :cond_9

    const/16 v18, 0x1

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    :goto_5
    invoke-static/range {v18 .. v18}, LF1/i;->g(Z)V

    new-instance v1, Lk/g;

    sget-object v18, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v23, v6

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v24, v3

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    if-nez v17, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, LF1/i;->g(Z)V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v4

    if-nez v17, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-static {v6}, LF1/i;->g(Z)V

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v25, v7

    const-string v7, "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, LM0/X0;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v13, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

    iget-object v15, v9, LM0/i2;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"

    iget-object v9, v9, LM0/i2;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v7, 0xc000000

    invoke-static {v13, v4, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4}, Lk/g;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_c
    move-object/from16 v24, v3

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    const/4 v1, -0x1

    if-eq v13, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, LF1/i;->o(Z)V

    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v4}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    new-instance v3, Lk/g;

    iget-object v4, v2, La1/g;->e:Ljava/lang/Object;

    check-cast v4, Lcom/brisa/local/VideoPlaybackService;

    const/4 v6, 0x1

    if-eq v13, v6, :cond_11

    const/4 v9, 0x3

    if-eq v13, v9, :cond_10

    const/16 v6, 0xb

    if-eq v13, v6, :cond_f

    const/16 v6, 0xc

    if-eq v13, v6, :cond_e

    packed-switch v13, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_9

    :pswitch_0
    const/16 v6, 0x57

    goto :goto_9

    :pswitch_1
    const/16 v6, 0x58

    goto :goto_9

    :cond_e
    const/16 v6, 0x5a

    goto :goto_9

    :cond_f
    const/16 v6, 0x59

    goto :goto_9

    :cond_10
    move/from16 v6, v18

    goto :goto_9

    :cond_11
    const/16 v6, 0x55

    :goto_9
    invoke-static {v6}, LM0/Y1;->l(I)Z

    move-result v7

    invoke-static {v7}, LF1/i;->g(Z)V

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v5}, LM0/X0;->x()V

    iget-object v9, v5, LM0/X0;->t:LM0/d2;

    iget-object v9, v9, LM0/d2;->a:LG/g0;

    invoke-interface {v9}, LG/g0;->z()Z

    move-result v9

    if-nez v9, :cond_12

    const/4 v9, 0x1

    if-ne v13, v9, :cond_12

    invoke-static {v4, v6, v7, v11, v15}, LM0/Y1;->h(Landroid/content/Context;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v9, 0xc000000

    invoke-static {v4, v6, v7, v9}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_a

    :cond_12
    const/high16 v9, 0xc000000

    invoke-static {v4, v6, v7, v11, v15}, LM0/Y1;->h(Landroid/content/Context;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v4, v6, v7, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_a
    invoke-direct {v3, v1, v0, v4}, Lk/g;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    iget-object v0, v8, LM0/c;->g:Landroid/os/Bundle;

    const-string v1, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v9, 0x3

    if-ge v0, v9, :cond_13

    aput v22, v10, v0

    const/4 v9, 0x3

    const/16 v16, 0x1

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ly1/a;->b(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_14

    aput v22, v21, v1

    :goto_c
    const/4 v9, 0x3

    goto :goto_d

    :cond_14
    invoke-virtual {v12, v1}, Ly1/a;->b(I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_15

    aput v22, v21, v6

    goto :goto_c

    :cond_15
    invoke-virtual {v12, v1}, Ly1/a;->b(I)I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_16

    aput v22, v21, v3

    :cond_16
    :goto_d
    add-int/lit8 v14, v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v19

    move-object/from16 v4, v20

    move-object/from16 v12, v21

    move-object/from16 v6, v23

    move-object/from16 v3, v24

    move-object/from16 v7, v25

    const/4 v9, -0x1

    const/4 v13, 0x1

    const/4 v15, 0x6

    goto/16 :goto_4

    :cond_17
    move-object/from16 v24, v3

    move-object/from16 v23, v6

    move-object/from16 v25, v7

    move-object/from16 v21, v12

    const/4 v9, 0x3

    if-nez v16, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v0, v9, :cond_19

    aget v3, v21, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_18

    goto :goto_f

    :cond_18
    aput v3, v10, v1

    add-int/lit8 v1, v1, 0x1

    :goto_f
    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x3

    goto :goto_e

    :cond_19
    const/4 v0, 0x0

    const/4 v9, 0x3

    :goto_10
    if-ge v0, v9, :cond_1a

    aget v1, v10, v0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1b

    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    :cond_1a
    move-object/from16 v1, v25

    goto :goto_11

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :goto_11
    iput-object v10, v1, LM0/X1;->c:[I

    const/16 v0, 0x12

    move-object/from16 v3, v24

    invoke-interface {v3, v0}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v3}, LG/g0;->K0()LG/T;

    move-result-object v0

    iget-object v4, v0, LG/T;->a:Ljava/lang/CharSequence;

    invoke-static {v4}, Lk/i;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v6, v23

    iput-object v4, v6, Lk/i;->e:Ljava/lang/CharSequence;

    iget-object v4, v0, LG/T;->b:Ljava/lang/CharSequence;

    invoke-static {v4}, Lk/i;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v6, Lk/i;->f:Ljava/lang/CharSequence;

    iget-object v4, v5, LM0/X0;->m:LJ/d;

    move-object/from16 v7, p0

    iget-object v8, v7, LM0/m;->g:LN0/O;

    if-eqz v8, :cond_1c

    iget-object v8, v7, LM0/m;->f:LJ/d;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    :cond_1c
    iput-object v4, v7, LM0/m;->f:LJ/d;

    new-instance v8, LN0/O;

    new-instance v9, LJ/u;

    sget-object v10, LM0/m;->h:Lt1/t;

    invoke-interface {v10}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v4, v10}, LJ/u;-><init>(LJ/d;I)V

    const/16 v4, 0xb

    invoke-direct {v8, v9, v4}, LN0/O;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v7, LM0/m;->g:LN0/O;

    :cond_1d
    iget-object v4, v7, LM0/m;->g:LN0/O;

    invoke-virtual {v4, v0}, LN0/O;->m(LG/T;)Lz1/B;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v4, v7, LM0/m;->d:LM0/l;

    if-eqz v4, :cond_1e

    const/4 v9, 0x1

    iput-boolean v9, v4, LM0/l;->e:Z

    :cond_1e
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1f

    :try_start_0
    invoke-static {v0}, Lcom/brisa/local/v;->i(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v0}, Lk/i;->d(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load bitmap: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NotificationProvider"

    invoke-static {v4, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1f
    new-instance v4, LM0/l;

    move-object/from16 v8, p4

    invoke-direct {v4, v6, v8}, LM0/l;-><init>(Lk/i;LM0/E;)V

    iput-object v4, v7, LM0/m;->d:LM0/l;

    iget-object v8, v5, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, LM0/A;

    const/4 v10, 0x6

    invoke-direct {v9, v8, v10}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lz1/v;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v4, v10}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v8, v9}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_13

    :cond_20
    move-object/from16 v7, p0

    move-object/from16 v6, v23

    :cond_21
    :goto_13
    invoke-interface {v3}, LG/g0;->I()Z

    move-result v0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_22

    invoke-interface {v3}, LG/g0;->m()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-interface {v3}, LG/g0;->T0()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-interface {v3}, LG/g0;->g()LG/a0;

    move-result-object v0

    iget v0, v0, LG/a0;->a:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v3}, LG/g0;->r()J

    move-result-wide v3

    sub-long/2addr v12, v3

    goto :goto_14

    :cond_22
    move-wide v12, v8

    :goto_14
    cmp-long v0, v12, v8

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_15

    :cond_23
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_24

    goto :goto_16

    :cond_24
    const-wide/16 v12, 0x0

    :goto_16
    iget-object v3, v6, Lk/i;->t:Landroid/app/Notification;

    iput-wide v12, v3, Landroid/app/Notification;->when:J

    iput-boolean v0, v6, Lk/i;->j:Z

    iput-boolean v0, v6, Lk/i;->k:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    const/4 v9, 0x1

    if-lt v0, v4, :cond_25

    iput v9, v6, Lk/i;->r:I

    :cond_25
    invoke-virtual {v5}, LM0/X0;->x()V

    const/4 v0, 0x0

    iput-object v0, v6, Lk/i;->g:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    invoke-virtual {v0, v4, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v2, La1/g;->e:Ljava/lang/Object;

    check-cast v2, Lcom/brisa/local/VideoPlaybackService;

    invoke-static/range {v18 .. v18}, LM0/Y1;->l(I)Z

    move-result v4

    invoke-static {v4}, LF1/i;->g(Z)V

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move/from16 v4, v18

    invoke-static {v2, v4, v0, v11, v15}, LM0/Y1;->h(Landroid/content/Context;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v5, 0xc000000

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x8

    invoke-virtual {v6, v2, v9}, Lk/i;->c(IZ)V

    iget v0, v7, LM0/m;->e:I

    iput v0, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v6, v1}, Lk/i;->e(LC/b;)V

    iput v9, v6, Lk/i;->p:I

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {v6, v3, v1}, Lk/i;->c(IZ)V

    const-string v0, "media3_group_key"

    iput-object v0, v6, Lk/i;->m:Ljava/lang/String;

    invoke-virtual {v6}, Lk/i;->a()Landroid/app/Notification;

    move-result-object v0

    new-instance v1, LZ0/i;

    invoke-direct {v1, v0}, LZ0/i;-><init>(Landroid/app/Notification;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
