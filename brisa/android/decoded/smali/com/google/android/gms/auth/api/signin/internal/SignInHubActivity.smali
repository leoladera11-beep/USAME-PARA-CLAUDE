.class public Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.super Lb/h;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field public static x:Z = false


# instance fields
.field public final n:La1/g;

.field public final o:LB/i;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

.field public u:Z

.field public v:I

.field public w:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/h;-><init>()V

    new-instance v0, Lz/o;

    invoke-direct {v0, p0}, Lz/o;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    new-instance v1, La1/g;

    invoke-direct {v1, v0}, La1/g;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    new-instance v0, LB/i;

    invoke-direct {v0, p0}, LB/i;-><init>(LB/g;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->r:Z

    iget-object v0, p0, Lb/h;->e:LM0/l;

    iget-object v0, v0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, LM0/m1;

    new-instance v1, Lb/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lb/b;-><init>(Ljava/lang/Object;I)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, LM0/m1;->f(Ljava/lang/String;LS0/d;)V

    new-instance v0, Lz/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz/n;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    invoke-virtual {p0, v0}, Lb/h;->d(Lr/a;)V

    new-instance v0, Lz/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz/n;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    iget-object v1, p0, Lb/h;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lb/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lb/c;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V

    iget-object v1, p0, Lb/h;->b:Lc/a;

    iget-object v2, v1, Lc/a;->b:Lb/h;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lb/c;->a()V

    :cond_0
    iget-object v1, v1, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->s:Z

    return-void
.end method

.method public static j(Lz/A;)Z
    .locals 4

    iget-object p0, p0, Lz/A;->c:LB0/b;

    invoke-virtual {p0}, LB0/b;->j()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/m;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lz/m;->s:Lz/o;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lz/m;->k()Lz/A;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->j(Lz/A;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Lz/m;->L:LB/i;

    iget-object v2, v2, LB/i;->c:LB/e;

    sget-object v3, LB/e;->h:LB/e;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v0, v1, Lz/m;->L:LB/i;

    invoke-virtual {v0}, LB/i;->g()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_5

    array-length v1, p4

    if-lez v1, :cond_5

    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "--autofill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "--contentcapture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "--list-dumpables"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "--dump-dumpable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_4
    const-string v2, "--translation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :goto_1
    :pswitch_0
    move v0, v3

    goto :goto_2

    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_5

    goto :goto_1

    :pswitch_2
    invoke-static {}, LS1/e;->k()Z

    move-result v0

    goto :goto_2

    :pswitch_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->q:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->r:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, LN0/O;

    invoke-interface {p0}, LB/E;->e()LB/D;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LN0/O;-><init>(LB/g;LB/D;)V

    invoke-virtual {v1, v0, p3}, LN0/O;->K(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    invoke-virtual {v0, p1, p2, p3, p4}, Lz/A;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/h;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    sget-object v0, LB/d;->ON_CREATE:LB/d;

    invoke-virtual {p1, v0}, LB/i;->d(LB/d;)V

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, Lz/o;

    iget-object p1, p1, Lz/o;->f:Lz/A;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lz/A;->E:Z

    iput-boolean v0, p1, Lz/A;->F:Z

    iget-object v1, p1, Lz/A;->L:Lz/C;

    iput-boolean v0, v1, Lz/C;->g:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lz/A;->t(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    invoke-virtual {v0}, Lz/A;->k()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    sget-object v1, LB/d;->ON_DESTROY:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    return-void
.end method

.method public final m()V
    .locals 7

    invoke-interface {p0}, LB/E;->e()LB/D;

    move-result-object v0

    new-instance v1, LZ0/i;

    sget-object v2, LE/d;->d:LE/c;

    invoke-direct {v1, v0, v2}, LZ0/i;-><init>(LB/D;LB/C;)V

    const-class v0, LE/d;

    invoke-virtual {v1, v0}, LZ0/i;->r(Ljava/lang/Class;)LB/B;

    move-result-object v0

    check-cast v0, LE/d;

    new-instance v1, LZ0/i;

    invoke-direct {v1, p0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    iget-boolean v2, v0, LE/d;->c:Z

    if-nez v2, :cond_8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_7

    iget-object v2, v0, LE/d;->b:Lh/k;

    iget-object v3, v2, Lh/k;->e:[I

    iget v4, v2, Lh/k;->g:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lh/g;->a([III)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v2, v2, Lh/k;->f:[Ljava/lang/Object;

    aget-object v2, v2, v3

    sget-object v3, Lh/k;->h:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    check-cast v2, LE/a;

    if-nez v2, :cond_5

    const-class v2, LZ0/d;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v0, LE/d;->c:Z

    new-instance v4, LZ0/d;

    sget-object v6, Lb1/k;->a:Ljava/util/Set;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v4, p0, v6}, LZ0/d;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Ljava/util/Set;)V

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, LE/a;

    invoke-direct {v2, v4}, LE/a;-><init>(LZ0/d;)V

    invoke-virtual {v0, v2}, LE/d;->c(LE/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v5, v0, LE/d;->c:Z

    new-instance v0, LE/b;

    iget-object v3, v2, LE/a;->l:LZ0/d;

    invoke-direct {v0, v3, v1}, LE/b;-><init>(LZ0/d;LZ0/i;)V

    invoke-virtual {v2, p0, v0}, LB/o;->d(LB/g;LB/p;)V

    iget-object v1, v2, LE/a;->n:LE/b;

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, LE/a;->g(LB/p;)V

    :cond_4
    iput-object p0, v2, LE/a;->m:LB/g;

    iput-object v0, v2, LE/a;->n:LE/b;

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    iput-boolean v5, v0, LE/d;->c:Z

    throw v1

    :cond_5
    new-instance v0, LE/b;

    iget-object v3, v2, LE/a;->l:LZ0/d;

    invoke-direct {v0, v3, v1}, LE/b;-><init>(LZ0/d;LZ0/i;)V

    invoke-virtual {v2, p0, v0}, LB/o;->d(LB/g;LB/p;)V

    iget-object v1, v2, LE/a;->n:LE/b;

    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, LE/a;->g(LB/p;)V

    :cond_6
    iput-object p0, v2, LE/a;->m:LB/g;

    iput-object v0, v2, LE/a;->n:LE/b;

    :goto_2
    sput-boolean v5, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->x:Z

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;La1/a;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "googleSignInStatus"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->x:Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const v0, 0xa002

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 p1, 0x8

    if-eqz p3, :cond_4

    const-string v0, "signInAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_2

    invoke-static {p0}, LZ0/i;->z(Landroid/content/Context;)LZ0/i;

    move-result-object v1

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->t:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, LZ0/i;->e:Ljava/lang/Object;

    check-cast v2, LZ0/b;

    invoke-virtual {v2, v0, p1}, LZ0/b;->c(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const-string p1, "signInAccount"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p1, "googleSignInAccount"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->u:Z

    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->v:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->w:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->m()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const-string p2, "errorCode"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "errorCode"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_3

    const/16 p1, 0x30d5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n(I)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->k(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30d4

    const-string v3, "AuthSignInClient"

    if-nez v1, :cond_0

    const-string p1, "Null action"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n(I)V

    return-void

    :cond_0
    const-string v4, "com.google.android.gms.auth.NO_IMPL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "Action not implemented"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n(I)V

    return-void

    :cond_1
    const-string v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    :goto_0
    const-string v4, "config"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_4

    const-string p1, "Activity started with no configuration."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    if-nez v0, :cond_5

    const-string p1, "Activity started with invalid configuration."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->t:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->x:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    const/16 p1, 0x30d6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n(I)V

    return-void

    :cond_6
    const/4 p1, 0x1

    sput-boolean p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->x:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->t:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0xa002

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->s:Z

    const-string p1, "Could not launch sign in Intent. Google Play Service is probably being updated..."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n(I)V

    return-void

    :cond_8
    const-string v0, "signingInGoogleApiClients"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->u:Z

    if-eqz v0, :cond_a

    const-string v0, "signInResultCode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->v:I

    const-string v0, "signInResultData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_9

    const-string p1, "Sign in result data cannot be null"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_9
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->w:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->m()V

    :cond_a
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    .line 2
    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    .line 3
    iget-object v0, v0, Lz/o;->f:Lz/A;

    .line 4
    iget-object v0, v0, Lz/A;->f:Lz/q;

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lz/q;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 6
    check-cast v0, Lz/p;

    if-nez v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    .line 9
    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    .line 10
    iget-object v0, v0, Lz/o;->f:Lz/A;

    .line 11
    iget-object v0, v0, Lz/A;->f:Lz/q;

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1, p2, p3}, Lz/q;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Lz/p;

    if-nez v0, :cond_0

    .line 14
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->l()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->x:Z

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lb/h;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object p1, p1, La1/g;->e:Ljava/lang/Object;

    check-cast p1, Lz/o;

    iget-object p1, p1, Lz/o;->f:Lz/A;

    invoke-virtual {p1}, Lz/A;->i()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lz/A;->t(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    sget-object v1, LB/d;->ON_PAUSE:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    return-void
.end method

.method public final onPostResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    sget-object v1, LB/d;->ON_RESUME:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz/A;->E:Z

    iput-boolean v1, v0, Lz/A;->F:Z

    iget-object v2, v0, Lz/A;->L:Lz/C;

    iput-boolean v1, v2, Lz/C;->g:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lz/A;->t(I)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    invoke-virtual {v0}, La1/g;->B()V

    invoke-super {p0, p1, p2, p3}, Lb/h;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    invoke-virtual {v0}, La1/g;->B()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->q:Z

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    iget-object v0, v0, Lz/o;->f:Lz/A;

    invoke-virtual {v0, v1}, Lz/A;->y(Z)Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "signingInGoogleApiClients"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->v:I

    const-string v1, "signInResultCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->w:Landroid/content/Intent;

    const-string v1, "signInResultData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    invoke-virtual {v0}, La1/g;->B()V

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lz/o;

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->r:Z

    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Z

    iget-object v2, v0, Lz/o;->f:Lz/A;

    iput-boolean v1, v2, Lz/A;->E:Z

    iput-boolean v1, v2, Lz/A;->F:Z

    iget-object v4, v2, Lz/A;->L:Lz/C;

    iput-boolean v1, v4, Lz/C;->g:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lz/A;->t(I)V

    :cond_0
    iget-object v2, v0, Lz/o;->f:Lz/A;

    invoke-virtual {v2, v3}, Lz/A;->y(Z)Z

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    sget-object v3, LB/d;->ON_START:LB/d;

    invoke-virtual {v2, v3}, LB/i;->d(LB/d;)V

    iget-object v0, v0, Lz/o;->f:Lz/A;

    iput-boolean v1, v0, Lz/A;->E:Z

    iput-boolean v1, v0, Lz/A;->F:Z

    iget-object v2, v0, Lz/A;->L:Lz/C;

    iput-boolean v1, v2, Lz/C;->g:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lz/A;->t(I)V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    invoke-virtual {v0}, La1/g;->B()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->r:Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:La1/g;

    iget-object v2, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v2, Lz/o;

    iget-object v2, v2, Lz/o;->f:Lz/A;

    invoke-static {v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->j(Lz/A;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, La1/g;->e:Ljava/lang/Object;

    check-cast v1, Lz/o;

    iget-object v1, v1, Lz/o;->f:Lz/A;

    iput-boolean v0, v1, Lz/A;->F:Z

    iget-object v2, v1, Lz/A;->L:Lz/C;

    iput-boolean v0, v2, Lz/C;->g:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lz/A;->t(I)V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    sget-object v1, LB/d;->ON_STOP:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    return-void
.end method
