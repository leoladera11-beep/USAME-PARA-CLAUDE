.class public LB/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lg/f;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:LB/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB/o;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LB/o;->a:Ljava/lang/Object;

    new-instance v0, Lg/f;

    invoke-direct {v0}, Lg/f;-><init>()V

    iput-object v0, p0, LB/o;->b:Lg/f;

    const/4 v0, 0x0

    iput v0, p0, LB/o;->c:I

    sget-object v0, LB/o;->k:Ljava/lang/Object;

    iput-object v0, p0, LB/o;->f:Ljava/lang/Object;

    new-instance v1, LB/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LB/k;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, LB/o;->j:LB/k;

    iput-object v0, p0, LB/o;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, LB/o;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lf/a;->C()Lf/a;

    move-result-object v0

    iget-object v0, v0, Lf/a;->d:Lf/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(LB/n;)V
    .locals 2

    iget-boolean v0, p1, LB/n;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LB/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LB/n;->b(Z)V

    return-void

    :cond_1
    iget v0, p1, LB/n;->c:I

    iget v1, p0, LB/o;->g:I

    if-lt v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iput v1, p1, LB/n;->c:I

    iget-object p1, p1, LB/n;->a:LB/p;

    iget-object v0, p0, LB/o;->e:Ljava/lang/Object;

    invoke-interface {p1, v0}, LB/p;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(LB/n;)V
    .locals 4

    iget-boolean v0, p0, LB/o;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LB/o;->i:Z

    return-void

    :cond_0
    iput-boolean v1, p0, LB/o;->h:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, LB/o;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, LB/o;->b(LB/n;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, LB/o;->b:Lg/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/d;

    invoke-direct {v2, v1}, Lg/d;-><init>(Lg/f;)V

    iget-object v1, v1, Lg/f;->g:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lg/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lg/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB/n;

    invoke-virtual {p0, v1}, LB/o;->b(LB/n;)V

    iget-boolean v1, p0, LB/o;->i:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, LB/o;->i:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, LB/o;->h:Z

    return-void
.end method

.method public final d(LB/g;LB/p;)V
    .locals 3

    const-string v0, "observe"

    invoke-static {v0}, LB/o;->a(Ljava/lang/String;)V

    invoke-interface {p1}, LB/g;->g()LB/i;

    move-result-object v0

    iget-object v0, v0, LB/i;->c:LB/e;

    sget-object v1, LB/e;->e:LB/e;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, LB/m;

    invoke-direct {v0, p0, p1, p2}, LB/m;-><init>(LB/o;LB/g;LB/p;)V

    iget-object v1, p0, LB/o;->b:Lg/f;

    invoke-virtual {v1, p2}, Lg/f;->a(Ljava/lang/Object;)Lg/c;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p2, v2, Lg/c;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Lg/c;

    invoke-direct {v2, p2, v0}, Lg/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, v1, Lg/f;->h:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lg/f;->h:I

    iget-object p2, v1, Lg/f;->f:Lg/c;

    if-nez p2, :cond_2

    iput-object v2, v1, Lg/f;->e:Lg/c;

    iput-object v2, v1, Lg/f;->f:Lg/c;

    goto :goto_0

    :cond_2
    iput-object v2, p2, Lg/c;->g:Lg/c;

    iput-object p2, v2, Lg/c;->h:Lg/c;

    iput-object v2, v1, Lg/f;->f:Lg/c;

    :goto_0
    const/4 p2, 0x0

    :goto_1
    check-cast p2, LB/n;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, LB/n;->d(LB/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-interface {p1}, LB/g;->g()LB/i;

    move-result-object p1

    invoke-virtual {p1, v0}, LB/i;->a(LB/f;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(LB/p;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-static {v0}, LB/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, LB/o;->b:Lg/f;

    invoke-virtual {v0, p1}, Lg/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/n;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LB/n;->c()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LB/n;->b(Z)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, LB/o;->a(Ljava/lang/String;)V

    iget v0, p0, LB/o;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LB/o;->g:I

    iput-object p1, p0, LB/o;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LB/o;->c(LB/n;)V

    return-void
.end method
