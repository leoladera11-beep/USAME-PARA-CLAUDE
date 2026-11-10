.class public final Lp2/J;
.super Lp2/Q;
.source "SourceFile"


# instance fields
.field public final d:LW0/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lp2/Q;-><init>(I)V

    new-instance v0, LW0/c;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LW0/c;-><init>(IZ)V

    iput-object v0, p0, Lp2/J;->d:LW0/c;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lp2/Q;->b:I

    iput v0, p0, Lp2/Q;->c:I

    iget-object v0, p0, Lp2/J;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    return-void
.end method

.method public final g(C)V
    .locals 1

    iget-object v0, p0, Lp2/J;->d:LW0/c;

    invoke-virtual {v0, p1}, LW0/c;->c(C)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp2/J;->d:LW0/c;

    invoke-virtual {v1}, LW0/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
