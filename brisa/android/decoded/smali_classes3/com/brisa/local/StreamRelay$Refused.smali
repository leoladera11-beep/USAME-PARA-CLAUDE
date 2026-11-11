.class public final Lcom/brisa/local/StreamRelay$Refused;
.super Ljava/io/IOException;
.source "StreamRelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/StreamRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Refused"
.end annotation


# instance fields
.field public final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    iput p1, p0, Lcom/brisa/local/StreamRelay$Refused;->status:I

    .line 53
    return-void
.end method
