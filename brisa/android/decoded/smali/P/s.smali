.class public final synthetic LP/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LP/t;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(LP/t;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP/s;->e:LP/t;

    iput-boolean p2, p0, LP/s;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LP/s;->e:LP/t;

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-boolean v1, v0, LN/x;->e0:Z

    iget-boolean v2, p0, LP/s;->f:Z

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v2, v0, LN/x;->e0:Z

    iget-object v0, v0, LN/x;->m:LJ/t;

    new-instance v1, LM0/Z;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, LM0/Z;-><init>(IZ)V

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, LJ/t;->f(ILJ/q;)V

    return-void
.end method
