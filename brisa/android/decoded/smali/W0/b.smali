.class public final LW0/b;
.super Lcom/brisa/local/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LW0/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Ljava/lang/Object;Lb1/i;Lb1/j;)Lb1/b;
    .locals 7

    iget v0, p0, LW0/b;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p6}, Lcom/brisa/local/a;->d(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Ljava/lang/Object;Lb1/i;Lb1/j;)Lb1/b;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    check-cast p4, Lq1/a;

    new-instance v0, Lr1/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, LM0/r0;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string p2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    const/4 p3, 0x0

    invoke-virtual {v4, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    const-string p2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 p2, 0x0

    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 p4, 0x1

    invoke-virtual {v4, p1, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lr1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Landroid/os/Bundle;Lb1/i;Lb1/j;)V

    return-object v0

    :pswitch_3
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v0, LZ0/e;

    move-object v5, p5

    check-cast v5, Lc1/o;

    move-object v6, p6

    check-cast v6, Lc1/o;

    invoke-direct/range {v0 .. v6}, LZ0/e;-><init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lc1/o;Lc1/o;)V

    return-object v0

    :pswitch_4
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    check-cast v4, LW0/d;

    new-instance v0, Lm1/g;

    move-object v5, p5

    check-cast v5, Lc1/o;

    move-object v6, p6

    check-cast v6, Lc1/o;

    invoke-direct/range {v0 .. v6}, Lm1/g;-><init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;LW0/d;Lc1/o;Lc1/o;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic f(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Ljava/lang/Object;Lc1/o;Lc1/o;)Lb1/b;
    .locals 7

    iget v0, p0, LW0/b;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p6}, Lcom/brisa/local/a;->f(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Ljava/lang/Object;Lc1/o;Lc1/o;)Lb1/b;

    move-result-object p1

    return-object p1

    :pswitch_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    check-cast p4, LX0/b;

    new-instance v0, Lm1/i;

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lm1/i;-><init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Lc1/o;Lc1/o;)V

    return-object v0

    :pswitch_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    check-cast v4, Ld1/j;

    new-instance v0, Lf1/c;

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lf1/c;-><init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Ld1/j;Lc1/o;Lc1/o;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
