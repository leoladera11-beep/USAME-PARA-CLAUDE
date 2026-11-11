.class public final Lr1/d;
.super Le1/a;
.source "SourceFile"

# interfaces
.implements Lb1/m;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr1/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld1/A;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ld1/A;-><init>(I)V

    sput-object v0, Lr1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr1/d;->e:Ljava/util/List;

    iput-object p1, p0, Lr1/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lr1/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->m:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lr1/d;->e:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p1, v1}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v0, 0x2

    iget-object v1, p0, Lr1/d;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
