.class public final Lb0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/z;


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)Lb0/y;
    .locals 4

    new-instance v0, Lb0/y;

    new-instance v1, Lb0/A;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Lb0/A;-><init>(JJ)V

    invoke-direct {v0, v1, v1}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v0
.end method

.method public final g()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
