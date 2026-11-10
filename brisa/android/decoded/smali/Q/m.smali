.class public final LQ/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/o;


# virtual methods
.method public final c(LQ/k;LG/x;)LQ/h;
    .locals 2

    iget-object p1, p2, LG/x;->t:LG/s;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, LQ/p;

    new-instance p2, LQ/g;

    new-instance v0, LQ/z;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, LQ/g;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, LQ/p;-><init>(LQ/g;)V

    return-object p1
.end method

.method public final d(Landroid/os/Looper;LO/j;)V
    .locals 0

    return-void
.end method

.method public final f(LG/x;)I
    .locals 0

    iget-object p1, p1, LG/x;->t:LG/s;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
