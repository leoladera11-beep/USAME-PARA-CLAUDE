.class public final Lp2/L;
.super Lp2/Q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lp2/Q;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lp2/Q;->b:I

    iput v0, p0, Lp2/Q;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
