.class public final LW1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final D:Ljava/util/List;

.field public static final E:Ljava/util/List;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:LZ0/i;

.field public final e:LB0/b;

.field public final f:La1/g;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:LP/B;

.field public final j:Z

.field public final k:LW1/b;

.field public final l:Z

.field public final m:Z

.field public final n:LW1/b;

.field public final o:LW1/i;

.field public final p:Ljava/net/ProxySelector;

.field public final q:LW1/b;

.field public final r:Ljavax/net/SocketFactory;

.field public final s:Ljavax/net/ssl/SSLSocketFactory;

.field public final t:Ljavax/net/ssl/X509TrustManager;

.field public final u:Ljava/util/List;

.field public final v:Ljava/util/List;

.field public final w:Li2/c;

.field public final x:LW1/d;

.field public final y:Lj1/a;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LW1/r;->i:LW1/r;

    sget-object v1, LW1/r;->g:LW1/r;

    filled-new-array {v0, v1}, [LW1/r;

    move-result-object v0

    invoke-static {v0}, LX1/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LW1/q;->D:Ljava/util/List;

    sget-object v0, LW1/g;->e:LW1/g;

    sget-object v1, LW1/g;->f:LW1/g;

    filled-new-array {v0, v1}, [LW1/g;

    move-result-object v0

    invoke-static {v0}, LX1/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LW1/q;->E:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(LW1/p;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LW1/p;->a:LB0/b;

    iput-object v0, p0, LW1/q;->e:LB0/b;

    iget-object v0, p1, LW1/p;->b:La1/g;

    iput-object v0, p0, LW1/q;->f:La1/g;

    iget-object v0, p1, LW1/p;->c:Ljava/util/ArrayList;

    invoke-static {v0}, LX1/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LW1/q;->g:Ljava/util/List;

    iget-object v0, p1, LW1/p;->d:Ljava/util/ArrayList;

    invoke-static {v0}, LX1/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LW1/q;->h:Ljava/util/List;

    iget-object v0, p1, LW1/p;->e:LP/B;

    iput-object v0, p0, LW1/q;->i:LP/B;

    iget-boolean v0, p1, LW1/p;->f:Z

    iput-boolean v0, p0, LW1/q;->j:Z

    iget-object v0, p1, LW1/p;->g:LW1/b;

    iput-object v0, p0, LW1/q;->k:LW1/b;

    iget-boolean v0, p1, LW1/p;->h:Z

    iput-boolean v0, p0, LW1/q;->l:Z

    iget-boolean v0, p1, LW1/p;->i:Z

    iput-boolean v0, p0, LW1/q;->m:Z

    iget-object v0, p1, LW1/p;->j:LW1/b;

    iput-object v0, p0, LW1/q;->n:LW1/b;

    iget-object v0, p1, LW1/p;->k:LW1/i;

    iput-object v0, p0, LW1/q;->o:LW1/i;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lg2/a;->a:Lg2/a;

    :cond_0
    iput-object v0, p0, LW1/q;->p:Ljava/net/ProxySelector;

    iget-object v0, p1, LW1/p;->l:LW1/b;

    iput-object v0, p0, LW1/q;->q:LW1/b;

    iget-object v0, p1, LW1/p;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, LW1/q;->r:Ljavax/net/SocketFactory;

    iget-object v0, p1, LW1/p;->n:Ljava/util/List;

    iput-object v0, p0, LW1/q;->u:Ljava/util/List;

    iget-object v1, p1, LW1/p;->o:Ljava/util/List;

    iput-object v1, p0, LW1/q;->v:Ljava/util/List;

    iget-object v1, p1, LW1/p;->p:Li2/c;

    iput-object v1, p0, LW1/q;->w:Li2/c;

    iget v1, p1, LW1/p;->r:I

    iput v1, p0, LW1/q;->z:I

    iget v1, p1, LW1/p;->s:I

    iput v1, p0, LW1/q;->A:I

    iget v1, p1, LW1/p;->t:I

    iput v1, p0, LW1/q;->B:I

    new-instance v1, LZ0/i;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LZ0/i;-><init>(I)V

    iput-object v1, p0, LW1/q;->C:LZ0/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW1/g;

    iget-boolean v2, v2, LW1/g;->a:Z

    if-eqz v2, :cond_2

    sget-object v0, Le2/m;->a:Le2/m;

    sget-object v0, Le2/m;->a:Le2/m;

    invoke-virtual {v0}, Le2/m;->m()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, LW1/q;->t:Ljavax/net/ssl/X509TrustManager;

    sget-object v2, Le2/m;->a:Le2/m;

    invoke-virtual {v2, v0}, Le2/m;->l(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, LW1/q;->s:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v2, Le2/m;->a:Le2/m;

    invoke-virtual {v2, v0}, Le2/m;->b(Ljavax/net/ssl/X509TrustManager;)Lj1/a;

    move-result-object v0

    iput-object v0, p0, LW1/q;->y:Lj1/a;

    iget-object p1, p1, LW1/p;->q:LW1/d;

    iget-object v2, p1, LW1/d;->b:Lj1/a;

    invoke-static {v2, v0}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, LW1/d;

    iget-object p1, p1, LW1/d;->a:Ljava/util/Set;

    invoke-direct {v2, p1, v0}, LW1/d;-><init>(Ljava/util/Set;Lj1/a;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, LW1/q;->x:LW1/d;

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v1, p0, LW1/q;->s:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, LW1/q;->y:Lj1/a;

    iput-object v1, p0, LW1/q;->t:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, LW1/d;->c:LW1/d;

    iput-object p1, p0, LW1/q;->x:LW1/d;

    :goto_2
    iget-object p1, p0, LW1/q;->t:Ljavax/net/ssl/X509TrustManager;

    iget-object v0, p0, LW1/q;->y:Lj1/a;

    iget-object v2, p0, LW1/q;->s:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, LW1/q;->h:Ljava/util/List;

    iget-object v4, p0, LW1/q;->g:Ljava/util/List;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {v4, v5}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v3, v5}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, LW1/q;->u:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LW1/g;

    iget-boolean v3, v3, LW1/g;->a:Z

    if-eqz v3, :cond_6

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    const-string v1, "Check failed."

    if-nez v2, :cond_e

    if-nez v0, :cond_d

    if-nez p1, :cond_c

    iget-object p1, p0, LW1/q;->x:LW1/d;

    sget-object v0, LW1/d;->c:LW1/d;

    invoke-static {p1, v0}, LO1/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Null network interceptor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Null interceptor: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
