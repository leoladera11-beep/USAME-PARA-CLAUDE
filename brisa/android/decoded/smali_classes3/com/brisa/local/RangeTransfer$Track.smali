.class final Lcom/brisa/local/RangeTransfer$Track;
.super Ljava/lang/Object;
.source "RangeTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/RangeTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Track"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final output:Ljava/io/File;

.field final split:Z

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/brisa/local/RangeTransfer$Track;->url:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/brisa/local/RangeTransfer$Track;->key:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/brisa/local/RangeTransfer$Track;->output:Ljava/io/File;

    .line 42
    iput-boolean p4, p0, Lcom/brisa/local/RangeTransfer$Track;->split:Z

    .line 43
    return-void
.end method
