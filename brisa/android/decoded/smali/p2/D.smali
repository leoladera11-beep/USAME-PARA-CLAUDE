.class public final Lp2/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final e:Lp2/c;

.field public final f:Lp2/B;

.field public final g:Lp2/C;

.field public h:Lp2/G;

.field public final i:I


# direct methods
.method public constructor <init>(Lp2/D;)V
    .locals 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    iget-object v0, p1, Lp2/D;->e:Lp2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v0, Lp2/c;

    .line 13
    invoke-direct {v0}, Lp2/c;-><init>()V

    .line 14
    iput-object v0, p0, Lp2/D;->e:Lp2/c;

    .line 15
    new-instance v0, Lp2/B;

    iget-object v1, p1, Lp2/D;->f:Lp2/B;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    iput-object v0, p0, Lp2/D;->f:Lp2/B;

    .line 19
    new-instance v0, Lp2/C;

    iget-object v1, p1, Lp2/D;->g:Lp2/C;

    .line 20
    iget-boolean v2, v1, Lp2/C;->a:Z

    iget-boolean v1, v1, Lp2/C;->b:Z

    invoke-direct {v0, v2, v1}, Lp2/C;-><init>(ZZ)V

    .line 21
    iput-object v0, p0, Lp2/D;->g:Lp2/C;

    .line 22
    iget v0, p1, Lp2/D;->i:I

    iput v0, p0, Lp2/D;->i:I

    .line 23
    new-instance v0, Lp2/G;

    invoke-virtual {p1}, Lp2/D;->a()Lp2/G;

    move-result-object p1

    .line 24
    iget-object v1, p1, Lp2/G;->b:Lp2/G;

    iget-object v2, p1, Lp2/G;->a:Ljava/util/HashMap;

    .line 25
    iget-object p1, p1, Lp2/G;->c:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v3

    .line 27
    :goto_0
    invoke-direct {v0, v1, p1}, Lp2/G;-><init>(Lp2/G;Ljava/util/ArrayList;)V

    .line 28
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    .line 29
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/E;

    invoke-virtual {v4}, Lp2/E;->a()Lp2/E;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 33
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lp2/G;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_3
    :goto_3
    iput-object v0, p0, Lp2/D;->h:Lp2/G;

    return-void
.end method

.method public constructor <init>(Lp2/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 3
    iput-object p1, p0, Lp2/D;->e:Lp2/c;

    .line 4
    sget-object p1, Lp2/C;->c:Lp2/C;

    iput-object p1, p0, Lp2/D;->g:Lp2/C;

    .line 5
    new-instance p1, Lp2/B;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iput-object p1, p0, Lp2/D;->f:Lp2/B;

    const/16 p1, 0x200

    .line 8
    iput p1, p0, Lp2/D;->i:I

    return-void
.end method


# virtual methods
.method public final a()Lp2/G;
    .locals 3

    iget-object v0, p0, Lp2/D;->h:Lp2/G;

    if-nez v0, :cond_0

    iget-object v0, p0, Lp2/D;->e:Lp2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp2/G;

    sget-object v1, Lp2/G;->d:Lp2/G;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp2/G;-><init>(Lp2/G;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lp2/D;->h:Lp2/G;

    :cond_0
    iget-object v0, p0, Lp2/D;->h:Lp2/G;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lp2/D;

    invoke-direct {v0, p0}, Lp2/D;-><init>(Lp2/D;)V

    return-object v0
.end method
