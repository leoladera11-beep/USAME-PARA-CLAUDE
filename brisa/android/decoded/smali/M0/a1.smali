.class public final synthetic LM0/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:LM0/t1;

.field public final synthetic b:LG/P;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(LM0/t1;LG/P;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/a1;->a:LM0/t1;

    iput-object p2, p0, LM0/a1;->b:LG/P;

    iput-boolean p3, p0, LM0/a1;->c:Z

    iput-boolean p4, p0, LM0/a1;->d:Z

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 7

    iget-object v0, p0, LM0/a1;->a:LM0/t1;

    iget-object v1, v0, LM0/t1;->i:LM0/X0;

    iget-object v2, p0, LM0/a1;->b:LG/P;

    invoke-static {v2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v3

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, LM0/X0;->s(LM0/N0;Lu1/C0;IJ)Lz1/H;

    move-result-object p1

    new-instance v1, LM0/m1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, LM0/m1;->h:Ljava/lang/Object;

    iput-object v2, v1, LM0/m1;->g:Ljava/lang/Object;

    iget-boolean v2, p0, LM0/a1;->c:Z

    iput-boolean v2, v1, LM0/m1;->e:Z

    iget-boolean v2, p0, LM0/a1;->d:Z

    iput-boolean v2, v1, LM0/m1;->f:Z

    new-instance v2, LM0/A;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lz1/v;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v2}, Lz1/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
