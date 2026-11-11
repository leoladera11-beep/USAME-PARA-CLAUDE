.class interface abstract Lcom/brisa/local/RangeTransfer$Response;
.super Ljava/lang/Object;
.source "RangeTransfer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/RangeTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Response"
.end annotation


# virtual methods
.method public abstract header(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract length()J
.end method

.method public abstract resource()Ljava/lang/String;
.end method

.method public abstract status()I
.end method

.method public abstract stream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
