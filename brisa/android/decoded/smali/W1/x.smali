.class public abstract LW1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract c()J
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, LW1/x;->q()Lj2/i;

    move-result-object v0

    invoke-static {v0}, LX1/b;->d(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract e()LW1/o;
.end method

.method public abstract q()Lj2/i;
.end method
