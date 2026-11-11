.class public final Lb1/e;
.super Le1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lb1/e;


# instance fields
.field public final e:Lb1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lb1/p;->b:Lb1/p;

    sput-object v0, Lb1/e;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lb1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb1/e;-><init>(Lb1/f;)V

    sput-object v0, Lb1/e;->f:Lb1/e;

    return-void
.end method

.method public constructor <init>(Lb1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/e;->e:Lb1/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb1/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb1/e;

    iget-object v0, p0, Lb1/e;->e:Lb1/f;

    iget-object p1, p1, Lb1/e;->e:Lb1/f;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lb1/e;->e:Lb1/f;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lb1/e;->e:Lb1/f;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiMetadata(complianceOptions="

    const-string v2, ")"

    invoke-static {v1, v0, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const v0, -0xc2a5d3a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lb1/e;->e:Lb1/f;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
