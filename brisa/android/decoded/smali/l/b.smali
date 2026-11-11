.class public abstract Ll/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_a

    if-nez p3, :cond_a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, p5, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p5

    const/4 v2, -0x1

    if-ne p5, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3}, Lk/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 v3, 0x0

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v4, v1

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v1, v1, v3

    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    if-ne v2, v0, :cond_6

    invoke-static {v4, v1}, Lr/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_5

    invoke-static {p0}, Lk/d;->c(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, p5, v4, v1}, Lk/d;->a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lk/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p5, v0, v1}, Lk/d;->a(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-static {p0, v5}, Lk/c;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0, p5, v1}, Lk/c;->c(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_6
    invoke-static {p0, v5}, Lk/c;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {v0, p5, v1}, Lk/c;->c(Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_7

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_7
    const/4 v2, -0x2

    :cond_8
    :goto_2
    if-nez v2, :cond_9

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Permission "

    const-string p2, " is required by your application to receive broadcasts, please add it to your manifest"

    invoke-static {p1, p3, p2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    and-int/lit8 v5, p5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
