.class public abstract synthetic LG/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/os/SharedMemory;)I
    .locals 0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->getSize()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(I)Landroid/os/SharedMemory;
    .locals 1

    const-string v0, "BundleableByteArray"

    invoke-static {v0, p0}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/os/Parcelable;)Landroid/os/SharedMemory;
    .locals 0

    check-cast p0, Landroid/os/SharedMemory;

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/os/SharedMemory;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/os/SharedMemory;)V
    .locals 1

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p0, v0}, Landroid/os/SharedMemory;->setProtect(I)Z

    return-void
.end method

.method public static bridge synthetic f(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static bridge synthetic g(Landroid/os/SharedMemory;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/os/SharedMemory;)V
    .locals 0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V

    return-void
.end method
