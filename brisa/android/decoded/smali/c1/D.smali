.class public final Lc1/D;
.super Lz/m;
.source "SourceFile"

# interfaces
.implements Lc1/e;


# static fields
.field public static final S:Ljava/util/WeakHashMap;


# instance fields
.field public final R:LC1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lc1/D;->S:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lz/m;-><init>()V

    new-instance v0, LC1/e;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC1/e;-><init>(IB)V

    iput-object v0, p0, Lc1/D;->R:LC1/e;

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lc1/D;->R:LC1/e;

    invoke-virtual {v0, p1}, LC1/e;->t(Landroid/os/Bundle;)V

    return-void
.end method

.method public final B()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    iget-object v1, p0, Lc1/D;->R:LC1/e;

    const/4 v2, 0x2

    iput v2, v1, LC1/e;->f:I

    iget-object v1, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc1/k;

    iput-boolean v0, v2, Lc1/k;->b:Z

    invoke-virtual {v2}, Lc1/k;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    const/4 v0, 0x4

    iget-object v1, p0, Lc1/D;->R:LC1/e;

    iput v0, v1, LC1/e;->f:I

    iget-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/k;

    invoke-virtual {v1}, Lc1/k;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lc1/k;)V
    .locals 1

    iget-object v0, p0, Lc1/D;->R:LC1/e;

    invoke-virtual {v0, p1}, LC1/e;->p(Lc1/k;)V

    return-void
.end method

.method public final d()Lc1/k;
    .locals 2

    iget-object v0, p0, Lc1/D;->R:LC1/e;

    iget-object v0, v0, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lc1/k;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc1/k;

    return-object v0
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lz/m;->s:Lz/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lz/o;->c:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lz/m;->i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p1, p0, Lc1/D;->R:LC1/e;

    iget-object p1, p1, LC1/e;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc1/k;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lz/m;->s(IILandroid/content/Intent;)V

    iget-object v0, p0, Lc1/D;->R:LC1/e;

    invoke-virtual {v0, p1, p2, p3}, LC1/e;->q(IILandroid/content/Intent;)V

    return-void
.end method

.method public final u(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lz/m;->t:Lz/A;

    invoke-virtual {v3, v2}, Lz/A;->R(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lz/m;->t:Lz/A;

    iput-boolean v1, v2, Lz/A;->E:Z

    iput-boolean v1, v2, Lz/A;->F:Z

    iget-object v3, v2, Lz/A;->L:Lz/C;

    iput-boolean v1, v3, Lz/C;->g:Z

    invoke-virtual {v2, v0}, Lz/A;->t(I)V

    :cond_0
    iget-object v2, p0, Lz/m;->t:Lz/A;

    iget v3, v2, Lz/A;->s:I

    if-lt v3, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, v2, Lz/A;->E:Z

    iput-boolean v1, v2, Lz/A;->F:Z

    iget-object v3, v2, Lz/A;->L:Lz/C;

    iput-boolean v1, v3, Lz/C;->g:Z

    invoke-virtual {v2, v0}, Lz/A;->t(I)V

    :goto_0
    iget-object v0, p0, Lc1/D;->R:LC1/e;

    invoke-virtual {v0, p1}, LC1/e;->s(Landroid/os/Bundle;)V

    return-void
.end method

.method public final v()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    const/4 v0, 0x5

    iget-object v1, p0, Lc1/D;->R:LC1/e;

    iput v0, v1, LC1/e;->f:I

    iget-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    const/4 v0, 0x3

    iget-object v1, p0, Lc1/D;->R:LC1/e;

    iput v0, v1, LC1/e;->f:I

    iget-object v0, v1, LC1/e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc1/k;

    invoke-virtual {v1}, Lc1/k;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
