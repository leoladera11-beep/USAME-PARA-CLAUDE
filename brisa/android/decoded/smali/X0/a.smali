.class public final LX0/a;
.super Le1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LX0/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public final j:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/g;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LN0/g;-><init>(I)V

    sput-object v0, LX0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX0/a;->e:Ljava/lang/String;

    iput-object p2, p0, LX0/a;->f:Ljava/lang/String;

    iput-object p3, p0, LX0/a;->g:Ljava/lang/String;

    invoke-static {p4}, Ld1/s;->d(Ljava/lang/Object;)V

    iput-object p4, p0, LX0/a;->h:Ljava/util/List;

    iput-object p6, p0, LX0/a;->j:Landroid/app/PendingIntent;

    iput-object p5, p0, LX0/a;->i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LX0/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LX0/a;

    iget-object v0, p0, LX0/a;->e:Ljava/lang/String;

    iget-object v2, p1, LX0/a;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX0/a;->f:Ljava/lang/String;

    iget-object v2, p1, LX0/a;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX0/a;->g:Ljava/lang/String;

    iget-object v2, p1, LX0/a;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX0/a;->h:Ljava/util/List;

    iget-object v2, p1, LX0/a;->h:Ljava/util/List;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX0/a;->j:Landroid/app/PendingIntent;

    iget-object v2, p1, LX0/a;->j:Landroid/app/PendingIntent;

    invoke-static {v0, v2}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX0/a;->i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p1, LX0/a;->i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v0, p1}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v4, p0, LX0/a;->j:Landroid/app/PendingIntent;

    iget-object v5, p0, LX0/a;->i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v0, p0, LX0/a;->e:Ljava/lang/String;

    iget-object v1, p0, LX0/a;->f:Ljava/lang/String;

    iget-object v2, p0, LX0/a;->g:Ljava/lang/String;

    iget-object v3, p0, LX0/a;->h:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, LX0/a;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, LX0/a;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, LX0/a;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, LX0/a;->h:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-static {p1, v2}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p1, v2}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x5

    iget-object v2, p0, LX0/a;->i:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x6

    iget-object v2, p0, LX0/a;->j:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
