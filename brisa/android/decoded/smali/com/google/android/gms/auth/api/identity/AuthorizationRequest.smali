.class public Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
.super Le1/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z

.field public final i:Landroid/accounts/Account;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Landroid/os/Bundle;

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/g;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LN0/g;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "requestedScopes cannot be null or empty"

    invoke-static {v1, v0}, Ld1/s;->a(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    iput-object p9, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    iput-boolean p10, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    move-result v3

    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Ljava/lang/String;

    invoke-static {v0, p1}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->e:Ljava/util/List;

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->n(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->g:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v2, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->h:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->i:Landroid/accounts/Account;

    invoke-static {p1, v1, v3, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->j:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->k:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 p2, 0x8

    invoke-static {p1, p2, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x9

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->m:Landroid/os/Bundle;

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/session/b;->j(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 p2, 0xa

    invoke-static {p1, p2, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
