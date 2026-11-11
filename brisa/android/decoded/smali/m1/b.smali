.class public final Lm1/b;
.super Lb1/h;
.source "SourceFile"


# static fields
.field public static final l:LW0/c;


# instance fields
.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LW0/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LW0/b;-><init>(I)V

    new-instance v2, LW0/c;

    const-string v3, "Auth.Api.Identity.Authorization.API"

    invoke-direct {v2, v3, v1, v0}, LW0/c;-><init>(Ljava/lang/String;Lcom/brisa/local/a;Lb1/c;)V

    sput-object v2, Lm1/b;->l:LW0/c;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;LX0/b;)V
    .locals 6

    .line 1
    sget-object v3, Lm1/b;->l:LW0/c;

    sget-object v5, Lb1/g;->c:Lb1/g;

    move-object v2, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lb1/h;-><init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V

    .line 3
    invoke-static {}, Lm1/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lm1/b;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LX0/b;)V
    .locals 6

    .line 4
    sget-object v5, Lb1/g;->c:Lb1/g;

    const/4 v2, 0x0

    .line 5
    sget-object v3, Lm1/b;->l:LW0/c;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lb1/h;-><init>(Landroid/content/Context;Landroid/app/Activity;LW0/c;Lb1/a;Lb1/g;)V

    .line 6
    invoke-static {}, Lm1/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lm1/b;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)La2/d;
    .locals 14

    iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Ljava/util/List;

    const/4 v11, 0x0

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    const-string v3, "requestedScopes cannot be null or empty"

    invoke-static {v3, v2}, Ld1/s;->a(Ljava/lang/String;Z)V

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8}, Lz/K;->c(I)[I

    move-result-object v8

    array-length v9, v8

    move v10, v11

    :goto_2
    if-ge v10, v9, :cond_3

    aget v12, v8, v10

    invoke-static {v12}, LB1/e;->c(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_3
    if-eqz v7, :cond_1

    if-eqz v12, :cond_1

    if-nez v5, :cond_4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_4
    invoke-static {v12}, LB1/e;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v9, v5

    goto :goto_4

    :cond_6
    move-object v9, v3

    :goto_4
    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    iget-object v6, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-static {v4}, Ld1/s;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v4, v3

    :goto_5
    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    move-object v5, v3

    :goto_6
    iget-boolean v7, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    if-eqz v7, :cond_9

    if-eqz v6, :cond_9

    move-object v3, v6

    move-object v7, v3

    move-object v6, v4

    move v4, v0

    goto :goto_7

    :cond_9
    move-object v7, v6

    move-object v6, v4

    move v4, v11

    :goto_7
    iget-boolean v8, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    if-eqz v8, :cond_c

    if-eqz v7, :cond_c

    if-eqz v3, :cond_a

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move v3, v0

    goto :goto_8

    :cond_b
    move v3, v11

    :goto_8
    const-string v8, "two different server client ids provided"

    invoke-static {v8, v3}, Ld1/s;->a(Ljava/lang/String;Z)V

    move v3, v0

    move v8, v2

    move-object v2, v7

    goto :goto_9

    :cond_c
    move-object v2, v3

    move v3, v11

    move v8, v3

    :goto_9
    iget-boolean v10, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    iget-object v7, p0, Lm1/b;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    new-instance p1, LM0/k;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lm1/c;->a:La1/c;

    filled-new-array {v1}, [La1/c;

    move-result-object v1

    iput-object v1, p1, LM0/k;->d:Ljava/lang/Object;

    new-instance v1, LW0/c;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v0, v2}, LW0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, p1, LM0/k;->c:Ljava/lang/Object;

    iput-boolean v11, p1, LM0/k;->a:Z

    const/16 v0, 0x5fe

    iput v0, p1, LM0/k;->b:I

    new-instance v0, LM0/k;

    iget-object v1, p1, LM0/k;->d:Ljava/lang/Object;

    check-cast v1, [La1/c;

    iget-boolean v2, p1, LM0/k;->a:Z

    iget v3, p1, LM0/k;->b:I

    invoke-direct {v0, p1, v1, v2, v3}, LM0/k;-><init>(LM0/k;[La1/c;ZI)V

    invoke-virtual {p0, v11, v0}, Lb1/h;->b(ILM0/k;)La2/d;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/content/Intent;)LX0/a;
    .locals 2

    const-string v0, "status"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/a;->j(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Le1/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/google/android/gms/common/api/Status;->e:I

    if-gtz v1, :cond_1

    const-string v0, "authorization_result"

    sget-object v1, LX0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, Lcom/brisa/local/a;->j(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Le1/b;

    move-result-object p1

    check-cast p1, LX0/a;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lb1/d;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->k:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_1
    new-instance p1, Lb1/d;

    invoke-direct {p1, v0}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_2
    new-instance p1, Lb1/d;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->m:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method
