.class public final Ld1/c;
.super Le1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld1/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ld1/h;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld1/A;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld1/A;-><init>(I)V

    sput-object v0, Ld1/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ld1/h;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/c;->e:Ld1/h;

    iput-boolean p2, p0, Ld1/c;->f:Z

    iput-boolean p3, p0, Ld1/c;->g:Z

    iput-object p4, p0, Ld1/c;->h:[I

    iput p5, p0, Ld1/c;->i:I

    iput-object p6, p0, Ld1/c;->j:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Ld1/c;->e:Ld1/h;

    invoke-static {p1, v1, v2, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x2

    const/4 v1, 0x4

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Ld1/c;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x3

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Ld1/c;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ld1/c;->h:[I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v2}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    :goto_0
    const/4 p2, 0x5

    invoke-static {p1, p2, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget p2, p0, Ld1/c;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Ld1/c;->j:[I

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    invoke-static {p1, v1}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    :goto_1
    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
