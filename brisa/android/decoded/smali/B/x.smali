.class public final LB/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/d;


# instance fields
.field public final a:LM0/m1;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:LE1/d;


# direct methods
.method public constructor <init>(LM0/m1;LB/E;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/x;->a:LM0/m1;

    new-instance p1, LB/w;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, LB/w;-><init>(Ljava/lang/Object;I)V

    new-instance p2, LE1/d;

    invoke-direct {p2, p1}, LE1/d;-><init>(LN1/a;)V

    iput-object p2, p0, LB/x;->d:LE1/d;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, LB/x;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, LB/x;->d:LE1/d;

    invoke-virtual {v1}, LE1/d;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB/y;

    iget-object v1, v1, LB/y;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, LB/x;->b:Z

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method
