.class public final synthetic LZ/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LP/t;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(LP/t;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/G;->e:LP/t;

    iput-object p2, p0, LZ/G;->f:Ljava/lang/Object;

    iput-wide p3, p0, LZ/G;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, LZ/G;->e:LP/t;

    iget-object v0, v0, LP/t;->b:LN/s;

    sget-object v1, LJ/W;->a:Ljava/lang/String;

    iget-object v0, v0, LN/s;->a:LN/x;

    iget-object v1, v0, LN/x;->s:LO/d;

    invoke-virtual {v1}, LO/d;->Z()LO/a;

    move-result-object v2

    new-instance v3, LI0/E;

    iget-object v4, p0, LZ/G;->f:Ljava/lang/Object;

    iget-wide v5, p0, LZ/G;->g:J

    invoke-direct {v3, v2, v4, v5, v6}, LI0/E;-><init>(LO/a;Ljava/lang/Object;J)V

    const/16 v5, 0x1a

    invoke-virtual {v1, v2, v5, v3}, LO/d;->a0(LO/a;ILJ/q;)V

    iget-object v1, v0, LN/x;->T:Ljava/lang/Object;

    if-ne v1, v4, :cond_0

    iget-object v0, v0, LN/x;->m:LJ/t;

    new-instance v1, LM0/E1;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, LM0/E1;-><init>(I)V

    invoke-virtual {v0, v5, v1}, LJ/t;->f(ILJ/q;)V

    :cond_0
    return-void
.end method
