.class public final Ld1/i;
.super Le1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld1/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/g;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, LN0/g;-><init>(I)V

    sput-object v0, Ld1/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld1/i;->e:I

    iput-object p2, p0, Ld1/i;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v0, p0, Ld1/i;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Ld1/i;->f:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->n(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
