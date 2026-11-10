.class public final synthetic LM0/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:LM0/t1;

.field public final synthetic b:LN0/C;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(LM0/t1;LN0/C;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/d1;->a:LM0/t1;

    iput-object p2, p0, LM0/d1;->b:LN0/C;

    iput p3, p0, LM0/d1;->c:I

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 4

    iget-object v0, p0, LM0/d1;->b:LN0/C;

    iget-object v1, v0, LN0/C;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "MediaSessionLegacyStub"

    const-string v0, "onAddQueueItem(): Media ID shouldn\'t be empty"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, LM0/u;->g(LN0/C;)LG/P;

    move-result-object v0

    iget-object v1, p0, LM0/d1;->a:LM0/t1;

    iget-object v2, v1, LM0/t1;->i:LM0/X0;

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, LM0/X0;->n(LM0/N0;Lu1/C0;)Lz1/B;

    move-result-object v0

    new-instance v2, LC1/e;

    iget v3, p0, LM0/d1;->c:I

    invoke-direct {v2, v1, p1, v3}, LC1/e;-><init>(LM0/t1;LM0/N0;I)V

    new-instance p1, LM0/A;

    const/4 v3, 0x3

    invoke-direct {p1, v1, v3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lz1/v;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
