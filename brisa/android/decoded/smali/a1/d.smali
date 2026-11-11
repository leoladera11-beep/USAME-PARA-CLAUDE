.class public final La1/d;
.super La1/e;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final c:La1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La1/d;->b:Ljava/lang/Object;

    new-instance v0, La1/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La1/d;->c:La1/d;

    return-void
.end method

.method public static e(Landroid/app/Activity;ILd1/l;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1, p0}, Ld1/k;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    const v1, 0x7f0d0001

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const v1, 0x7f0d000b

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const v1, 0x7f0d0004

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-static {p1, p0}, Ld1/k;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    invoke-static {p1, p0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const-string v0, "Cannot display null dialog"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object p0, p0, La1/g;->e:Ljava/lang/Object;

    check-cast p0, Lz/o;

    iget-object p0, p0, Lz/o;->f:Lz/A;

    new-instance v2, La1/h;

    invoke-direct {v2}, La1/h;-><init>()V

    invoke-static {p1, v0}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, La1/h;->f0:Landroid/app/Dialog;

    if-eqz p3, :cond_0

    iput-object p3, v2, La1/h;->g0:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v2, Lz/j;->c0:Z

    const/4 p3, 0x1

    iput-boolean p3, v2, Lz/j;->d0:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lz/a;

    invoke-direct {v0, p0}, Lz/a;-><init>(Lz/A;)V

    iput-boolean p3, v0, Lz/a;->o:Z

    invoke-virtual {v0, p1, v2, p2}, Lz/a;->e(ILz/m;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lz/a;->d(Z)I

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    new-instance v2, La1/b;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v0}, Ld1/s;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, La1/b;->a:Landroid/app/Dialog;

    if-eqz p3, :cond_2

    iput-object p3, v2, La1/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    :cond_2
    invoke-virtual {v2, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V
    .locals 3

    const-string v0, "d"

    invoke-super {p0, p2, p1, v0}, La1/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ld1/l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Ld1/l;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p2, v1, p3}, La1/d;->e(Landroid/app/Activity;ILd1/l;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, v0, p3}, La1/d;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final g(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 10

    const-string v0, "GMS core API Availability. ConnectionResult="

    const-string v1, ", tag=null"

    invoke-static {v0, v1, p2}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v2, "GoogleApiAvailability"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, La1/i;

    invoke-direct {p2, p0, p1}, La1/i;-><init>(La1/d;Landroid/content/Context;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x6

    if-nez p3, :cond_2

    if-ne p2, v0, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    invoke-static {p1, v2}, Ld1/k;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {p2, p1}, Ld1/k;->c(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v3, 0x7f0d0008

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eq p2, v0, :cond_6

    const/16 v0, 0x13

    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p2, p1}, Ld1/k;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {p1}, Ld1/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "common_google_play_services_resolution_required_text"

    invoke-static {p1, v4, v0}, Ld1/k;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ld1/s;->d(Ljava/lang/Object;)V

    check-cast v5, Landroid/app/NotificationManager;

    new-instance v6, Lk/i;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Lk/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, v6, Lk/i;->n:Z

    const/16 v8, 0x10

    invoke-virtual {v6, v8, v1}, Lk/i;->c(IZ)V

    invoke-static {v2}, Lk/i;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v6, Lk/i;->e:Ljava/lang/CharSequence;

    new-instance v2, Lk/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lk/i;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v2, Lk/h;->b:Ljava/lang/CharSequence;

    invoke-virtual {v6, v2}, Lk/i;->e(LC/b;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v8, Le2/d;->a:Ljava/lang/Boolean;

    if-nez v8, :cond_7

    const-string v8, "android.hardware.type.watch"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Le2/d;->a:Ljava/lang/Boolean;

    :cond_7
    sget-object v2, Le2/d;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v8, 0x2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v2, v6, Lk/i;->t:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    iput v8, v6, Lk/i;->i:I

    invoke-static {p1}, Le2/d;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0d0010

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Lk/i;->b:Ljava/util/ArrayList;

    new-instance v3, Lk/g;

    const-string v4, ""

    const v9, 0x7f070001

    invoke-static {v7, v4, v9}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    invoke-direct {v3, v4, v0, p3}, Lk/g;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput-object p3, v6, Lk/i;->g:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_9
    const v2, 0x108008a

    iget-object v7, v6, Lk/i;->t:Landroid/app/Notification;

    iput v2, v7, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lk/i;->t:Landroid/app/Notification;

    invoke-static {v2}, Lk/i;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v6, Lk/i;->t:Landroid/app/Notification;

    iput-wide v2, v4, Landroid/app/Notification;->when:J

    iput-object p3, v6, Lk/i;->g:Landroid/app/PendingIntent;

    invoke-static {v0}, Lk/i;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v6, Lk/i;->f:Ljava/lang/CharSequence;

    :goto_3
    sget-object p3, La1/d;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    invoke-virtual {v5, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0d0007

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_a

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v0, p3, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_b
    :goto_4
    iput-object p3, v6, Lk/i;->q:Ljava/lang/String;

    invoke-virtual {v6}, Lk/i;->a()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v1, :cond_c

    if-eq p2, v8, :cond_c

    const/4 p3, 0x3

    if-eq p2, p3, :cond_c

    const p2, 0x9b6d

    goto :goto_5

    :cond_c
    sget-object p2, La1/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    :goto_5
    invoke-virtual {v5, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Landroid/app/Activity;Lc1/e;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const-string v0, "d"

    invoke-super {p0, p3, p1, v0}, La1/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ld1/l;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Ld1/l;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p3, v1, p4}, La1/d;->e(Landroid/app/Activity;ILd1/l;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, La1/d;->f(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
