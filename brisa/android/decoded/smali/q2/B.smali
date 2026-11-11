.class public abstract Lq2/B;
.super Lq2/o;
.source "SourceFile"


# instance fields
.field public final a:Lq2/o;

.field public b:Z

.field public final c:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lq2/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LD2/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LD2/c;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lq2/B;->c:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {p1}, Lq2/o;->f()Z

    move-result p1

    iput-boolean p1, p0, Lq2/B;->b:Z

    return-void
.end method


# virtual methods
.method public b(Lo2/j;Lo2/j;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq2/B;->g(Lo2/j;Lo2/p;)Z

    move-result p1

    return p1
.end method

.method public final c(Lo2/j;Lo2/o;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq2/B;->g(Lo2/j;Lo2/p;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lq2/B;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->e()V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lq2/B;->b:Z

    return v0
.end method

.method public abstract g(Lo2/j;Lo2/p;)Z
.end method

.method public final h(Lo2/j;Lo2/p;)Z
    .locals 3

    iget-object v0, p0, Lq2/B;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, LJ2/c;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LJ2/c;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lq2/v;

    invoke-direct {v1, p0, p1}, Lq2/v;-><init>(Lq2/B;Lo2/j;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
