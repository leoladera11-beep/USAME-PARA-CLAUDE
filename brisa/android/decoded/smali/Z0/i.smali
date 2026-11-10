.class public final LZ0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/O;
.implements LP0/d;
.implements LR0/b0;
.implements LS/l;
.implements LV/d;
.implements Lt1/s;
.implements Lt1/j;
.implements LB/p;


# static fields
.field public static f:LZ0/i;


# instance fields
.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Ld1/m;

    const/16 v0, 0xb

    .line 12
    invoke-direct {p1, v0}, Ld1/m;-><init>(I)V

    .line 13
    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void

    .line 14
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, LJ/D;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LJ/D;-><init>(I)V

    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void

    .line 16
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void

    .line 18
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(LB/D;LB/C;)V
    .locals 2

    const-string v0, "store"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, LC/a;->b:LC/a;

    .line 6
    const-string v1, "defaultCreationExtras"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, LB/A;

    invoke-direct {v1, p1, p2, v0}, LB/A;-><init>(LB/D;LB/C;LC/b;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized z(Landroid/content/Context;)LZ0/i;
    .locals 5

    const-class v0, LZ0/i;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, LZ0/i;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, LZ0/i;->f:LZ0/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_0
    :try_start_3
    new-instance v2, LZ0/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, LZ0/b;->a(Landroid/content/Context;)LZ0/b;

    move-result-object p0

    iput-object p0, v2, LZ0/i;->e:Ljava/lang/Object;

    invoke-virtual {p0}, LZ0/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string v3, "defaultGoogleSignInAccount"

    invoke-virtual {p0, v3}, LZ0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "googleSignInOptions"

    invoke-static {v4, v3}, LZ0/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LZ0/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_2

    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :cond_2
    :goto_1
    :try_start_5
    sput-object v2, LZ0/i;->f:LZ0/i;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LZ0/b;

    iget-object v1, v0, LZ0/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v0, LZ0/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(LC1/e;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lt1/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lt1/r;-><init>(Lt1/s;LC1/e;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Lu1/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lu1/m0;

    invoke-direct {v1, p1, v0}, Lu1/m0;-><init>(Ljava/util/Map$Entry;Lu1/o0;)V

    return-object v1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(ILM/b;JI)V
    .locals 8

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    iget-object v4, p2, LM/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v3, 0x0

    move v2, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LB/g;

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Lz/j;

    if-eqz p1, :cond_1

    iget-boolean p1, v0, Lz/j;->W:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LR0/F;

    iget v1, v0, LR0/F;->m:I

    invoke-virtual {v0}, LR0/F;->A()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g(IIJI)V
    .locals 8

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, LS1/d;->L(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public j(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    .locals 4

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LK/a;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LK/a;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LK/a;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, LK/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LK/a;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LK/a;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k()LW1/k;
    .locals 3

    new-instance v0, LW1/k;

    iget-object v1, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, LW1/k;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public l(LG/x;)Ljava/lang/String;
    .locals 7

    iget-object v0, p1, LG/x;->d:Ljava/lang/String;

    iget-object v1, p1, LG/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_1

    const-string v2, "und"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    invoke-virtual {p0, p1}, LZ0/i;->n(LG/x;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LZ0/i;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v1, v3

    :cond_3
    move-object p1, v1

    :cond_4
    return-object p1
.end method

.method public m(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0, p1}, LR0/F;->t(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public n(LG/x;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    iget v1, p1, LG/x;->f:I

    iget p1, p1, LG/x;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const v1, 0x7f0d004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1

    const v2, 0x7f0d004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LZ0/i;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2

    const v2, 0x7f0d004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LZ0/i;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    const p1, 0x7f0d004d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LZ0/i;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LR0/F;

    invoke-virtual {v0}, LR0/F;->z()I

    move-result v0

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/G;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    iget-object p1, p1, LR0/G;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    return v1
.end method

.method public q(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    new-instance v0, LC1/e;

    new-instance v1, LC1/h;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, LC1/h;-><init>(Ljava/io/StringReader;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, LC1/e;-><init>(IB)V

    iput-object v1, v0, LC1/e;->h:Ljava/lang/Object;

    iget-object p1, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, v2, v2}, LC1/e;->a(ZZ)I

    invoke-virtual {v0}, LC1/e;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v2}, LC1/e;->a(ZZ)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSON did not contain the correct type, expected "

    const-string v2, "."

    invoke-static {v0, p1, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1, v4}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget p1, v0, LC1/e;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected end of input, got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1, v4}, LC1/h;->e(Ljava/lang/Exception;Ljava/lang/String;Z)LC1/f;

    move-result-object p1

    throw p1
.end method

.method public r(Ljava/lang/Class;)LB/B;
    .locals 4

    sget-object v0, LO1/g;->a:LO1/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LO1/b;

    invoke-direct {v0, p1}, LO1/b;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v1, LB/A;

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LO1/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "Array"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_4

    const-string v3, "kotlin.Array"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LO1/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    const-string p1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, LB/A;->G(LO1/b;Ljava/lang/String;)LB/B;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(LC1/e;)Ljava/util/List;
    .locals 11

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, LJ/D;

    iget-object p1, p1, LC1/e;->h:Ljava/lang/Object;

    check-cast p1, [B

    invoke-direct {v1, p1}, LJ/D;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, LJ/D;->a()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {v1}, LJ/D;->A()I

    move-result p1

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v2

    iget v3, v1, LJ/D;->b:I

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne p1, v2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_5

    const/4 v5, 0x3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5, v6}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, LJ/D;->A()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_2

    :cond_0
    move v7, v2

    :goto_2
    if-eqz v7, :cond_1

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    :cond_1
    const-string v9, "application/cea-608"

    move v6, v8

    :goto_3
    invoke-virtual {v1}, LJ/D;->A()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v1, v8}, LJ/D;->O(I)V

    if-eqz v7, :cond_4

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_4

    :cond_2
    move v7, v2

    :goto_4
    sget-object v10, LJ/h;->a:[B

    if-eqz v7, :cond_3

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_5

    :cond_3
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    :goto_5
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_6

    :cond_4
    const/4 v7, 0x0

    :goto_6
    new-instance v8, LG/w;

    invoke-direct {v8}, LG/w;-><init>()V

    invoke-static {v9}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, LG/w;->o:Ljava/lang/String;

    iput-object v5, v8, LG/w;->d:Ljava/lang/String;

    iput v6, v8, LG/w;->O:I

    iput-object v7, v8, LG/w;->r:Ljava/util/List;

    new-instance v5, LG/x;

    invoke-direct {v5, v8}, LG/x;-><init>(LG/w;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v0, p1

    :cond_6
    invoke-virtual {v1, v3}, LJ/D;->N(I)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 2

    const-string v0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    const-string v1, "ProfileInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u(LG/x;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/Resources;

    iget-object v3, v1, LG/x;->p:Ljava/lang/String;

    iget v4, v1, LG/x;->k:I

    iget v5, v1, LG/x;->J:I

    iget v6, v1, LG/x;->x:I

    iget v7, v1, LG/x;->w:I

    iget-object v8, v1, LG/x;->l:Ljava/lang/String;

    invoke-static {v3}, LG/W;->g(Ljava/lang/String;)I

    move-result v3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-eq v3, v11, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v3, "(\\s*,\\s*)"

    const/4 v12, 0x0

    if-nez v8, :cond_2

    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-array v14, v12, [Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    :goto_0
    array-length v15, v14

    move v13, v12

    :goto_1
    if-ge v13, v15, :cond_1

    aget-object v16, v14, v13

    invoke-static/range {v16 .. v16}, LG/W;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-static/range {v16 .. v16}, LG/W;->k(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :goto_2
    if-eqz v16, :cond_6

    :cond_5
    :goto_3
    move v3, v9

    goto :goto_8

    :cond_6
    if-nez v8, :cond_8

    :cond_7
    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    new-array v3, v12, [Ljava/lang/String;

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    :goto_4
    array-length v8, v3

    :goto_5
    if-ge v12, v8, :cond_7

    aget-object v13, v3, v12

    invoke-static {v13}, LG/W;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13}, LG/W;->h(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :goto_6
    if-eqz v13, :cond_c

    :cond_b
    :goto_7
    move v3, v10

    goto :goto_8

    :cond_c
    if-ne v7, v11, :cond_5

    if-eq v6, v11, :cond_d

    goto :goto_3

    :cond_d
    if-ne v5, v11, :cond_b

    iget v3, v1, LG/x;->L:I

    if-eq v3, v11, :cond_e

    goto :goto_7

    :cond_e
    move v3, v11

    :goto_8
    const v8, 0x49742400    # 1000000.0f

    const v12, 0x7f0d0049

    const-string v13, ""

    if-ne v3, v9, :cond_12

    invoke-virtual/range {p0 .. p1}, LZ0/i;->n(LG/x;)Ljava/lang/String;

    move-result-object v3

    if-eq v7, v11, :cond_10

    if-ne v6, v11, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f0d004b

    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_10
    :goto_9
    move-object v5, v13

    :goto_a
    if-ne v4, v11, :cond_11

    goto :goto_b

    :cond_11
    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_b
    filled-new-array {v3, v5, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LZ0/i;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_12
    if-ne v3, v10, :cond_1a

    invoke-virtual/range {p0 .. p1}, LZ0/i;->l(LG/x;)Ljava/lang/String;

    move-result-object v3

    if-eq v5, v11, :cond_18

    if-ge v5, v10, :cond_13

    goto :goto_c

    :cond_13
    if-eq v5, v10, :cond_17

    if-eq v5, v9, :cond_16

    const/4 v6, 0x6

    if-eq v5, v6, :cond_15

    const/4 v6, 0x7

    if-eq v5, v6, :cond_15

    const/16 v6, 0x8

    if-eq v5, v6, :cond_14

    const v5, 0x7f0d0054

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_14
    const v5, 0x7f0d0056

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_15
    const v5, 0x7f0d0055

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_16
    const v5, 0x7f0d0053

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_17
    const v5, 0x7f0d004a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_18
    :goto_c
    move-object v5, v13

    :goto_d
    if-ne v4, v11, :cond_19

    goto :goto_e

    :cond_19
    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_e
    filled-new-array {v3, v5, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LZ0/i;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_1a
    invoke-virtual/range {p0 .. p1}, LZ0/i;->l(LG/x;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    return-object v3

    :cond_1b
    iget-object v1, v1, LG/x;->d:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_10

    :cond_1c
    const v3, 0x7f0d0058

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1d
    :goto_10
    const v1, 0x7f0d0057

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs v([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    iget-object v4, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Resources;

    const v5, 0x7f0d0048

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public w(ILjava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p2, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public x(Lb0/o;Lorg/mozilla/javascript/typedarrays/c;I)LG/V;
    .locals 12

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, LJ/D;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    move v4, v1

    :cond_0
    rem-int/lit8 v5, v4, 0xa

    add-int/lit8 v6, v5, 0xa

    const/16 v7, 0xa

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v8, v0, LJ/D;->a:[B

    const/16 v9, 0x9

    invoke-static {v8, v7, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-nez v4, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    :goto_1
    :try_start_0
    iget-object v9, v0, LJ/D;->a:[B

    sub-int v10, v6, v8

    invoke-interface {p1, v10, v9, v8}, Lb0/o;->l(I[BI)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v5}, LJ/D;->N(I)V

    invoke-virtual {v0, v6}, LJ/D;->M(I)V

    invoke-virtual {v0}, LJ/D;->a()I

    move-result v6

    const/4 v8, 0x3

    if-lt v6, v8, :cond_8

    invoke-virtual {v0}, LJ/D;->D()I

    move-result v6

    iget v9, v0, LJ/D;->b:I

    sub-int/2addr v9, v8

    iput v9, v0, LJ/D;->b:I

    const v9, 0x494433

    if-ne v6, v9, :cond_5

    invoke-virtual {v0, v8}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->A()I

    move-result v6

    const/4 v8, 0x2

    if-lt v6, v8, :cond_6

    const/4 v8, 0x4

    if-gt v6, v8, :cond_6

    invoke-virtual {v0, v5}, LJ/D;->N(I)V

    iget v4, v0, LJ/D;->b:I

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->z()I

    move-result v5

    add-int/lit8 v6, v5, 0xa

    invoke-interface {p1}, Lb0/o;->getLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    invoke-interface {p1}, Lb0/o;->x()J

    move-result-wide v8

    int-to-long v10, v5

    add-long/2addr v8, v10

    invoke-interface {p1}, Lb0/o;->getLength()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const-string p2, "Skipping ID3 tag with tagLength="

    const-string p3, " greater than input length="

    invoke-static {p2, p3, v6}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lb0/o;->getLength()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Id3Peeker"

    invoke-static {p3, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    new-array v2, v6, [B

    iget-object v8, v0, LJ/D;->a:[B

    invoke-static {v8, v4, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v7, v2, v5}, Lb0/o;->l(I[BI)V

    new-instance v4, Lp0/h;

    invoke-direct {v4, p2}, Lp0/h;-><init>(Lorg/mozilla/javascript/typedarrays/c;)V

    invoke-virtual {v4, v2, v6}, Lp0/h;->E([BI)LG/V;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-interface {p1, v5}, Lb0/o;->z(I)V

    :goto_2
    add-int/2addr v3, v6

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, LJ/D;->i()I

    move-result v5

    invoke-static {v5}, Lb0/a;->h(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    const/16 v5, 0x14

    invoke-virtual {v0, v5}, LJ/D;->c(I)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    if-le v4, p3, :cond_0

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "position="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v0, LJ/D;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", limit="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, LJ/D;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    :goto_3
    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1, v3}, Lb0/o;->z(I)V

    return-object v2
.end method

.method public y(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "name"

    invoke-static {p1, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method
