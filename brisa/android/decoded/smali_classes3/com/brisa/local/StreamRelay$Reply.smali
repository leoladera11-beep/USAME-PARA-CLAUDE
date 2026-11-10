.class public final Lcom/brisa/local/StreamRelay$Reply;
.super Ljava/lang/Object;
.source "StreamRelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/StreamRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reply"
.end annotation


# instance fields
.field public final body:Ljava/io/InputStream;

.field public final length:J

.field public final range:Ljava/lang/String;

.field public final status:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/brisa/local/StreamRelay$Reply;->status:I

    .line 39
    iput-object p2, p0, Lcom/brisa/local/StreamRelay$Reply;->type:Ljava/lang/String;

    .line 40
    iput-wide p3, p0, Lcom/brisa/local/StreamRelay$Reply;->length:J

    .line 41
    iput-object p5, p0, Lcom/brisa/local/StreamRelay$Reply;->range:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/brisa/local/StreamRelay$Reply;->body:Ljava/io/InputStream;

    .line 43
    return-void
.end method
