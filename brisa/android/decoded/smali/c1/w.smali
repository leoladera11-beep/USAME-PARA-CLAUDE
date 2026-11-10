.class public final Lc1/w;
.super Lm1/e;
.source "SourceFile"

# interfaces
.implements Lb1/i;
.implements Lb1/j;


# static fields
.field public static final i:LW0/b;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:LW0/b;

.field public final e:Ljava/util/Set;

.field public final f:LM0/r0;

.field public g:Lr1/a;

.field public h:LP/L;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lq1/b;->a:LW0/b;

    sput-object v0, Lc1/w;->i:LW0/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln1/d;LM0/r0;)V
    .locals 1

    invoke-direct {p0}, Lm1/e;-><init>()V

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p1, p0, Lc1/w;->b:Landroid/content/Context;

    iput-object p2, p0, Lc1/w;->c:Landroid/os/Handler;

    iput-object p3, p0, Lc1/w;->f:LM0/r0;

    iget-object p1, p3, LM0/r0;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lc1/w;->e:Ljava/util/Set;

    sget-object p1, Lc1/w;->i:LW0/b;

    iput-object p1, p0, Lc1/w;->d:LW0/b;

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 9

    iget-object v0, p0, Lc1/w;->g:Lr1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<<default account>>"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v0, Lr1/a;->z:LM0/r0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/internal/a;->c:Landroid/content/Context;

    invoke-static {v1}, LZ0/b;->a(Landroid/content/Context;)LZ0/b;

    move-result-object v1

    invoke-virtual {v1}, LZ0/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v1, v4

    :goto_0
    new-instance v6, Ld1/n;

    iget-object v7, v0, Lr1/a;->B:Ljava/lang/Integer;

    invoke-static {v7}, Ld1/s;->d(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    invoke-direct {v6, v8, v5, v7, v1}, Ld1/n;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lr1/c;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v5, v0, Lm1/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v5, Ln1/a;->a:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v5, 0x4f45

    invoke-static {v1, v5}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v5

    const/4 v7, 0x4

    invoke-static {v1, v3, v7}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, v8, v6, v2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v1, v5}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v0, Lm1/a;->b:Landroid/os/IBinder;

    const/16 v6, 0xc

    invoke-interface {v0, v6, v1, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string v1, "Remote service probably died when signIn is called"

    const-string v5, "SignInClientImpl"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    new-instance v1, Lr1/e;

    new-instance v6, La1/a;

    const/16 v7, 0x8

    invoke-direct {v6, v7, v4}, La1/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v1, v3, v6, v4}, Lr1/e;-><init>(ILa1/a;Ld1/o;)V

    new-instance v3, Lz1/v;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v1, v4, v2}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v1, p0, Lc1/w;->c:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const-string v1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v5, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final d0(La1/a;)V
    .locals 1

    iget-object v0, p0, Lc1/w;->h:LP/L;

    invoke-virtual {v0, p1}, LP/L;->b(La1/a;)V

    return-void
.end method

.method public final w(I)V
    .locals 2

    iget-object v0, p0, Lc1/w;->h:LP/L;

    iget-object v1, v0, LP/L;->f:Ljava/lang/Object;

    check-cast v1, Lc1/d;

    iget-object v1, v1, Lc1/d;->n:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, LP/L;->c:Ljava/lang/Object;

    check-cast v0, Lc1/a;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/o;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lc1/o;->i:Z

    if-eqz v1, :cond_0

    new-instance p1, La1/a;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, La1/a;-><init>(I)V

    invoke-virtual {v0, p1}, Lc1/o;->m(La1/a;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lc1/o;->w(I)V

    :cond_1
    return-void
.end method
