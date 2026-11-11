.class public final Lb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Random;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Ljava/util/ArrayList;

.field public final transient f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Landroid/os/Bundle;

.field public final synthetic i:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    iput-object p1, p0, Lb/e;->i:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lb/e;->a:Ljava/util/Random;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/e;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/e;->c:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/e;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/e;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/e;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/e;->g:Ljava/util/HashMap;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lb/e;->h:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lb/e;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ld/c;->a:Ld/b;

    iget-object v2, p0, Lb/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Ld/c;->b:Le/a;

    invoke-virtual {v0, p3, p2}, Le/a;->i(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ld/b;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lb/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ld/a;

    invoke-direct {v0, p3, p2}, Ld/a;-><init>(Landroid/content/Intent;I)V

    iget-object p2, p0, Lb/e;->h:Landroid/os/Bundle;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(ILe/a;Landroid/content/Intent;)V
    .locals 9

    iget v0, p2, Le/a;->a:I

    iget-object v1, p0, Lb/e;->i:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_0
    move-object v0, p3

    check-cast v0, [Ljava/lang/String;

    const-string v2, "input"

    invoke-static {v0, v2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    if-nez v2, :cond_1

    new-instance v0, LZ0/i;

    sget-object v2, LF1/r;->e:LF1/r;

    invoke-direct {v0, v2}, LZ0/i;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    invoke-static {}, LS1/e;->k()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Lk/j;

    invoke-direct {v5, v1}, Lk/j;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    iget-object v5, v5, Lk/j;->a:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    :goto_1
    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "permission must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    array-length v2, v0

    invoke-static {v2}, LF1/t;->j(I)I

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_6

    move v2, v4

    :cond_6
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v2, v0

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v5, v0, v3

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, LZ0/i;

    invoke-direct {v0, v4}, LZ0/i;-><init>(Ljava/lang/Object;)V

    :goto_3
    if-eqz v0, :cond_8

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lb/d;

    const/4 v1, 0x0

    invoke-direct {p3, p0, p1, v0, v1}, Lb/d;-><init>(Lb/e;ILjava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_8
    iget p2, p2, Le/a;->a:I

    packed-switch p2, :pswitch_data_1

    check-cast p3, Ld/d;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p3, Ld/d;->f:Landroid/content/Intent;

    if-eqz v0, :cond_9

    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v2, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p3, Ld/d;->e:Landroid/content/IntentSender;

    iget v2, p3, Ld/d;->h:I

    iget p3, p3, Ld/d;->g:I

    new-instance v3, Ld/d;

    invoke-direct {v3, v0, p3, v2}, Ld/d;-><init>(Landroid/content/IntentSender;II)V

    move-object p3, v3

    :cond_9
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p3, 0x2

    invoke-static {p3}, Lz/A;->G(I)Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "CreateIntent created the following intent: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FragmentManager"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object p3, p2

    goto :goto_4

    :pswitch_1
    const-string p2, "input"

    invoke-static {p3, p2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_2
    check-cast p3, [Ljava/lang/String;

    const-string p2, "input"

    invoke-static {p3, p2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string p2, "Intent(ACTION_REQUEST_PE\u2026EXTRA_PERMISSIONS, input)"

    invoke-static {p3, p2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    const-string p2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_5
    move-object v8, v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :goto_6
    const-string p2, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    const-string p2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_d

    new-array p2, p3, [Ljava/lang/String;

    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v2, p3

    :goto_7
    array-length v3, p2

    if-ge v2, v3, :cond_10

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, LS1/e;->k()Z

    move-result v3

    if-nez v3, :cond_e

    aget-object v3, p2, v2

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Permission request for permissions "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " must not contain null or empty values"

    invoke-static {p3, p2, v0}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_11

    array-length v3, p2

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    goto :goto_8

    :cond_11
    move-object v3, p2

    :goto_8
    if-lez v2, :cond_14

    array-length v4, p2

    if-ne v2, v4, :cond_12

    return-void

    :cond_12
    move v2, p3

    :goto_9
    array-length v4, p2

    if-ge p3, v4, :cond_14

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p2, p3

    aput-object v5, v3, v2

    move v2, v4

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_14
    invoke-static {v1, p2, p1}, Lk/b;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_15
    const-string p2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    const-string p2, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Ld/d;

    :try_start_0
    iget-object v2, p2, Ld/d;->e:Landroid/content/IntentSender;

    iget-object v4, p2, Ld/d;->f:Landroid/content/Intent;

    iget v5, p2, Ld/d;->g:I

    iget v6, p2, Ld/d;->h:I
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    move v3, p1

    :try_start_1
    invoke-static/range {v1 .. v8}, Lk/a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_a
    move-object p1, v0

    goto :goto_b

    :catch_1
    move-exception v0

    move v3, p1

    goto :goto_a

    :goto_b
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lb/d;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v3, p1, v0}, Lb/d;-><init>(Lb/e;ILjava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_16
    move v3, p1

    invoke-static {v1, p3, v3, v8}, Lk/a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;Le/a;Ld/b;)LB/A;
    .locals 6

    iget-object v0, p0, Lb/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lb/e;->a:Ljava/util/Random;

    const/high16 v2, 0x7fff0000

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v3, 0x10000

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lb/e;->a:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v0, Ld/c;

    invoke-direct {v0, p3, p2}, Ld/c;-><init>(Ld/b;Le/a;)V

    iget-object v1, p0, Lb/e;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/e;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, v1}, Ld/b;->b(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lb/e;->h:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Ld/a;

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget v0, v1, Ld/a;->e:I

    iget-object v1, v1, Ld/a;->f:Landroid/content/Intent;

    invoke-virtual {p2, v1, v0}, Le/a;->i(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ld/b;->b(Ljava/lang/Object;)V

    :cond_3
    new-instance p3, LB/A;

    const/16 v0, 0x12

    invoke-direct {p3, v0, p0, p1, p2}, LB/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method
