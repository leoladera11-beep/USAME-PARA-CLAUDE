.class public final Ld1/o;
.super Le1/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld1/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:I

.field public final f:Landroid/os/IBinder;

.field public final g:La1/a;

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/g;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LN0/g;-><init>(I)V

    sput-object v0, Ld1/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;La1/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld1/o;->e:I

    iput-object p2, p0, Ld1/o;->f:Landroid/os/IBinder;

    iput-object p3, p0, Ld1/o;->g:La1/a;

    iput-boolean p4, p0, Ld1/o;->h:Z

    iput-boolean p5, p0, Ld1/o;->i:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p1, Ld1/o;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    check-cast p1, Ld1/o;

    iget-object v0, p0, Ld1/o;->g:La1/a;

    iget-object v1, p1, Ld1/o;->g:La1/a;

    invoke-virtual {v0, v1}, La1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    const/4 v1, 0x0

    iget-object v2, p0, Ld1/o;->f:Landroid/os/IBinder;

    if-nez v2, :cond_3

    move-object v3, v1

    goto :goto_0

    :cond_3
    sget v3, Ld1/a;->b:I

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Ld1/e;

    if-eqz v4, :cond_4

    check-cast v3, Ld1/e;

    goto :goto_0

    :cond_4
    new-instance v3, Ld1/G;

    invoke-direct {v3, v2}, Ld1/G;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iget-object p1, p1, Ld1/o;->f:Landroid/os/IBinder;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    sget v1, Ld1/a;->b:I

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ld1/e;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ld1/e;

    goto :goto_1

    :cond_6
    new-instance v1, Ld1/G;

    invoke-direct {v1, p1}, Ld1/G;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-static {v3, v1}, Ld1/s;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget v1, p0, Ld1/o;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Ld1/o;->f:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/support/v4/media/session/b;->o(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p1, v3}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x3

    iget-object v3, p0, Ld1/o;->g:La1/a;

    invoke-static {p1, v1, v3, p2}, Landroid/support/v4/media/session/b;->k(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v2, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Ld1/o;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x5

    invoke-static {p1, p2, v2}, Landroid/support/v4/media/session/b;->q(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Ld1/o;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v0}, Landroid/support/v4/media/session/b;->p(Landroid/os/Parcel;I)V

    return-void
.end method
