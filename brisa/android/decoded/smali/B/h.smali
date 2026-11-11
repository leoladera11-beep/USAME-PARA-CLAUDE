.class public final LB/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LB/e;

.field public b:LB/f;


# virtual methods
.method public final a(LB/g;LB/d;)V
    .locals 3

    invoke-virtual {p2}, LB/d;->a()LB/e;

    move-result-object v0

    iget-object v1, p0, LB/h;->a:LB/e;

    const-string v2, "state1"

    invoke-static {v1, v2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, LB/h;->a:LB/e;

    iget-object v1, p0, LB/h;->b:LB/f;

    invoke-interface {v1, p1, p2}, LB/f;->a(LB/g;LB/d;)V

    iput-object v0, p0, LB/h;->a:LB/e;

    return-void
.end method
