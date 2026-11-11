.class final Lcom/brisa/local/RangeTransfer$Version;
.super Ljava/lang/Object;
.source "RangeTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/RangeTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Version"
.end annotation


# static fields
.field static final SINGLE:Lcom/brisa/local/RangeTransfer$Version;


# instance fields
.field final length:J

.field final parts:I

.field final resource:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 385
    new-instance v0, Lcom/brisa/local/RangeTransfer$Version;

    const/4 v4, 0x1

    const-string v5, ""

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/brisa/local/RangeTransfer$Version;-><init>(JLjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brisa/local/RangeTransfer$Version;->SINGLE:Lcom/brisa/local/RangeTransfer$Version;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-wide p1, p0, Lcom/brisa/local/RangeTransfer$Version;->length:J

    .line 392
    iput-object p3, p0, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    .line 393
    iput p4, p0, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    .line 394
    iput-object p5, p0, Lcom/brisa/local/RangeTransfer$Version;->resource:Ljava/lang/String;

    .line 395
    return-void
.end method

.method static read(Ljava/io/File;)Lcom/brisa/local/RangeTransfer$Version;
    .locals 11

    .line 402
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "version"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 404
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 405
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 406
    const-wide/16 v3, 0x0

    cmp-long v0, v6, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    if-eq v9, v0, :cond_0

    const/4 v0, 0x3

    if-ne v9, v0, :cond_2

    :cond_0
    new-instance v5, Lcom/brisa/local/RangeTransfer$Version;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_0

    :cond_1
    move-object v8, p0

    :goto_0
    invoke-direct/range {v5 .. v10}, Lcom/brisa/local/RangeTransfer$Version;-><init>(JLjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 407
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 406
    return-object v5

    .line 402
    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 407
    :catch_0
    move-exception v0

    return-object v1
.end method


# virtual methods
.method same(Lcom/brisa/local/RangeTransfer$Version;)Z
    .locals 4

    .line 398
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/brisa/local/RangeTransfer$Version;->length:J

    iget-wide v2, p1, Lcom/brisa/local/RangeTransfer$Version;->length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    iget v1, p1, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/RangeTransfer$Version;->resource:Ljava/lang/String;

    iget-object p1, p1, Lcom/brisa/local/RangeTransfer$Version;->resource:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method write(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "version"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 412
    :try_start_0
    iget-wide v1, p0, Lcom/brisa/local/RangeTransfer$Version;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 413
    iget p1, p0, Lcom/brisa/local/RangeTransfer$Version;->parts:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 414
    iget-object p1, p0, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/brisa/local/RangeTransfer$Version;->tag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/brisa/local/RangeTransfer$Version;->resource:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 417
    return-void

    .line 411
    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method
