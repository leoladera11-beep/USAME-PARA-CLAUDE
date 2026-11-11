.class public final LM0/t1;
.super LN0/G;
.source "SourceFile"


# static fields
.field public static final B:I


# instance fields
.field public A:LG/c0;

.field public final f:LB/A;

.field public final g:Lh/e;

.field public final h:Lh/e;

.field public final i:LM0/X0;

.field public final j:LN0/i;

.field public final k:LM0/r1;

.field public final l:LM0/p1;

.field public final m:Z

.field public final n:LM0/b;

.field public final o:LN0/O;

.field public final p:LJ/z;

.field public final q:Landroid/content/ComponentName;

.field public r:LM0/o1;

.field public final s:Z

.field public volatile t:J

.field public u:LM0/r1;

.field public v:I

.field public final w:Landroid/os/Bundle;

.field public x:Lu1/P;

.field public y:Lu1/P;

.field public z:LM0/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, LM0/t1;->B:I

    return-void
.end method

.method public constructor <init>(LM0/X0;Landroid/net/Uri;Landroid/os/Handler;Landroid/os/Bundle;ZLu1/P;Lu1/P;LM0/j2;LG/c0;Landroid/os/Bundle;)V
    .locals 13

    invoke-direct {p0}, LN0/G;-><init>()V

    iput-object p1, p0, LM0/t1;->i:LM0/X0;

    move/from16 v0, p5

    iput-boolean v0, p0, LM0/t1;->s:Z

    move-object/from16 v0, p6

    iput-object v0, p0, LM0/t1;->x:Lu1/P;

    move-object/from16 v0, p7

    iput-object v0, p0, LM0/t1;->y:Lu1/P;

    move-object/from16 v1, p8

    iput-object v1, p0, LM0/t1;->z:LM0/j2;

    move-object/from16 v1, p9

    iput-object v1, p0, LM0/t1;->A:LG/c0;

    new-instance v1, Landroid/os/Bundle;

    move-object/from16 v2, p10

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, LM0/t1;->w:Landroid/os/Bundle;

    new-instance v1, Lh/e;

    invoke-direct {v1}, Lh/j;-><init>()V

    iput-object v1, p0, LM0/t1;->g:Lh/e;

    new-instance v1, Lh/e;

    invoke-direct {v1}, Lh/j;-><init>()V

    iput-object v1, p0, LM0/t1;->h:Lh/e;

    iget-object v1, p1, LM0/X0;->f:Landroid/content/Context;

    invoke-static {v1}, LN0/i;->a(Landroid/content/Context;)LN0/i;

    move-result-object v2

    iput-object v2, p0, LM0/t1;->j:LN0/i;

    new-instance v2, LM0/r1;

    invoke-direct {v2, p0}, LM0/r1;-><init>(LM0/t1;)V

    iput-object v2, p0, LM0/t1;->k:LM0/r1;

    new-instance v2, LB/A;

    invoke-direct {v2, p1}, LB/A;-><init>(LM0/X0;)V

    iput-object v2, p0, LM0/t1;->f:LB/A;

    const-wide/32 v3, 0x493e0

    iput-wide v3, p0, LM0/t1;->t:J

    new-instance v3, LM0/p1;

    iget-object v4, p1, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, LM0/p1;-><init>(Landroid/os/Looper;LB/A;)V

    iput-object v3, p0, LM0/t1;->l:LM0/p1;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "motorola"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x21

    if-ge v2, v6, :cond_1

    :cond_0
    :goto_0
    move v7, v5

    goto :goto_1

    :cond_1
    sget-object v7, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "Google"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "vivo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Sony"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Nothing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    move v7, v4

    :goto_1
    iput-boolean v7, p0, LM0/t1;->m:Z

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, LM0/t1;->O()V

    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    if-ne v7, v4, :cond_5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v10, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    move-object v7, v9

    :goto_2
    iput-object v7, p0, LM0/t1;->q:Landroid/content/ComponentName;

    const/16 v0, 0x1f

    if-eqz v7, :cond_7

    if-ge v2, v0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    move-object v10, v7

    goto :goto_4

    :cond_7
    :goto_3
    const-string v10, "androidx.media3.session.MediaLibraryService"

    invoke-static {v1, v10}, LM0/t1;->I(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_8

    const-string v10, "androidx.media3.session.MediaSessionService"

    invoke-static {v1, v10}, LM0/t1;->I(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_4

    :cond_9
    move v4, v5

    :goto_4
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v8, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez v10, :cond_b

    new-instance v4, LJ/z;

    const/4 v10, 0x2

    invoke-direct {v4, p0, v10}, LJ/z;-><init>(Ljava/lang/Object;I)V

    iput-object v4, p0, LM0/t1;->p:LJ/z;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    sget-object v12, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v10, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    if-ge v2, v6, :cond_a

    invoke-virtual {v1, v4, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_5

    :cond_a
    const/4 v6, 0x4

    invoke-virtual {v1, v4, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v4, LM0/t1;->B:I

    invoke-static {v1, v5, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v10, v1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v4, :cond_c

    sget v4, LM0/t1;->B:I

    invoke-static {v1, v5, v11, v4}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_6

    :cond_c
    sget v4, LM0/t1;->B:I

    invoke-static {v1, v5, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_6
    iput-object v9, p0, LM0/t1;->p:LJ/z;

    :goto_7
    const-string v6, "androidx.media3.session.id"

    iget-object p1, p1, LM0/X0;->i:Ljava/lang/String;

    filled-new-array {v6, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v6, "."

    invoke-static {v6, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v6, LN0/O;

    if-ge v2, v0, :cond_d

    goto :goto_8

    :cond_d
    move-object v10, v9

    :goto_8
    if-ge v2, v0, :cond_e

    move-object/from16 p9, v4

    :goto_9
    move-object/from16 p7, p1

    move-object/from16 p10, p4

    move-object/from16 p6, v1

    move-object/from16 p5, v6

    move-object/from16 p8, v10

    goto :goto_a

    :cond_e
    move-object/from16 p9, v9

    goto :goto_9

    :goto_a
    invoke-direct/range {p5 .. p10}, LN0/O;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    move-object/from16 v1, p5

    move-object/from16 p1, p6

    iput-object v1, p0, LM0/t1;->o:LN0/O;

    if-lt v2, v0, :cond_10

    if-eqz v7, :cond_10

    :try_start_0
    iget-object v0, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v7}, LJ/w;->q(Landroid/media/session/MediaSession;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "MediaSessionLegacyStub"

    const-string v2, "caught IllegalArgumentException on a motorola device when attempting to set the media button broadcast receiver. See https://github.com/androidx/media/issues/1730 for details."

    invoke-static {v1, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_f
    throw v0

    :cond_10
    :goto_b
    iget-object v0, p0, LM0/t1;->o:LN0/O;

    move-object/from16 v1, p3

    invoke-virtual {v0, p0, v1}, LN0/O;->i0(LN0/G;Landroid/os/Handler;)V

    iget-boolean v0, p0, LM0/t1;->m:Z

    if-eqz v0, :cond_11

    new-instance v9, LM0/b;

    new-instance v0, LM0/Y0;

    invoke-direct {v0, p0, v5}, LM0/Y0;-><init>(LM0/t1;I)V

    invoke-direct {v9, p1, v0}, LM0/b;-><init>(Landroid/content/Context;LM0/Y0;)V

    :cond_11
    iput-object v9, p0, LM0/t1;->n:LM0/b;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected 1 broadcast receiver that handles android.intent.action.MEDIA_BUTTON, found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static C(LN0/O;Ljava/util/ArrayList;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/M;

    iget-wide v2, v2, LN0/M;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found duplicate queue id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "id of each queue item should be unique"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v6, "MediaSessionCompat"

    invoke-static {v6, v4, v5}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p0, LN0/I;

    iget-object v0, p0, LN0/I;->a:Landroid/media/session/MediaSession;

    iput-object p1, p0, LN0/I;->h:Ljava/util/List;

    if-nez p1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    return-void

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/M;

    iget-object v2, v1, LN0/M;->g:Landroid/media/session/MediaSession$QueueItem;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, v1, LN0/M;->e:LN0/C;

    invoke-virtual {v2}, LN0/C;->b()Landroid/media/MediaDescription;

    move-result-object v2

    new-instance v3, Landroid/media/session/MediaSession$QueueItem;

    iget-wide v4, v1, LN0/M;->f:J

    invoke-direct {v3, v2, v4, v5}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    iput-object v3, v1, LN0/M;->g:Landroid/media/session/MediaSession$QueueItem;

    move-object v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method public static D(LN0/O;LN0/D;)V
    .locals 6

    iget-object p0, p0, LN0/O;->f:Ljava/lang/Object;

    check-cast p0, LN0/I;

    iput-object p1, p0, LN0/I;->i:LN0/D;

    iget-object p0, p0, LN0/I;->a:Landroid/media/session/MediaSession;

    iget-object v0, p1, LN0/D;->e:Landroid/os/Bundle;

    iget-object v1, p1, LN0/D;->f:Landroid/media/MediaMetadata;

    if-nez v1, :cond_9

    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, LN0/D;->h:Lh/e;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    instance-of v5, v4, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    goto :goto_0

    :cond_3
    :goto_2
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/media/Rating;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    const-string v2, "MediaMetadata"

    const-string v3, "Failed to convert MediaMetadataCompat to MediaMetadata"

    invoke-static {v2, v3, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    iput-object v0, p1, LN0/D;->f:Landroid/media/MediaMetadata;

    :cond_9
    iget-object p1, p1, LN0/D;->f:Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public static E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;
    .locals 9

    new-instance v0, LG/D;

    invoke-direct {v0}, LG/D;-><init>()V

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    new-instance v1, LG/I;

    invoke-direct {v1}, LG/I;-><init>()V

    sget-object v2, LG/L;->d:LG/L;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    move-object v3, p0

    new-instance p0, LB/A;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, LB/A;-><init>(IZ)V

    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    iput-object p2, p0, LB/A;->g:Ljava/lang/Object;

    iput-object p3, p0, LB/A;->h:Ljava/lang/Object;

    new-instance v8, LG/L;

    invoke-direct {v8, p0}, LG/L;-><init>(LB/A;)V

    new-instance v2, LG/P;

    new-instance v4, LG/F;

    invoke-direct {v4, v0}, LG/E;-><init>(LG/D;)V

    new-instance v6, LG/J;

    invoke-direct {v6, v1}, LG/J;-><init>(LG/I;)V

    sget-object v7, LG/T;->M:LG/T;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    return-object v2
.end method

.method public static I(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/c1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LM0/c1;-><init>(LM0/t1;JI)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0, p1, p2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final B()V
    .locals 4

    new-instance v0, LM0/b1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final F(LM0/d2;)LN0/U;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, LM0/d2;->j()LG/Z;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, LM0/d2;->S0(I)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1}, LM0/d2;->V0()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_2

    iget-boolean v6, v0, LM0/t1;->s:Z

    invoke-static {v1, v6}, LJ/W;->Q(LG/g0;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v5

    :goto_2
    const/4 v8, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v2, :cond_3

    const/4 v14, 0x7

    goto :goto_5

    :cond_3
    sget-object v12, LM0/u;->a:Lu1/b0;

    invoke-virtual {v1}, LM0/d2;->j()LG/Z;

    move-result-object v12

    if-eqz v12, :cond_4

    const/4 v12, 0x7

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, LM0/d2;->c()I

    move-result v12

    if-eq v12, v5, :cond_a

    if-eq v12, v10, :cond_8

    if-eq v12, v11, :cond_6

    if-ne v12, v8, :cond_5

    move v12, v5

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unrecognized State: "

    invoke-static {v12, v2}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-eqz v6, :cond_7

    :goto_3
    move v12, v10

    goto :goto_4

    :cond_7
    move v12, v11

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    const/4 v12, 0x6

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    :goto_4
    move v14, v12

    :goto_5
    invoke-virtual {v1}, LM0/d2;->w()LG/c0;

    move-result-object v12

    iget-object v13, v0, LM0/t1;->A:LG/c0;

    invoke-static {v13, v12}, LM0/Y1;->k(LG/c0;LG/c0;)LG/c0;

    move-result-object v12

    const-wide/16 v15, 0x80

    const/4 v13, 0x0

    :goto_6
    iget-object v4, v12, LG/c0;->a:LG/u;

    iget-object v4, v4, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v13, v4, :cond_10

    iget-object v4, v12, LG/c0;->a:LG/u;

    invoke-virtual {v4, v13}, LG/u;->b(I)I

    move-result v4

    if-eq v4, v5, :cond_e

    if-eq v4, v10, :cond_d

    if-eq v4, v11, :cond_c

    const/16 v7, 0x1f

    if-eq v4, v7, :cond_b

    packed-switch v4, :pswitch_data_0

    const-wide/16 v19, 0x0

    goto :goto_7

    :pswitch_0
    const-wide/32 v19, 0x40000

    goto :goto_7

    :pswitch_1
    const-wide/32 v19, 0x280000

    goto :goto_7

    :pswitch_2
    const-wide/32 v19, 0x400000

    goto :goto_7

    :pswitch_3
    const-wide/16 v19, 0x40

    goto :goto_7

    :pswitch_4
    const-wide/16 v19, 0x8

    goto :goto_7

    :pswitch_5
    const-wide/16 v19, 0x1000

    goto :goto_7

    :pswitch_6
    const-wide/16 v19, 0x20

    goto :goto_7

    :pswitch_7
    const-wide/16 v19, 0x10

    goto :goto_7

    :pswitch_8
    const-wide/16 v19, 0x100

    goto :goto_7

    :cond_b
    const-wide/32 v19, 0x3ac00

    goto :goto_7

    :cond_c
    const-wide/16 v19, 0x1

    goto :goto_7

    :cond_d
    const-wide/16 v19, 0x4000

    goto :goto_7

    :cond_e
    if-eqz v6, :cond_f

    const-wide/16 v19, 0x204

    goto :goto_7

    :cond_f
    const-wide/16 v19, 0x202

    :goto_7
    or-long v15, v15, v19

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_10
    iget-object v4, v0, LM0/t1;->y:Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v0, LM0/t1;->x:Lu1/P;

    invoke-static {v10, v4}, LM0/c;->c(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-wide/16 v6, -0x11

    and-long/2addr v15, v6

    :cond_11
    iget-object v4, v0, LM0/t1;->y:Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v0, LM0/t1;->x:Lu1/P;

    invoke-static {v11, v4}, LM0/c;->c(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-wide/16 v6, -0x21

    and-long/2addr v15, v6

    :cond_12
    if-nez v3, :cond_13

    const-wide/16 v6, -0x101

    and-long/2addr v15, v6

    :cond_13
    move-wide/from16 v20, v15

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, LM0/d2;->S0(I)Z

    move-result v4

    const/4 v6, -0x1

    const-wide/16 v15, -0x1

    if-eqz v4, :cond_15

    invoke-virtual {v1}, LM0/d2;->V()I

    move-result v4

    sget-object v7, LM0/u;->a:Lu1/b0;

    if-ne v4, v6, :cond_14

    move-wide v8, v15

    goto :goto_8

    :cond_14
    int-to-long v8, v4

    :goto_8
    move-wide/from16 v27, v8

    goto :goto_9

    :cond_15
    move-wide/from16 v27, v15

    :goto_9
    invoke-virtual {v1}, LM0/d2;->g()LG/a0;

    move-result-object v4

    iget v4, v4, LG/a0;->a:F

    invoke-virtual {v1}, LM0/d2;->I()Z

    move-result v8

    if-eqz v8, :cond_16

    if-eqz v3, :cond_16

    move/from16 v19, v4

    goto :goto_a

    :cond_16
    const/4 v8, 0x0

    move/from16 v19, v8

    :goto_a
    new-instance v8, Landroid/os/Bundle;

    if-eqz v2, :cond_17

    iget-object v9, v2, LG/Z;->g:Landroid/os/Bundle;

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_b

    :cond_17
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :goto_b
    iget-object v9, v0, LM0/t1;->w:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v9, "EXO_SPEED"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v1}, LM0/d2;->W0()LG/P;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, v4, LG/P;->a:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    invoke-virtual {v8, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-eqz v3, :cond_19

    invoke-virtual {v1}, LM0/d2;->O0()J

    move-result-wide v22

    goto :goto_c

    :cond_19
    move-wide/from16 v22, v15

    :goto_c
    if-eqz v3, :cond_1a

    invoke-virtual {v1}, LM0/d2;->y()J

    move-result-wide v15

    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const/4 v3, 0x0

    :goto_d
    iget-object v4, v0, LM0/t1;->x:Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    iget-object v4, v0, LM0/t1;->x:Lu1/P;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/c;

    iget-object v9, v4, LM0/c;->a:LM0/i2;

    iget-object v7, v4, LM0/c;->e:Landroid/net/Uri;

    iget v10, v4, LM0/c;->c:I

    iget-object v11, v4, LM0/c;->g:Landroid/os/Bundle;

    if-eqz v9, :cond_28

    iget-object v13, v9, LM0/i2;->c:Landroid/os/Bundle;

    iget-object v5, v9, LM0/i2;->b:Ljava/lang/String;

    iget-boolean v6, v4, LM0/c;->i:Z

    if-eqz v6, :cond_28

    iget v6, v9, LM0/i2;->a:I

    if-nez v6, :cond_28

    iget-object v6, v0, LM0/t1;->z:LM0/j2;

    if-eqz v9, :cond_1c

    iget-object v6, v6, LM0/j2;->a:Lu1/b0;

    invoke-virtual {v6, v9}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v9, -0x1

    goto :goto_f

    :cond_1c
    :goto_e
    iget v6, v4, LM0/c;->b:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1d

    invoke-virtual {v12, v6}, LG/c0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-static {v5}, LM0/c;->n(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    :goto_f
    if-eqz v10, :cond_1e

    const/4 v6, 0x1

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    :goto_10
    if-eqz v7, :cond_1f

    const/16 v30, 0x1

    goto :goto_11

    :cond_1f
    const/16 v30, 0x0

    :goto_11
    if-nez v6, :cond_20

    if-nez v30, :cond_20

    invoke-virtual {v11}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_21

    :cond_20
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v13, v9

    :cond_21
    invoke-virtual {v11}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_22

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_22
    if-eqz v6, :cond_23

    const-string v6, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    invoke-virtual {v13, v6, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_23
    if-eqz v30, :cond_24

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT"

    invoke-virtual {v13, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object v6, v4, LM0/c;->f:Ljava/lang/CharSequence;

    iget v4, v4, LM0/c;->d:I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_26

    if-eqz v4, :cond_25

    new-instance v7, LN0/T;

    invoke-direct {v7, v5, v6, v4, v13}, LN0/T;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must specify an icon resource id to build a CustomAction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must specify a name to build a CustomAction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must specify an action to build a CustomAction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    :goto_12
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    goto/16 :goto_d

    :cond_29
    if-eqz v2, :cond_2f

    sget-object v3, LM0/u;->a:Lu1/b0;

    iget v3, v2, LG/Z;->e:I

    const/16 v4, -0x6e

    if-eq v3, v4, :cond_2e

    const/16 v4, -0x6d

    if-eq v3, v4, :cond_2d

    const/4 v4, -0x6

    if-eq v3, v4, :cond_2c

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    packed-switch v3, :pswitch_data_1

    const/4 v4, 0x0

    goto :goto_13

    :pswitch_9
    const/4 v4, 0x3

    goto :goto_13

    :pswitch_a
    const/4 v4, 0x4

    goto :goto_13

    :pswitch_b
    const/4 v4, 0x5

    goto :goto_13

    :pswitch_c
    const/4 v4, 0x6

    goto :goto_13

    :pswitch_d
    const/4 v4, 0x7

    goto :goto_13

    :pswitch_e
    const/16 v4, 0x9

    goto :goto_13

    :cond_2a
    const/16 v4, 0xa

    goto :goto_13

    :cond_2b
    const/4 v4, 0x1

    goto :goto_13

    :cond_2c
    const/4 v4, 0x2

    goto :goto_13

    :cond_2d
    const/16 v4, 0xb

    goto :goto_13

    :cond_2e
    const/16 v4, 0x8

    :goto_13
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_2f
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_14
    new-instance v13, LN0/U;

    move-object/from16 v26, v1

    move-object/from16 v29, v8

    move-wide/from16 v17, v15

    move-wide/from16 v15, v22

    move-object/from16 v23, v2

    move/from16 v22, v4

    invoke-direct/range {v13 .. v29}, LN0/U;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    return-object v13

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x6b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final G(ILM0/s1;LN0/P;Z)V
    .locals 6

    iget-object v0, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "RemoteUserInfo is null, ignoring command="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, LM0/k1;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LM0/k1;-><init>(LM0/t1;LN0/P;ILM0/s1;Z)V

    invoke-virtual {p0, v0}, LM0/t1;->M(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(LM0/i2;ILM0/s1;LN0/P;)V
    .locals 6

    if-nez p4, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "RemoteUserInfo is null, ignoring command="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, LJ/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, LM0/p0;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, LM0/p0;-><init>(LM0/t1;LN0/P;LM0/i2;ILM0/s1;)V

    invoke-virtual {p0, v0}, LM0/t1;->M(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(LN0/P;LM0/s1;)V
    .locals 7

    iget-object v0, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LM0/t1;->o:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    iget-object v0, v0, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    const-string v1, "MediaSessionLegacyStub"

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ignore incoming command before initialization. pid="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LN0/P;->a:LN0/S;

    iget p1, p1, LN0/S;->b:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, LM0/t1;->f:LB/A;

    invoke-virtual {v0, p1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p1, p0, LM0/t1;->l:LM0/p1;

    iget-wide v3, p0, LM0/t1;->t:J

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_0
    invoke-interface {p2, v2}, LM0/s1;->a(LM0/N0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object v0, p0, LM0/t1;->g:Lh/e;

    invoke-virtual {v0, p1}, Lh/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LM0/t1;->h:Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance v5, LM0/q1;

    invoke-direct {v5, p1}, LM0/q1;-><init>(LN0/P;)V

    new-instance v0, LM0/N0;

    iget-object v1, p0, LM0/t1;->j:LN0/i;

    invoke-virtual {v1, p1}, LN0/i;->b(LN0/P;)Z

    move-result v4

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, LM0/N0;-><init>(LN0/P;IIZLM0/M0;Landroid/os/Bundle;)V

    iget-object p1, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1, v0}, LM0/X0;->o(LM0/N0;)Lz1/B;

    move-result-object p1

    iget-object v2, p0, LM0/t1;->g:Lh/e;

    invoke-virtual {v2, v1, p1}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, LM0/t1;->h:Lh/e;

    invoke-virtual {p2, v1, v2}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LB/A;

    invoke-direct {p2, p0, v1, v5, v0}, LB/A;-><init>(LM0/t1;LN0/P;LM0/q1;LM0/N0;)V

    new-instance v0, LM0/A;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lz1/v;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v1, v0}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final K(LG/P;ZZ)V
    .locals 1

    new-instance v0, LM0/a1;

    invoke-direct {v0, p0, p1, p2, p3}, LM0/a1;-><init>(LM0/t1;LG/P;ZZ)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x1f

    invoke-virtual {p0, p3, v0, p1, p2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final L()Z
    .locals 3

    iget-object v0, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    iget-object v1, p0, LM0/t1;->A:LG/c0;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, LG/c0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LM0/d2;->w()LG/c0;

    move-result-object v0

    invoke-virtual {v0, v2}, LG/c0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LM0/t1;->i:LM0/X0;

    iget-object v0, v0, LM0/X0;->l:Landroid/os/Handler;

    invoke-static {v0, p1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final N()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    iget-object v3, p0, LM0/t1;->i:LM0/X0;

    iget-object v4, p0, LM0/t1;->o:LN0/O;

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LM0/t1;->q:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    iget-object v1, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    iget-object v1, v1, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    iget-object v7, v3, LM0/X0;->b:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, v3, LM0/X0;->f:Landroid/content/Context;

    const/4 v6, 0x0

    sget v7, LM0/t1;->B:I

    invoke-static {v1, v6, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v5, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v5, LN0/I;

    iget-object v5, v5, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v5, v1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    iget-object v1, p0, LM0/t1;->p:LJ/z;

    if-eqz v1, :cond_2

    iget-object v3, v3, LM0/X0;->f:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v1, 0x1

    iget-object v3, p0, LM0/t1;->n:LM0/b;

    if-eqz v3, :cond_4

    iget-object v5, v3, LM0/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v3, LM0/b;->c:Ljava/util/concurrent/Executor;

    new-instance v6, LM0/a;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, LM0/a;-><init>(LM0/b;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    iget-object v3, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, LN0/I;

    iget-object v4, v3, LN0/I;->a:Landroid/media/session/MediaSession;

    iget-object v5, v3, LN0/I;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->kill()V

    const/16 v5, 0x1b

    if-ne v0, v5, :cond_5

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "mCallback"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionCompat"

    const-string v5, "Exception happened while accessing MediaSession.mCallback."

    invoke-static {v1, v5, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    invoke-virtual {v4, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, v3, LN0/I;->b:LN0/H;

    iget-object v0, v0, LN0/H;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {v4}, Landroid/media/session/MediaSession;->release()V

    iget-object v0, p0, LM0/t1;->f:LB/A;

    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public final O()V
    .locals 7

    iget-object v0, p0, LM0/t1;->y:Lu1/P;

    iget-object v1, p0, LM0/t1;->z:LM0/j2;

    iget-object v2, p0, LM0/t1;->A:LG/c0;

    invoke-static {v0, v1, v2}, LM0/c;->g(Ljava/util/List;LM0/j2;LG/c0;)Lu1/C0;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, LM0/c;->j(Ljava/util/List;ZZI)Lu1/C0;

    move-result-object v0

    iput-object v0, p0, LM0/t1;->x:Lu1/P;

    iget-boolean v0, p0, LM0/t1;->m:Z

    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v4, 0x2

    iget-object v5, p0, LM0/t1;->w:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LM0/t1;->n:LM0/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, LM0/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LM0/t1;->x:Lu1/P;

    invoke-static {v4, v0}, LM0/c;->c(ILjava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, LM0/t1;->x:Lu1/P;

    const/4 v3, 0x3

    invoke-static {v3, v0}, LM0/c;->c(ILjava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, LM0/t1;->x:Lu1/P;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, LM0/t1;->x:Lu1/P;

    invoke-static {v4, v0}, LM0/c;->c(ILjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    invoke-virtual {v5, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final P()V
    .locals 6

    iget-object v0, p0, LM0/t1;->w:Landroid/os/Bundle;

    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0}, LM0/t1;->O()V

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    iget-object v1, v1, LN0/I;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final Q(LM0/d2;)V
    .locals 2

    new-instance v0, LM0/h1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/h1;-><init>(LM0/t1;LM0/d2;I)V

    invoke-virtual {p0, v0}, LM0/t1;->M(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(LN0/C;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, LM0/d1;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1}, LM0/d1;-><init>(LM0/t1;LN0/C;I)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0, p1, v1}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    :cond_0
    return-void
.end method

.method public final c(LN0/C;I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LM0/d1;

    invoke-direct {v0, p0, p1, p2}, LM0/d1;-><init>(LM0/t1;LN0/C;I)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0, p1, p2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, LM0/t1;->i:LM0/X0;

    iget-object p1, p1, LM0/X0;->j:LM0/o2;

    invoke-virtual {p1}, LM0/o2;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance v0, LM0/i2;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v2}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, LM0/f1;

    invoke-direct {p1, p0, v0, p2, p3}, LM0/f1;-><init>(LM0/t1;LM0/i2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    iget-object p2, p0, LM0/t1;->o:LN0/O;

    iget-object p2, p2, LN0/O;->f:Ljava/lang/Object;

    check-cast p2, LN0/I;

    invoke-virtual {p2}, LN0/I;->b()LN0/P;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p1, p2}, LM0/t1;->H(LM0/i2;ILM0/s1;LN0/P;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    new-instance v0, LM0/i2;

    invoke-direct {v0, p1, p2}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, LM0/c;->n(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, LM0/t1;->o:LN0/O;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    const-string p2, "MediaSessionLegacyStub"

    :try_start_0
    invoke-static {v0}, LM0/c;->d(LM0/i2;)LM0/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v0, LM0/c;->b:I

    iget-object v4, v0, LM0/c;->j:Ljava/lang/Object;

    invoke-virtual {v0}, LM0/c;->b()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v0, "Can\'t execute predefined custom command: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, v0, LM0/c;->a:LM0/i2;

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget p1, p1, LM0/i2;->a:I

    const v0, 0x9c4a

    if-ne p1, v0, :cond_3

    move v3, p2

    :cond_3
    invoke-static {v3}, LF1/i;->o(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, LG/h0;

    new-instance p1, LM0/b1;

    invoke-direct {p1, p0, v4}, LM0/b1;-><init>(LM0/t1;LG/h0;)V

    iget-object p2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast p2, LN0/I;

    invoke-virtual {p2}, LN0/I;->b()LN0/P;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, LM0/t1;->H(LM0/i2;ILM0/s1;LN0/P;)V

    return-void

    :cond_4
    iget-object p1, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    if-eq v1, p2, :cond_6

    :cond_5
    move p1, v3

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    invoke-virtual {p1}, LM0/d2;->z()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, p2

    goto :goto_1

    :cond_7
    move-object p1, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_8

    new-instance p1, LM0/b1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v0, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    invoke-virtual {v0}, LN0/I;->b()LN0/P;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0, v3}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void

    :cond_8
    const/16 p1, 0x1f

    if-ne v1, p1, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, LG/P;

    invoke-virtual {p0, v4, v3, v3}, LM0/t1;->K(LG/P;ZZ)V

    return-void

    :cond_9
    new-instance p1, LM0/i1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v0, v3}, LM0/i1;-><init>(LM0/t1;Ljava/lang/Object;I)V

    iget-object v0, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    invoke-virtual {v0}, LN0/I;->b()LN0/P;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v0, p2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to convert predefined custom command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LM0/i2;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    new-instance p1, LM0/b1;

    invoke-direct {p1, p0, v0, p2}, LM0/b1;-><init>(LM0/t1;LM0/i2;Landroid/os/Bundle;)V

    iget-object p2, v2, LN0/O;->f:Ljava/lang/Object;

    check-cast p2, LN0/I;

    invoke-virtual {p2}, LN0/I;->b()LN0/P;

    move-result-object p2

    invoke-virtual {p0, v0, v3, p1, p2}, LM0/t1;->H(LM0/i2;ILM0/s1;LN0/P;)V

    return-void
.end method

.method public final f()V
    .locals 4

    new-instance v0, LM0/b1;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final g(Landroid/content/Intent;)Z
    .locals 7

    new-instance v0, LM0/N0;

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, LM0/N0;-><init>(LN0/P;IIZLM0/M0;Landroid/os/Bundle;)V

    iget-object v1, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v1, v0, p1}, LM0/X0;->q(LM0/N0;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final h()V
    .locals 3

    new-instance v0, LM0/b1;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final i()V
    .locals 4

    new-instance v0, LM0/b1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final j(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2}, LM0/t1;->E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, LM0/t1;->K(LG/P;ZZ)V

    return-void
.end method

.method public final k(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, LM0/t1;->E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, LM0/t1;->K(LG/P;ZZ)V

    return-void
.end method

.method public final l(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, v0, p2}, LM0/t1;->E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, LM0/t1;->K(LG/P;ZZ)V

    return-void
.end method

.method public final m()V
    .locals 4

    new-instance v0, LM0/b1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final n(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2}, LM0/t1;->E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM0/t1;->K(LG/P;ZZ)V

    return-void
.end method

.method public final o(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, LM0/t1;->E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM0/t1;->K(LG/P;ZZ)V

    return-void
.end method

.method public final p(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, v0, p2}, LM0/t1;->E(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)LG/P;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM0/t1;->K(LG/P;ZZ)V

    return-void
.end method

.method public final q(LN0/C;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/i1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/i1;-><init>(LM0/t1;Ljava/lang/Object;I)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0, p1, v1}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final r()V
    .locals 4

    new-instance v0, LM0/b1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, p0, LM0/t1;->o:LN0/O;

    iget-object v1, v1, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final s(J)V
    .locals 2

    new-instance v0, LM0/c1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LM0/c1;-><init>(LM0/t1;JI)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, p1, p2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final t(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LM0/Z0;

    invoke-direct {v0, p0, p1}, LM0/Z0;-><init>(LM0/t1;F)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0, p1, v1}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final u(LN0/V;)V
    .locals 0

    invoke-virtual {p0, p1}, LM0/t1;->v(LN0/V;)V

    return-void
.end method

.method public final v(LN0/V;)V
    .locals 3

    invoke-static {p1}, LM0/u;->n(LN0/V;)LG/h0;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring invalid RatingCompat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionLegacyStub"

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, LM0/b1;

    invoke-direct {p1, p0, v0}, LM0/b1;-><init>(LM0/t1;LG/h0;)V

    iget-object v0, p0, LM0/t1;->o:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/I;

    invoke-virtual {v0}, LN0/I;->b()LN0/P;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c4a

    invoke-virtual {p0, v1, v2, p1, v0}, LM0/t1;->H(LM0/i2;ILM0/s1;LN0/P;)V

    return-void
.end method

.method public final w(I)V
    .locals 3

    new-instance v0, LM0/e1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LM0/e1;-><init>(LM0/t1;II)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v0, p1, v1}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final x(I)V
    .locals 3

    new-instance v0, LM0/e1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LM0/e1;-><init>(LM0/t1;II)V

    iget-object p1, p0, LM0/t1;->o:LN0/O;

    iget-object p1, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast p1, LN0/I;

    invoke-virtual {p1}, LN0/I;->b()LN0/P;

    move-result-object p1

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0, p1, v1}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final y()V
    .locals 5

    iget-object v0, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LM0/d2;->S0(I)Z

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, LM0/t1;->o:LN0/O;

    if-eqz v0, :cond_0

    new-instance v0, LM0/b1;

    const/4 v4, 0x5

    invoke-direct {v0, p0, v4}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v3, v3, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, LN0/I;

    invoke-virtual {v3}, LN0/I;->b()LN0/P;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void

    :cond_0
    new-instance v0, LM0/b1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, v3, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method

.method public final z()V
    .locals 5

    iget-object v0, p0, LM0/t1;->i:LM0/X0;

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object v0, v0, LM0/X0;->t:LM0/d2;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LM0/d2;->S0(I)Z

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, LM0/t1;->o:LN0/O;

    if-eqz v0, :cond_0

    new-instance v0, LM0/b1;

    const/4 v4, 0x3

    invoke-direct {v0, p0, v4}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v3, v3, LN0/O;->f:Ljava/lang/Object;

    check-cast v3, LN0/I;

    invoke-virtual {v3}, LN0/I;->b()LN0/P;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void

    :cond_0
    new-instance v0, LM0/b1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LM0/b1;-><init>(LM0/t1;I)V

    iget-object v1, v3, LN0/O;->f:Ljava/lang/Object;

    check-cast v1, LN0/I;

    invoke-virtual {v1}, LN0/I;->b()LN0/P;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v0, v1, v2}, LM0/t1;->G(ILM0/s1;LN0/P;Z)V

    return-void
.end method
