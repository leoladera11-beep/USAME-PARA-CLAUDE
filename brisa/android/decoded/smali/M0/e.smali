.class public final synthetic LM0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/f;


# instance fields
.field public final synthetic a:LB/A;

.field public final synthetic b:LM0/N0;


# direct methods
.method public synthetic constructor <init>(LB/A;LM0/N0;LG/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/e;->a:LB/A;

    iput-object p2, p0, LM0/e;->b:LM0/N0;

    return-void
.end method


# virtual methods
.method public final run()Lz1/B;
    .locals 2

    iget-object v0, p0, LM0/e;->a:LB/A;

    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-eqz v0, :cond_0

    iget-object v1, p0, LM0/e;->b:LM0/N0;

    invoke-virtual {v0, v1}, LM0/X0;->r(LM0/N0;)V

    :cond_0
    sget-object v0, Lz1/x;->f:Lz1/x;

    return-object v0
.end method
