.class public final synthetic LM0/O1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/T1;
.implements LJ/k;


# instance fields
.field public final synthetic e:LM0/c;


# direct methods
.method public synthetic constructor <init>(LM0/c;)V
    .locals 0

    iput-object p1, p0, LM0/O1;->e:LM0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LM0/O1;->e:LM0/c;

    check-cast p1, LM0/d2;

    invoke-virtual {v0, p1}, LM0/c;->h(LG/g0;)V

    return-void
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 0

    iget-object p3, p0, LM0/O1;->e:LM0/c;

    iget-object p3, p3, LM0/c;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, LG/h0;

    iget-object p3, p1, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1, p2}, LM0/X0;->u(LM0/N0;)LM0/N0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LM0/m2;

    const/4 p2, -0x6

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method
