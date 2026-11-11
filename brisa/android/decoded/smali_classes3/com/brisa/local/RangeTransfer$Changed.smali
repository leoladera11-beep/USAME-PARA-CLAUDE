.class final Lcom/brisa/local/RangeTransfer$Changed;
.super Ljava/io/IOException;
.source "RangeTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/RangeTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Changed"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 381
    const-string v0, "El origen cambi\u00f3 o no devolvi\u00f3 el rango solicitado."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
