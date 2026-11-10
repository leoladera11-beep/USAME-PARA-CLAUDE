.class public final LP/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LP/l;->a:I

    return-void
.end method


# virtual methods
.method public a()LP/m;
    .locals 2

    iget-boolean v0, p0, LP/l;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LP/l;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LP/l;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, LP/m;

    invoke-direct {v0, p0}, LP/m;-><init>(LP/l;)V

    return-object v0
.end method
