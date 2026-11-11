.class public final LZ0/e;
.super Lcom/google/android/gms/common/internal/a;
.source "SourceFile"


# instance fields
.field public final y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LM0/r0;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lc1/o;Lc1/o;)V
    .locals 15

    move-object/from16 v0, p4

    const/16 v4, 0x5b

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILM0/r0;Lb1/i;Lb1/j;I)V

    iget-object v1, v5, LM0/r0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance v2, LY0/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, LY0/b;->a:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, LY0/b;->h:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, LY0/b;->a:Ljava/util/HashSet;

    iget-boolean v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->i:Z

    iput-boolean v3, v2, LY0/b;->b:Z

    iget-boolean v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->j:Z

    iput-boolean v3, v2, LY0/b;->c:Z

    iget-boolean v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h:Z

    iput-boolean v3, v2, LY0/b;->d:Z

    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Ljava/lang/String;

    iput-object v3, v2, LY0/b;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->g:Landroid/accounts/Account;

    iput-object v3, v2, LY0/b;->f:Landroid/accounts/Account;

    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Ljava/lang/String;

    iput-object v3, v2, LY0/b;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v2, LY0/b;->h:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n:Ljava/lang/String;

    iput-object v0, v2, LY0/b;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v2, LY0/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v2, LY0/b;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, LY0/b;->h:Ljava/util/HashMap;

    :goto_0
    invoke-static {}, Lm1/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LY0/b;->i:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    iget-object v4, v2, LY0/b;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v2, LY0/b;->a:Ljava/util/HashSet;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->r:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->q:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v1, v2, LY0/b;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, v2, LY0/b;->f:Landroid/accounts/Account;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, v2, LY0/b;->a:Ljava/util/HashSet;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->p:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, v2, LY0/b;->f:Landroid/accounts/Account;

    iget-boolean v8, v2, LY0/b;->d:Z

    iget-boolean v9, v2, LY0/b;->b:Z

    iget-boolean v10, v2, LY0/b;->c:Z

    iget-object v11, v2, LY0/b;->e:Ljava/lang/String;

    iget-object v12, v2, LY0/b;->g:Ljava/lang/String;

    iget-object v13, v2, LY0/b;->h:Ljava/util/HashMap;

    iget-object v14, v2, LY0/b;->i:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iput-object v4, p0, LZ0/e;->y:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, LZ0/k;

    if-eqz v2, :cond_1

    check-cast v1, LZ0/k;

    return-object v1

    :cond_1
    new-instance v1, LZ0/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lm1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.ISignInService"

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.service.START"

    return-object v0
.end method
