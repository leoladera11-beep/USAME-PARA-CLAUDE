.class public final LZ/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/I;


# instance fields
.field public final synthetic b:LZ/m;


# direct methods
.method public constructor <init>(LZ/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/i;->b:LZ/m;

    return-void
.end method


# virtual methods
.method public final a(LG/C0;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, LZ/i;->b:LZ/m;

    iget-object v1, v0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v2, v0, LZ/m;->P0:LP/t;

    iget-object v3, v2, LP/t;->a:Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, LZ/G;

    invoke-direct {v6, v2, v1, v4, v5}, LZ/G;-><init>(LP/t;Ljava/lang/Object;J)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, LZ/m;->l1:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, LZ/i;->b:LZ/m;

    iget-object v1, v0, LZ/m;->i1:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LZ/m;->U0(II)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, LZ/i;->b:LZ/m;

    iget-object v0, v0, LS/r;->M:LN/A;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LN/A;->a()V

    :cond_0
    return-void
.end method
