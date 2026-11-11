.class public abstract LB/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;LB/d;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LB/g;

    if-eqz v0, :cond_0

    check-cast p0, LB/g;

    invoke-interface {p0}, LB/g;->g()LB/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LB/i;->d(LB/d;)V

    :cond_0
    return-void
.end method
