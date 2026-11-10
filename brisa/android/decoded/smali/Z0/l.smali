.class public final LZ0/l;
.super Lm1/e;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/RevocationBoundService;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LZ0/l;->b:I

    .line 1
    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lm1/e;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p1, p0, LZ0/l;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm1/b;Ls1/d;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, LZ0/l;->b:I

    .line 3
    iput-object p2, p0, LZ0/l;->c:Ljava/lang/Object;

    .line 4
    const-string p1, "com.google.android.gms.auth.api.identity.internal.IAuthorizationCallback"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lm1/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final G0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9

    iget p3, p0, LZ0/l;->b:I

    iget-object v0, p0, LZ0/l;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_0

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lm1/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, LX0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lm1/f;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, LX0/a;

    invoke-static {p2}, Lm1/f;->c(Landroid/os/Parcel;)V

    check-cast v0, Ls1/d;

    iget p2, p1, Lcom/google/android/gms/common/api/Status;->e:I

    if-gtz p2, :cond_0

    invoke-virtual {v0, p3}, Ls1/d;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/common/api/Status;->g:Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    new-instance p2, Lb1/l;

    invoke-direct {p2, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lb1/d;

    invoke-direct {p2, p1}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-virtual {v0, p2}, Ls1/d;->a(Lb1/d;)V

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :pswitch_0
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    move v1, v2

    goto/16 :goto_8

    :cond_3
    invoke-virtual {p0}, LZ0/l;->I0()V

    invoke-static {v4}, LZ0/i;->z(Landroid/content/Context;)LZ0/i;

    move-result-object p1

    invoke-virtual {p1}, LZ0/i;->A()V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p0}, LZ0/l;->I0()V

    invoke-static {v4}, LZ0/b;->a(Landroid/content/Context;)LZ0/b;

    move-result-object p1

    invoke-virtual {p1}, LZ0/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->o:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    const-string p3, "defaultGoogleSignInAccount"

    invoke-virtual {p1, p3}, LZ0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "googleSignInOptions"

    invoke-static {v3, p3}, LZ0/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LZ0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p1

    goto :goto_3

    :catch_0
    :cond_6
    :goto_2
    move-object p3, v0

    :cond_7
    :goto_3
    move-object v7, p3

    new-instance v3, LY0/a;

    invoke-static {v7}, Ld1/s;->d(Ljava/lang/Object;)V

    new-instance p1, Lcom/brisa/local/j;

    const/16 p3, 0x1d

    invoke-direct {p1, p3}, Lcom/brisa/local/j;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v8, Lb1/g;

    invoke-direct {v8, p1, p3}, Lb1/g;-><init>(Lcom/brisa/local/j;Landroid/os/Looper;)V

    const/4 v5, 0x0

    sget-object v6, LW0/a;->a:LW0/c;

    invoke-direct/range {v3 .. v8}, Lb1/h;-><init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V

    const/4 p1, 0x3

    iget-object p3, v3, Lb1/h;->a:Landroid/content/Context;

    iget-object v4, v3, Lb1/h;->h:Lc1/q;

    if-eqz p2, :cond_c

    invoke-virtual {v3}, LY0/a;->c()I

    move-result p2

    if-ne p2, p1, :cond_8

    move p2, v1

    goto :goto_4

    :cond_8
    move p2, v2

    :goto_4
    sget-object v3, LZ0/h;->a:LC1/e;

    iget v5, v3, LC1/e;->f:I

    if-gt v5, p1, :cond_9

    iget-object p1, v3, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v3, v3, LC1/e;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "Revoking access"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p3}, LZ0/b;->a(Landroid/content/Context;)LZ0/b;

    move-result-object p1

    const-string v3, "refreshToken"

    invoke-virtual {p1, v3}, LZ0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, LZ0/h;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_b

    if-nez p1, :cond_a

    sget-object p1, LZ0/c;->g:LC1/e;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/4 p2, 0x4

    invoke-direct {p1, p2, v0, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    const/4 p2, 0x0

    xor-int/2addr p2, v1

    const-string p3, "Status code must not be SUCCESS"

    invoke-static {p3, p2}, Ld1/s;->a(Ljava/lang/String;Z)V

    new-instance p2, Lb1/o;

    invoke-direct {p2, p1}, Lb1/o;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->G(Lb1/m;)V

    goto :goto_5

    :cond_a
    new-instance p2, LZ0/c;

    invoke-direct {p2, p1}, LZ0/c;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p2, p2, LZ0/c;->f:Lc1/i;

    goto :goto_5

    :cond_b
    new-instance p2, LZ0/g;

    invoke-direct {p2, v4, v1}, LZ0/g;-><init>(Lb1/k;I)V

    invoke-virtual {v4, p2}, Lc1/q;->a(LZ0/g;)LZ0/g;

    :goto_5
    new-instance p1, Ld1/m;

    invoke-direct {p1, v2}, Ld1/m;-><init>(I)V

    new-instance p3, Ls1/d;

    invoke-direct {p3}, Ls1/d;-><init>()V

    new-instance v0, Lc1/j;

    invoke-direct {v0, p2, p3, p1}, Lc1/j;-><init>(Lcom/brisa/local/u;Ls1/d;Ld1/m;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->C(Lc1/j;)V

    goto :goto_8

    :cond_c
    invoke-virtual {v3}, LY0/a;->c()I

    move-result p2

    if-ne p2, p1, :cond_d

    move p2, v1

    goto :goto_6

    :cond_d
    move p2, v2

    :goto_6
    sget-object v0, LZ0/h;->a:LC1/e;

    iget v3, v0, LC1/e;->f:I

    if-gt v3, p1, :cond_e

    iget-object p1, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, LC1/e;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "Signing out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {p3}, LZ0/h;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_f

    new-instance p1, Lc1/i;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lb1/k;)V

    sget-object p2, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->G(Lb1/m;)V

    goto :goto_7

    :cond_f
    new-instance p1, LZ0/g;

    invoke-direct {p1, v4, v2}, LZ0/g;-><init>(Lb1/k;I)V

    invoke-virtual {v4, p1}, Lc1/q;->a(LZ0/g;)LZ0/g;

    :goto_7
    new-instance p2, Ld1/m;

    invoke-direct {p2, v2}, Ld1/m;-><init>(I)V

    new-instance p3, Ls1/d;

    invoke-direct {p3}, Ls1/d;-><init>()V

    new-instance v0, Lc1/j;

    invoke-direct {v0, p1, p3, p2}, Lc1/j;-><init>(Lcom/brisa/local/u;Ls1/d;Ld1/m;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->C(Lc1/j;)V

    :goto_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public I0()V
    .locals 6

    iget-object v0, p0, LZ0/l;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "com.google.android.gms"

    invoke-static {v0}, Lj1/b;->a(Landroid/content/Context;)LZ0/i;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v3, LZ0/i;->e:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x40

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0}, La1/g;->x(Landroid/content/Context;)La1/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_6

    const/4 v4, 0x0

    invoke-static {v1, v4}, La1/g;->H(Landroid/content/pm/PackageInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_4

    :cond_0
    const/4 v5, 0x1

    invoke-static {v1, v5}, La1/g;->H(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget-boolean v1, La1/f;->c:Z

    if-nez v1, :cond_2

    :try_start_2
    invoke-static {v0}, Lj1/b;->a(Landroid/content/Context;)LZ0/i;

    move-result-object v1

    iget-object v1, v1, LZ0/i;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v0}, La1/g;->x(Landroid/content/Context;)La1/g;

    if-eqz v1, :cond_1

    invoke-static {v1, v4}, La1/g;->H(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1, v5}, La1/g;->H(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v5, La1/f;->b:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sput-boolean v4, La1/f;->b:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    sput-boolean v5, La1/f;->c:Z

    goto :goto_3

    :goto_1
    :try_start_3
    const-string v1, "GooglePlayServicesUtil"

    const-string v2, "Cannot find Google Play services package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sput-boolean v5, La1/f;->c:Z

    goto :goto_3

    :goto_2
    sput-boolean v5, La1/f;->c:Z

    throw v0

    :cond_2
    :goto_3
    sget-boolean v0, La1/f;->b:Z

    if-nez v0, :cond_4

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    const-string v0, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    :goto_4
    return-void

    :catch_1
    const/4 v0, 0x3

    const-string v1, "UidVerifier"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context.getSystemService(Context.APP_OPS_SERVICE) is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    :goto_5
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
