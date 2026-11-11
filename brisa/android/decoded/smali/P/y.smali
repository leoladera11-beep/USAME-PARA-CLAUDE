.class public final LP/y;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Z

.field public final g:LG/x;


# direct methods
.method public constructor <init>(ILG/x;Z)V
    .locals 1

    const-string v0, "AudioTrack write failed: "

    invoke-static {p1, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, LP/y;->f:Z

    iput p1, p0, LP/y;->e:I

    iput-object p2, p0, LP/y;->g:LG/x;

    return-void
.end method
