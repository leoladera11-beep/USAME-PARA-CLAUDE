.class public final LM0/y0;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements LM0/o;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:I


# direct methods
.method public constructor <init>(LM0/l0;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media3.session.IMediaController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM0/y0;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, -0x1

    iput p1, p0, LM0/y0;->b:I

    return-void
.end method

.method public static w(Landroid/os/IBinder;)LM0/o;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media3.session.IMediaController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LM0/o;

    if-eqz v1, :cond_1

    check-cast v0, LM0/o;

    return-object v0

    :cond_1
    new-instance v0, LM0/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LM0/n;->a:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public final A0(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, LM0/m2;->a(Landroid/os/Bundle;)LM0/m2;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, LM0/y0;->d0(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for SessionResult"

    invoke-static {p2, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final C(LM0/x0;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, LM0/y0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, v2, LM0/l0;->a:LM0/z;

    iget-object v3, v3, LM0/z;->e:Landroid/os/Handler;

    new-instance v4, LH/i;

    const/16 v5, 0xb

    invoke-direct {v4, v2, p1, v5}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v4}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final Q(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, LM0/j;->a(Landroid/os/Bundle;)LM0/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, p1, LM0/j;->b:I

    iput p2, p0, LM0/y0;->b:I

    new-instance p2, LI0/E;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, LM0/y0;->C(LM0/x0;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Malformed Bundle for ConnectionResult. Disconnected from the session."

    invoke-static {p2, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LM0/y0;->b()V

    return-void
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final b()V
    .locals 2

    new-instance v0, LG/v;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LG/v;-><init>(I)V

    invoke-virtual {p0, v0}, LM0/y0;->C(LM0/x0;)V

    return-void
.end method

.method public final d0(ILjava/lang/Object;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, LM0/y0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, v2, LM0/l0;->b:LM0/h2;

    invoke-virtual {v3, p1, p2}, LM0/h2;->m(ILjava/lang/Object;)V

    iget-object p2, v2, LM0/l0;->a:LM0/z;

    new-instance v3, LM0/a0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p1, v4}, LM0/a0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p2, v3}, LM0/z;->X0(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final e(I)V
    .locals 1

    new-instance p1, LG/v;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, LG/v;-><init>(I)V

    invoke-virtual {p0, p1}, LM0/y0;->C(LM0/x0;)V

    return-void
.end method

.method public final f0(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, LG/c0;->b(Landroid/os/Bundle;)LG/c0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, LM0/v0;

    invoke-direct {p2, p1}, LM0/v0;-><init>(LG/c0;)V

    invoke-virtual {p0, p2}, LM0/y0;->C(LM0/x0;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for Commands"

    invoke-static {p2, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g(III)V
    .locals 1

    new-instance p1, LM0/H;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, LM0/H;-><init>(III)V

    invoke-virtual {p0, p1}, LM0/y0;->C(LM0/x0;)V

    return-void
.end method

.method public final j0(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, LM0/y0;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, LM0/l2;->b(ILandroid/os/Bundle;)LM0/l2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, LI0/E;

    const/4 v0, 0x4

    invoke-direct {p2, p1, v0}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, LM0/y0;->C(LM0/x0;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for SessionPositionInfo"

    invoke-static {p2, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k0(ILandroid/os/Bundle;Z)V
    .locals 2

    new-instance v0, LM0/Z1;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LM0/Z1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p3, LM0/Z1;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2, v0}, LM0/y0;->u0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final m(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LM0/y0;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {v0, p2}, LM0/v;->a(ILandroid/os/Bundle;)LM0/v;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, LM0/y0;->d0(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for LibraryResult"

    invoke-static {p2, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n0(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "MediaControllerStub"

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p2}, LM0/i2;->a(Landroid/os/Bundle;)LM0/i2;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, LM0/u0;

    invoke-direct {v0, p1, p2, p3}, LM0/u0;-><init>(ILM0/i2;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, LM0/y0;->C(LM0/x0;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {v0, p2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Ignoring custom command with null args."

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const-string v0, "androidx.media3.session.IMediaController"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0xfa1

    const-string v2, "Ignoring malformed Bundle for LibraryParams"

    const-string v3, "MediaControllerStub"

    if-eq p1, v0, :cond_11

    const/16 v0, 0xfa2

    if-eq p1, v0, :cond_d

    const-string v0, "Ignoring malformed Bundle for CommandButton"

    const/4 v2, -0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, LM0/y0;->g(III)V

    return v1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    if-eqz p4, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p4}, LM0/i2;->a(Landroid/os/Bundle;)LM0/i2;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p4, LG/l0;

    invoke-direct {p4, p1, p3, v0, p2}, LG/l0;-><init>(ILM0/i2;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p4}, LM0/y0;->C(LM0/x0;)V

    goto/16 :goto_6

    :catch_0
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {v3, p2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_3
    :goto_0
    const-string p1, "Ignoring custom command progress update with null args."

    invoke-static {v3, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_4

    goto/16 :goto_6

    :cond_4
    iget p3, p0, LM0/y0;->b:I

    if-ne p3, v2, :cond_5

    goto/16 :goto_6

    :cond_5
    :try_start_1
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p3

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge v4, p4, :cond_6

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LM0/y0;->b:I

    invoke-static {v2, p4}, LM0/c;->i(ILandroid/os/Bundle;)LM0/c;

    move-result-object p4

    invoke-virtual {p3, p4}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p3}, Lu1/M;->f()Lu1/C0;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p3, LM0/u0;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, LM0/u0;-><init>(ILu1/C0;I)V

    invoke-virtual {p0, p3}, LM0/y0;->C(LM0/x0;)V

    goto/16 :goto_6

    :catch_1
    move-exception p1

    invoke-static {v3, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    :try_start_2
    invoke-static {p1}, LM0/k2;->a(Landroid/os/Bundle;)LM0/k2;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance p1, LG/v;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, LG/v;-><init>(I)V

    invoke-virtual {p0, p1}, LM0/y0;->C(LM0/x0;)V

    goto/16 :goto_6

    :catch_2
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for SessionError"

    invoke-static {v3, p2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    new-instance p3, LI0/E;

    invoke-direct {p3, p1, p2}, LI0/E;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p3}, LM0/y0;->C(LM0/x0;)V

    return v1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p4, p2}, LM0/y0;->u0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Ignoring null Bundle for extras"

    invoke-static {v3, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    new-instance p2, LM0/w0;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, LM0/w0;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p2}, LM0/y0;->C(LM0/x0;)V

    return v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, LM0/y0;->e(I)V

    return v1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    invoke-static {p2, p1}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p3, :cond_15

    if-nez p1, :cond_8

    goto/16 :goto_6

    :cond_8
    :try_start_3
    invoke-static {p3}, LM0/j2;->b(Landroid/os/Bundle;)LM0/j2;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {p1}, LG/c0;->b(Landroid/os/Bundle;)LG/c0;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    new-instance p3, LM0/K;

    const/4 p4, 0x7

    invoke-direct {p3, p2, p1, p4}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p3}, LM0/y0;->C(LM0/x0;)V

    goto/16 :goto_6

    :catch_3
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for Commands"

    invoke-static {v3, p2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catch_4
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for SessionCommands"

    invoke-static {v3, p2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, LM0/y0;->f0(ILandroid/os/Bundle;)V

    return v1

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, LM0/y0;->j0(ILandroid/os/Bundle;)V

    return v1

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move v4, v1

    :cond_9
    invoke-virtual {p0, p1, p3, v4}, LM0/y0;->k0(ILandroid/os/Bundle;Z)V

    return v1

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p0}, LM0/y0;->b()V

    return v1

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p4, p2}, LM0/y0;->n0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v1

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_a

    goto/16 :goto_6

    :cond_a
    iget p3, p0, LM0/y0;->b:I

    if-ne p3, v2, :cond_b

    goto/16 :goto_6

    :cond_b
    :try_start_5
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p3

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge v4, p4, :cond_c

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, LM0/y0;->b:I

    invoke-static {v2, p4}, LM0/c;->i(ILandroid/os/Bundle;)LM0/c;

    move-result-object p4

    invoke-virtual {p3, p4}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual {p3}, Lu1/M;->f()Lu1/C0;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    new-instance p3, LM0/u0;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, LM0/u0;-><init>(ILu1/C0;I)V

    invoke-virtual {p0, p3}, LM0/y0;->C(LM0/x0;)V

    goto/16 :goto_6

    :catch_5
    move-exception p1

    invoke-static {v3, v0, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, LM0/y0;->m(ILandroid/os/Bundle;)V

    return v1

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, LM0/y0;->A0(ILandroid/os/Bundle;)V

    return v1

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, LM0/y0;->Q(ILandroid/os/Bundle;)V

    return v1

    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "onSearchResultChanged(): Ignoring empty query"

    invoke-static {v3, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    if-gez p3, :cond_f

    const-string p1, "onSearchResultChanged(): Ignoring negative itemCount: "

    :goto_3
    invoke-static {p1, v3, p3}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_f
    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    :try_start_6
    invoke-static {p2}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_4
    new-instance p1, LG/v;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, LG/v;-><init>(I)V

    invoke-virtual {p0, p1}, LM0/y0;->C(LM0/x0;)V

    goto :goto_6

    :catch_6
    move-exception p1

    invoke-static {v3, v2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, LM0/Y1;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "onChildrenChanged(): Ignoring empty parentId"

    invoke-static {v3, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    if-gez p3, :cond_13

    const-string p1, "onChildrenChanged(): Ignoring negative itemCount: "

    goto :goto_3

    :cond_13
    if-nez p2, :cond_14

    goto :goto_5

    :cond_14
    :try_start_7
    invoke-static {p2}, LM0/z0;->a(Landroid/os/Bundle;)LM0/z0;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_5
    new-instance p1, LG/v;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, LG/v;-><init>(I)V

    invoke-virtual {p0, p1}, LM0/y0;->C(LM0/x0;)V

    goto :goto_6

    :catch_7
    move-exception p1

    invoke-static {v3, v2, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
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

.method public final u0(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    const-string p1, "MediaControllerStub"

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LM0/y0;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0, p2}, LM0/b2;->r(ILandroid/os/Bundle;)LM0/b2;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, LM0/Z1;

    sget-object v1, LM0/Z1;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v3, LM0/Z1;->e:Ljava/lang/String;

    invoke-virtual {p3, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-direct {v0, v1, p3}, LM0/Z1;-><init>(ZZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p1, LM0/K;

    const/4 p3, 0x6

    invoke-direct {p1, p2, v0, p3}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, LM0/y0;->C(LM0/x0;)V

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Ignoring malformed Bundle for BundlingExclusions"

    invoke-static {p1, p3, p2}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p2

    const-string p3, "Ignoring malformed Bundle for PlayerInfo"

    invoke-static {p1, p3, p2}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
