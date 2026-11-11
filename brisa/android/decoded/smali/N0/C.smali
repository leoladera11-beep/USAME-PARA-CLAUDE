.class public final LN0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LN0/C;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Landroid/graphics/Bitmap;

.field public j:[B

.field public final k:Landroid/net/Uri;

.field public final l:Landroid/os/Bundle;

.field public final m:Landroid/net/Uri;

.field public n:Landroid/media/MediaDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LN0/g;-><init>(I)V

    sput-object v0, LN0/C;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/C;->e:Ljava/lang/String;

    iput-object p2, p0, LN0/C;->f:Ljava/lang/CharSequence;

    iput-object p3, p0, LN0/C;->g:Ljava/lang/CharSequence;

    iput-object p4, p0, LN0/C;->h:Ljava/lang/CharSequence;

    iput-object p5, p0, LN0/C;->i:Landroid/graphics/Bitmap;

    iput-object p6, p0, LN0/C;->k:Landroid/net/Uri;

    iput-object p7, p0, LN0/C;->l:Landroid/os/Bundle;

    iput-object p8, p0, LN0/C;->m:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/media/MediaDescription;)LN0/C;
    .locals 14

    const-string v0, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    const-string v1, "android.support.v4.media.description.MEDIA_URI"

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v10, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Landroid/os/BaseBundle;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v9, v10

    goto :goto_1

    :goto_0
    const-string v1, "MediaDescriptionCompat"

    const-string v2, "Failed to parse extras"

    invoke-static {v1, v2, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v9

    goto :goto_1

    :cond_2
    move-object v13, v9

    move-object v9, v2

    move-object v2, v13

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    move-object v10, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :goto_3
    new-instance v2, LN0/C;

    invoke-direct/range {v2 .. v10}, LN0/C;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    iput-object p0, v2, LN0/C;->n:Landroid/media/MediaDescription;

    return-object v2
.end method


# virtual methods
.method public final b()Landroid/media/MediaDescription;
    .locals 2

    iget-object v0, p0, LN0/C;->n:Landroid/media/MediaDescription;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    iget-object v1, p0, LN0/C;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->k:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    iget-object v1, p0, LN0/C;->m:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    iput-object v0, p0, LN0/C;->n:Landroid/media/MediaDescription;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LN0/C;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LN0/C;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LN0/C;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, LN0/C;->b()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
