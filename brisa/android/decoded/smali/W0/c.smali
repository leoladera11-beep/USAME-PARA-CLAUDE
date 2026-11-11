.class public LW0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a;
.implements Lc1/h;
.implements Lt1/j;


# instance fields
.field public final synthetic e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, LW0/c;->e:I

    packed-switch p1, :pswitch_data_0

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1f4

    .line 23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    return-void

    .line 24
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    return-void

    .line 27
    :pswitch_2
    sget-object p1, La1/d;->c:La1/d;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void

    .line 30
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 31
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    new-instance p1, Ljava/util/WeakHashMap;

    .line 32
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, LW0/c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LP/B;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LW0/c;->e:I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LW0/c;->e:I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, LW0/c;->e:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, LW0/c;->e:I

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    iput-object p2, p0, LW0/c;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 3
    iput p3, p0, LW0/c;->e:I

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    iput-object p2, p0, LW0/c;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LW0/c;->e:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/brisa/local/a;Lb1/c;)V
    .locals 0

    const/4 p3, 0x7

    iput p3, p0, LW0/c;->e:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    iput-object p2, p0, LW0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LW0/c;->e:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    .line 18
    new-instance p1, LD2/c;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, LD2/c;-><init>(I)V

    invoke-static {p1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p1

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp2/a;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LW0/c;->e:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lp2/a;->F()I

    .line 10
    invoke-virtual {p1}, Lp2/a;->G()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, LW0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp2/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LW0/c;->e:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lp2/a;->F()I

    .line 14
    invoke-virtual {p1}, Lp2/a;->G()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    .line 15
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LW0/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz/A;)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, LW0/c;->e:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/w;

    iget v1, v1, LK/w;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/w;

    :try_start_0
    new-instance v2, LK/x;

    invoke-direct {v2, v1}, LK/x;-><init>(LK/w;)V
    :try_end_0
    .catch LK/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, LW0/c;->g:Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LW0/c;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public C(ZLcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez p1, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->E(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/d;

    new-instance v2, Lb1/d;

    invoke-direct {v2, p2}, Lb1/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Ls1/d;->c(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(La2/d;)V
    .locals 1

    iget-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast p1, LW0/c;

    iget-object p1, p1, LW0/c;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ls1/d;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Lm1/b;

    check-cast p2, Ls1/d;

    check-cast p1, Lm1/i;

    new-instance v1, LZ0/l;

    invoke-direct {v1, v0, p2}, LZ0/l;-><init>(Lm1/b;Ls1/d;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->q()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lm1/j;

    iget-object p2, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    new-instance v0, Lb1/f;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v2, v3, v4}, Lb1/f;-><init>(IIIZ)V

    new-instance v2, Lb1/e;

    invoke-direct {v2, v0}, Lb1/e;-><init>(Lb1/f;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v3, p1, Lm1/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, Lm1/f;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, Lm1/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, v2}, Lm1/f;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0, v4}, Lm1/a;->w(Landroid/os/Parcel;I)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, La1/g;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Lt1/j;

    invoke-interface {v0, p1}, Lt1/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    invoke-static {p2, v0, p1}, LB1/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(C)V
    .locals 2

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    iget-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    iget-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    iput-object p1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->f(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v1, v0, Lz/A;->t:Lz/o;

    iget-object v1, v1, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->g(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->h(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->i(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->j(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->k(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v1, v0, Lz/A;->t:Lz/o;

    iget-object v1, v1, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->l(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public m(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->m(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public n(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->n(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public o(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->o(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public p(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->p(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public q(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->q(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public r(Z)V
    .locals 2

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Lz/A;

    iget-object v0, v0, Lz/A;->v:Lz/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz/m;->m()Lz/A;

    move-result-object v0

    iget-object v0, v0, Lz/A;->l:LW0/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW0/c;->r(Z)V

    :cond_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public varargs s([Ljava/lang/Object;)Lb0/n;
    .locals 4

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v1, LP/B;

    invoke-virtual {v1}, LP/B;->c()Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating extension"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    iget-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/n;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error creating extractor"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public t(ILjava/time/temporal/ChronoUnit;)Lw2/b;
    .locals 3

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/time/LocalDateTime;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p2, v1, :cond_0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusYears(J)Ljava/time/LocalDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Ljava/time/temporal/ChronoUnit;->isDateBased()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p1

    :cond_1
    new-instance v0, Lw2/b;

    invoke-direct {v0, p1, p2}, Lw2/b;-><init>(Ljava/time/LocalDateTime;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, LW0/c;->e:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, LW0/c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/t;

    iget-boolean v2, v1, Lz/t;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lz/t;->c:Lz/A;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz/A;->y(Z)Z

    iget-object v1, v0, Lz/A;->h:Lz/t;

    iget-boolean v1, v1, Lz/t;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lz/A;->N()Z

    return-void

    :cond_1
    iget-object v0, v0, Lz/A;->g:LW0/c;

    invoke-virtual {v0}, LW0/c;->v()V

    return-void

    :cond_2
    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public w(Ljava/lang/String;)Lw2/b;
    .locals 6

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, LH2/b;

    iget-object v1, v0, LH2/b;->i:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v5}, LW0/c;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4, v3}, LW0/c;->t(ILjava/time/temporal/ChronoUnit;)Lw2/b;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    const-string v1, "\\D+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Ljava/time/temporal/ChronoUnit;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    iget-object v4, v0, LH2/b;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    iget-object v4, v0, LH2/b;->c:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    iget-object v4, v0, LH2/b;->d:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    iget-object v4, v0, LH2/b;->e:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    iget-object v4, v0, LH2/b;->f:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    iget-object v4, v0, LH2/b;->g:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    iget-object v0, v0, LH2/b;->h:Ljava/util/List;

    invoke-virtual {v2, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lw2/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lw2/d;-><init>(LW0/c;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LJ2/c;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, LJ2/c;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LD2/i;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3}, LD2/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0, v1, p1}, LW0/c;->t(ILjava/time/temporal/ChronoUnit;)Lw2/b;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Ln2/e;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sget-object v2, Ln2/e;->e:LW0/c;

    invoke-virtual {v2, v0}, LW0/c;->x(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, LW0/c;->f:Ljava/lang/Object;

    :cond_1
    iput-object v1, p0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, LW0/c;->f:Ljava/lang/Object;

    check-cast v0, LH2/b;

    iget-object v0, v0, LH2/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]"

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(^|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "($|"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0, v2}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
