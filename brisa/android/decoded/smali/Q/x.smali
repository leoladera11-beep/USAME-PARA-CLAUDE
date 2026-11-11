.class public final LQ/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:LU/r;


# direct methods
.method public constructor <init>(LN0/O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, LQ/x;->a:[B

    iget-object p1, p1, LN0/O;->g:Ljava/lang/Object;

    check-cast p1, LU/r;

    iput-object p1, p0, LQ/x;->b:LU/r;

    return-void
.end method
