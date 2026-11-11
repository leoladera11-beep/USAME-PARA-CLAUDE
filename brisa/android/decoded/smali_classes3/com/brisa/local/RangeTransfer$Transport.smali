.class interface abstract Lcom/brisa/local/RangeTransfer$Transport;
.super Ljava/lang/Object;
.source "RangeTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/RangeTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Transport"
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/brisa/local/RangeTransfer$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
