.class public final synthetic LM0/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/k;
.implements LJ/q;


# instance fields
.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, LM0/I1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, LM0/I1;->e:J

    check-cast p1, LM0/d2;

    invoke-virtual {p1, v0, v1}, LM0/d2;->y0(J)V

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, LP/K;

    iget-object v0, p1, LP/K;->a:LP/O;

    iget-object v1, v0, LP/O;->j:LP/K;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, LP/O;->n:La1/g;

    if-eqz p1, :cond_1

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, LP/S;

    const/4 v0, 0x1

    iput-boolean v0, p1, LP/S;->a1:Z

    iget-object p1, p1, LP/S;->O0:LP/t;

    iget-object v0, p1, LP/t;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, LP/r;

    iget-wide v2, p0, LM0/I1;->e:J

    invoke-direct {v1, p1, v2, v3}, LP/r;-><init>(LP/t;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
