.class public final LZ/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/brisa/local/VideoPlaybackService;

.field public b:Z

.field public c:LS/j;

.field public d:J

.field public e:Landroid/os/Handler;

.field public f:LN/s;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/k;->a:Lcom/brisa/local/VideoPlaybackService;

    new-instance v0, LM0/w1;

    invoke-direct {v0, p1}, LM0/w1;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    iput-object v0, p0, LZ/k;->c:LS/j;

    return-void
.end method
