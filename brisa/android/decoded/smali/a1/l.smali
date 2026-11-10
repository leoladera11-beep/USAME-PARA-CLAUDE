.class public final La1/l;
.super La1/k;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, La1/k;-><init>([B)V

    iput-object p1, p0, La1/l;->c:[B

    return-void
.end method


# virtual methods
.method public final J0()[B
    .locals 1

    iget-object v0, p0, La1/l;->c:[B

    return-object v0
.end method
