.class public final Lcom/brisa/local/OfflineCopy;
.super Ljava/lang/Object;
.source "OfflineCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brisa/local/OfflineCopy$Progress;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;JLjava/util/function/BooleanSupplier;Lcom/brisa/local/OfflineCopy$Progress;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    const/high16 v2, 0x20000

    :try_start_1
    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {p4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "Importaci\u00f3n cancelada."

    if-nez v7, :cond_7

    :try_start_2
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v9, 0x0

    if-gez v7, :cond_3

    .line 11
    invoke-interface {p4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-nez p0, :cond_2

    .line 12
    cmp-long p0, v5, v3

    if-eqz p0, :cond_1

    cmp-long p0, p2, v3

    if-lez p0, :cond_0

    cmp-long p0, v5, p2

    if-nez p0, :cond_1

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object p3, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object p3, p2, v9

    sget-object p3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15
    return-wide v5

    .line 12
    :cond_1
    :try_start_4
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "La copia qued\u00f3 incompleta. Comprueba tu conexi\u00f3n y el espacio libre."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    if-nez v7, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v7, p2, v3

    if-lez v7, :cond_6

    cmp-long v7, v5, p2

    if-gtz v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "El tama\u00f1o del archivo cambi\u00f3. Vuelve a elegirlo."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_2
    throw p0

    :cond_6
    :goto_3
    invoke-interface {p5, v5, v6}, Lcom/brisa/local/OfflineCopy$Progress;->bytes(J)V

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 9
    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 16
    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p0
.end method
