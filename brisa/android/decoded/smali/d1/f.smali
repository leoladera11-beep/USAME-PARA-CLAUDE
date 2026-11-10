.class public final Ld1/f;
.super Le1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld1/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:J

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/g;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LN0/g;-><init>(I)V

    sput-object v0, Ld1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld1/f;->e:I

    iput p2, p0, Ld1/f;->f:I

    iput p3, p0, Ld1/f;->g:I

    iput-wide p4, p0, Ld1/f;->h:J

    iput-wide p6, p0, Ld1/f;->i:J

    iput-object p8, p0, Ld1/f;->j:Ljava/lang/String;

    iput-object p9, p0, Ld1/f;->k:Ljava/lang/String;

    iput p10, p0, Ld1/f;->l:I

    iput p11, p0, Ld1/f;->m:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v0, p0, Ld1/f;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v0, p0, Ld1/f;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v0, p0, Ld1/f;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p1, v1, v0}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Ld1/f;->h:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Ld1/f;->i:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v2, 0x6

    iget-object v3, p0, Ld1/f;->j:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v2, 0x7

    iget-object v3, p0, Ld1/f;->k:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/b;->l(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v0, p0, Ld1/f;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v0, p0, Ld1/f;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
