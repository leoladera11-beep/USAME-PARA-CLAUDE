.class public abstract LB/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/C;


# static fields
.field public static final a:Lcom/brisa/local/j;

.field public static final b:Lcom/brisa/local/j;

.field public static final c:Lcom/brisa/local/j;

.field public static final d:Lcom/brisa/local/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brisa/local/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    sput-object v0, LB/v;->a:Lcom/brisa/local/j;

    new-instance v0, Lcom/brisa/local/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    sput-object v0, LB/v;->b:Lcom/brisa/local/j;

    new-instance v0, Lcom/brisa/local/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    sput-object v0, LB/v;->c:Lcom/brisa/local/j;

    new-instance v0, Lcom/brisa/local/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    sput-object v0, LB/v;->d:Lcom/brisa/local/j;

    return-void
.end method

.method public static final c(LS0/e;)V
    .locals 4

    invoke-interface {p0}, LB/g;->g()LB/i;

    move-result-object v0

    iget-object v0, v0, LB/i;->c:LB/e;

    sget-object v1, LB/e;->f:LB/e;

    if-eq v0, v1, :cond_1

    sget-object v1, LB/e;->g:LB/e;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, LS0/e;->a()LM0/m1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LM0/m1;->g:Ljava/lang/Object;

    check-cast v0, Lg/f;

    invoke-virtual {v0}, Lg/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move-object v1, v0

    check-cast v1, Lg/b;

    invoke-virtual {v1}, Lg/b;->hasNext()Z

    move-result v2

    const-string v3, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lg/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "components"

    invoke-static {v1, v2}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS0/d;

    invoke-static {v2, v3}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    new-instance v0, LB/x;

    invoke-interface {p0}, LS0/e;->a()LM0/m1;

    move-result-object v1

    move-object v2, p0

    check-cast v2, LB/E;

    invoke-direct {v0, v1, v2}, LB/x;-><init>(LM0/m1;LB/E;)V

    invoke-interface {p0}, LS0/e;->a()LM0/m1;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, LM0/m1;->f(Ljava/lang/String;LS0/d;)V

    invoke-interface {p0}, LB/g;->g()LB/i;

    move-result-object p0

    new-instance v1, LS0/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LS0/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, LB/i;->a(LB/f;)V

    :cond_4
    return-void
.end method
