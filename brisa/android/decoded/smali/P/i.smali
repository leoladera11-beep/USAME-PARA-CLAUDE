.class public final LP/i;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const-string v0, "AudioOutput write failed: "

    invoke-static {p1, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, LP/i;->f:Z

    iput p1, p0, LP/i;->e:I

    return-void
.end method
