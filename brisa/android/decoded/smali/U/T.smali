.class public final LU/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/y;
.implements Lb0/p;
.implements LX/h;
.implements LX/k;


# static fields
.field public static final Y:Ljava/util/Map;

.field public static final Z:LG/x;


# instance fields
.field public A:[LU/S;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:LB0/b;

.field public G:Lb0/z;

.field public H:J

.field public I:Z

.field public J:I

.field public final K:J

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:I

.field public final Q:Ljava/util/ArrayList;

.field public R:Z

.field public S:J

.field public T:J

.field public U:Z

.field public V:I

.field public W:Z

.field public X:Z

.field public final e:Landroid/net/Uri;

.field public final f:LL/h;

.field public final g:LQ/o;

.field public final h:Lcom/brisa/local/j;

.field public final i:LC1/e;

.field public final j:LQ/k;

.field public final k:LU/W;

.field public final l:LB/A;

.field public final m:Ljava/lang/String;

.field public final n:J

.field public final o:LG/x;

.field public final p:J

.field public final q:LX/m;

.field public final r:LB/A;

.field public final s:LJ/j;

.field public final t:LU/M;

.field public final u:LU/M;

.field public final v:Landroid/os/Handler;

.field public w:Ljava/lang/Object;

.field public x:Lo0/b;

.field public y:[LU/O;

.field public z:[LU/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LU/T;->Y:Ljava/util/Map;

    new-instance v0, LG/w;

    invoke-direct {v0}, LG/w;-><init>()V

    const-string v1, "icy"

    iput-object v1, v0, LG/w;->a:Ljava/lang/String;

    const-string v1, "application/x-icy"

    invoke-static {v1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LG/w;->o:Ljava/lang/String;

    new-instance v1, LG/x;

    invoke-direct {v1, v0}, LG/x;-><init>(LG/w;)V

    sput-object v1, LU/T;->Z:LG/x;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;LL/h;LB/A;LQ/o;LQ/k;Lcom/brisa/local/j;LC1/e;LU/W;LB/A;Ljava/lang/String;ILG/x;JLY/a;)V
    .locals 1

    move-object/from16 v0, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/T;->e:Landroid/net/Uri;

    iput-object p2, p0, LU/T;->f:LL/h;

    iput-object p4, p0, LU/T;->g:LQ/o;

    iput-object p5, p0, LU/T;->j:LQ/k;

    iput-object p6, p0, LU/T;->h:Lcom/brisa/local/j;

    iput-object p7, p0, LU/T;->i:LC1/e;

    iput-object p8, p0, LU/T;->k:LU/W;

    iput-object p9, p0, LU/T;->l:LB/A;

    iput-object p10, p0, LU/T;->m:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, LU/T;->n:J

    iput-object p12, p0, LU/T;->o:LG/x;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, LU/T;->K:J

    if-eqz v0, :cond_0

    new-instance p1, LX/m;

    invoke-direct {p1, v0}, LX/m;-><init>(LY/a;)V

    goto :goto_0

    :cond_0
    new-instance p1, LX/m;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, LX/m;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, LU/T;->q:LX/m;

    iput-object p3, p0, LU/T;->r:LB/A;

    iput-wide p13, p0, LU/T;->p:J

    new-instance p1, LJ/j;

    invoke-direct {p1}, LJ/j;-><init>()V

    iput-object p1, p0, LU/T;->s:LJ/j;

    new-instance p1, LU/M;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LU/M;-><init>(LU/T;I)V

    iput-object p1, p0, LU/T;->t:LU/M;

    new-instance p1, LU/M;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LU/M;-><init>(LU/T;I)V

    iput-object p1, p0, LU/T;->u:LU/M;

    const/4 p1, 0x0

    invoke-static {p1}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, LU/T;->v:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [LU/S;

    iput-object p2, p0, LU/T;->A:[LU/S;

    new-array p2, p1, [LU/Z;

    iput-object p2, p0, LU/T;->z:[LU/Z;

    new-array p1, p1, [LU/O;

    iput-object p1, p0, LU/T;->y:[LU/O;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LU/T;->Q:Ljava/util/ArrayList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LU/T;->T:J

    const/4 p1, 0x1

    iput p1, p0, LU/T;->J:I

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 10

    invoke-virtual {p0}, LU/T;->u()V

    iget-object v0, p0, LU/T;->F:LB0/b;

    iget-object v1, v0, LB0/b;->h:Ljava/lang/Object;

    check-cast v1, [Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, LU/l0;

    invoke-virtual {v0, p1}, LU/l0;->a(I)LG/r0;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v0, v0, LG/r0;->d:[LG/x;

    aget-object v5, v0, v2

    iget-object v0, v5, LG/x;->p:Ljava/lang/String;

    invoke-static {v0}, LG/W;->g(Ljava/lang/String;)I

    move-result v4

    iget-wide v2, p0, LU/T;->S:J

    move-wide v6, v2

    new-instance v3, LU/w;

    invoke-static {v6, v7}, LJ/W;->S(J)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v3 .. v9}, LU/w;-><init>(ILG/x;JJ)V

    new-instance v0, LM0/K;

    const/16 v2, 0x14

    iget-object v4, p0, LU/T;->i:LC1/e;

    invoke-direct {v0, v4, v3, v2}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v0}, LC1/e;->f(LJ/k;)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 4

    invoke-virtual {p0}, LU/T;->u()V

    iget-boolean v0, p0, LU/T;->U:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, LU/T;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/T;->F:LB0/b;

    iget-object v0, v0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, [Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, LU/T;->z:[LU/Z;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LU/Z;->m(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, LU/T;->T:J

    iput-boolean v0, p0, LU/T;->U:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, LU/T;->M:Z

    iput-wide v1, p0, LU/T;->S:J

    iput v0, p0, LU/T;->V:I

    iget-object p1, p0, LU/T;->z:[LU/Z;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, LU/Z;->p(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, LU/T;->w:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->a(LU/b0;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final C(LU/S;)Lb0/G;
    .locals 5

    iget-object v0, p0, LU/T;->z:[LU/Z;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, LU/T;->A:[LU/S;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, LU/S;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, LU/T;->z:[LU/Z;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, LU/T;->B:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, LU/S;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lb0/l;

    invoke-direct {p1}, Lb0/l;-><init>()V

    return-object p1

    :cond_2
    new-instance v1, LU/Z;

    iget-object v2, p0, LU/T;->g:LQ/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LU/T;->l:LB/A;

    iget-object v4, p0, LU/T;->j:LQ/k;

    invoke-direct {v1, v3, v2, v4}, LU/Z;-><init>(LB/A;LQ/o;LQ/k;)V

    new-instance v2, LU/O;

    invoke-direct {v2, v1}, LU/O;-><init>(LU/Z;)V

    iput-object p0, v1, LU/Z;->f:LU/T;

    iget-object v3, p0, LU/T;->A:[LU/S;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LU/S;

    aput-object p1, v3, v0

    iput-object v3, p0, LU/T;->A:[LU/S;

    iget-object p1, p0, LU/T;->z:[LU/Z;

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LU/Z;

    aput-object v1, p1, v0

    iput-object p1, p0, LU/T;->z:[LU/Z;

    iget-object p1, p0, LU/T;->y:[LU/O;

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LU/O;

    aput-object v2, p1, v0

    iput-object p1, p0, LU/T;->y:[LU/O;

    return-object v2
.end method

.method public final D(Lb0/z;)V
    .locals 6

    iget-object v0, p0, LU/T;->x:Lo0/b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lb0/s;

    invoke-direct {v0, v1, v2}, Lb0/s;-><init>(J)V

    :goto_0
    iput-object v0, p0, LU/T;->G:Lb0/z;

    invoke-interface {p1}, Lb0/z;->g()J

    move-result-wide v3

    iput-wide v3, p0, LU/T;->H:J

    iget-boolean v0, p0, LU/T;->R:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lb0/z;->g()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, LU/T;->I:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, LU/T;->J:I

    iget-boolean v1, p0, LU/T;->C:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, LU/T;->k:LU/W;

    iget-wide v2, p0, LU/T;->H:J

    invoke-virtual {v1, v2, v3, p1, v0}, LU/W;->u(JLb0/z;Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, LU/T;->z()V

    return-void
.end method

.method public final E()V
    .locals 12

    new-instance v0, LU/P;

    iget-object v4, p0, LU/T;->r:LB/A;

    iget-object v6, p0, LU/T;->s:LJ/j;

    iget-object v2, p0, LU/T;->e:Landroid/net/Uri;

    iget-object v3, p0, LU/T;->f:LL/h;

    move-object v5, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LU/P;-><init>(LU/T;Landroid/net/Uri;LL/h;LB/A;LU/T;LJ/j;)V

    iget-boolean v2, v1, LU/T;->C:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LU/T;->y()Z

    move-result v2

    invoke-static {v2}, LF1/i;->o(Z)V

    const-wide/high16 v2, -0x8000000000000000L

    iget-wide v4, v1, LU/T;->K:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, v1, LU/T;->H:J

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    iget-wide v6, v1, LU/T;->T:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    iput-boolean v9, v1, LU/T;->W:Z

    iput-wide v2, v1, LU/T;->T:J

    return-void

    :cond_1
    iget-object v4, v1, LU/T;->G:Lb0/z;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v1, LU/T;->T:J

    invoke-interface {v4, v5, v6}, Lb0/z;->e(J)Lb0/y;

    move-result-object v4

    iget-object v4, v4, Lb0/y;->a:Lb0/A;

    iget-wide v4, v4, Lb0/A;->b:J

    iget-wide v6, v1, LU/T;->T:J

    iget-object v10, v0, LU/P;->g:Lb0/r;

    iput-wide v4, v10, Lb0/r;->a:J

    iput-wide v6, v0, LU/P;->j:J

    iput-boolean v9, v0, LU/P;->i:Z

    iput-boolean v8, v0, LU/P;->m:Z

    iget-object v4, v1, LU/T;->z:[LU/Z;

    array-length v5, v4

    move v6, v8

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    iget-wide v10, v1, LU/T;->T:J

    iput-wide v10, v7, LU/Z;->t:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, v1, LU/T;->T:J

    :cond_3
    invoke-virtual {p0}, LU/T;->w()I

    move-result v2

    iput v2, v1, LU/T;->V:I

    iget-object v2, v1, LU/T;->h:Lcom/brisa/local/j;

    iget v3, v1, LU/T;->J:I

    invoke-virtual {v2, v3}, Lcom/brisa/local/j;->I(I)I

    move-result v5

    move-object v4, v1

    iget-object v1, v4, LU/T;->q:LX/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iput-object v3, v1, LX/m;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v3, v0

    new-instance v0, LX/i;

    invoke-direct/range {v0 .. v7}, LX/i;-><init>(LX/m;Landroid/os/Looper;LX/j;LX/h;IJ)V

    iget-object v2, v1, LX/m;->b:LX/i;

    if-nez v2, :cond_4

    move v8, v9

    :cond_4
    invoke-static {v8}, LF1/i;->o(Z)V

    iput-object v0, v1, LX/m;->b:LX/i;

    invoke-virtual {v0}, LX/i;->b()V

    return-void
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, LU/T;->M:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LU/T;->y()Z

    move-result v0

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

.method public final a(LX/j;JJI)V
    .locals 9

    check-cast p1, LU/P;

    iget-object v0, p1, LU/P;->c:LL/C;

    new-instance v1, LU/q;

    iget-wide v2, p1, LU/P;->a:J

    iget-object v4, p1, LU/P;->k:LL/n;

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, LU/q;-><init>(JLL/n;J)V

    if-eqz p6, :cond_0

    iget-object p2, v0, LL/C;->g:Landroid/net/Uri;

    iput-object p2, v1, LU/q;->d:Landroid/net/Uri;

    iget-object p2, v0, LL/C;->h:Ljava/util/Map;

    iput-object p2, v1, LU/q;->e:Ljava/util/Map;

    iput-wide p4, v1, LU/q;->f:J

    iget-wide p2, v0, LL/C;->f:J

    iput-wide p2, v1, LU/q;->g:J

    :cond_0
    new-instance p2, LU/r;

    invoke-direct {p2, v1}, LU/r;-><init>(LU/q;)V

    iget-wide p3, p1, LU/P;->j:J

    iget-wide v0, p0, LU/T;->H:J

    new-instance v2, LU/w;

    invoke-static {p3, p4}, LJ/W;->S(J)J

    move-result-wide v5

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v7

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, LU/w;-><init>(ILG/x;JJ)V

    new-instance p1, LU/C;

    iget-object p3, p0, LU/T;->i:LC1/e;

    invoke-direct {p1, p3, p2, v2, p6}, LU/C;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p3, p1}, LC1/e;->f(LJ/k;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, LU/T;->W:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LU/T;->q:LX/m;

    invoke-virtual {v0}, LX/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LU/T;->s:LJ/j;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, LJ/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lb0/z;)V
    .locals 2

    new-instance v0, LH/i;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, p1, v1}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, LU/T;->v:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(LX/j;JJ)V
    .locals 13

    check-cast p1, LU/P;

    iget-wide v0, p0, LU/T;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, LU/T;->G:Lb0/z;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, LU/T;->x(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, p0, LU/T;->H:J

    iget-object v0, p0, LU/T;->G:Lb0/z;

    iget-boolean v4, p0, LU/T;->I:Z

    iget-object v5, p0, LU/T;->k:LU/W;

    invoke-virtual {v5, v2, v3, v0, v4}, LU/W;->u(JLb0/z;Z)V

    :cond_1
    iget-object v0, p1, LU/P;->c:LL/C;

    new-instance v2, LU/q;

    iget-wide v3, p1, LU/P;->a:J

    iget-object v5, p1, LU/P;->k:LL/n;

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, LU/q;-><init>(JLL/n;J)V

    iget-object v3, v0, LL/C;->g:Landroid/net/Uri;

    iput-object v3, v2, LU/q;->d:Landroid/net/Uri;

    iget-object v3, v0, LL/C;->h:Ljava/util/Map;

    iput-object v3, v2, LU/q;->e:Ljava/util/Map;

    move-wide/from16 v3, p4

    iput-wide v3, v2, LU/q;->f:J

    iget-wide v3, v0, LL/C;->f:J

    iput-wide v3, v2, LU/q;->g:J

    new-instance v0, LU/r;

    invoke-direct {v0, v2}, LU/r;-><init>(LU/q;)V

    iget-object v2, p0, LU/T;->h:Lcom/brisa/local/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p1, LU/P;->j:J

    iget-wide v4, p0, LU/T;->H:J

    new-instance v6, LU/w;

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v9

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v11

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v12}, LU/w;-><init>(ILG/x;JJ)V

    new-instance p1, LU/D;

    const/4 v2, 0x0

    iget-object v3, p0, LU/T;->i:LC1/e;

    invoke-direct {p1, v3, v0, v6, v2}, LU/D;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {v3, p1}, LC1/e;->f(LJ/k;)V

    iput-boolean v1, p0, LU/T;->W:Z

    iget-object p1, p0, LU/T;->w:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->a(LU/b0;)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/T;->B:Z

    iget-object v0, p0, LU/T;->v:Landroid/os/Handler;

    iget-object v1, p0, LU/T;->t:LU/M;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(LU/x;J)V
    .locals 5

    iput-object p1, p0, LU/T;->w:Ljava/lang/Object;

    iget-object p1, p0, LU/T;->o:LG/x;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LU/T;->v(II)Lb0/G;

    move-result-object v0

    invoke-interface {v0, p1}, Lb0/G;->b(LG/x;)V

    new-instance p1, Lb0/x;

    const/4 v0, 0x1

    new-array v2, v0, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    new-array v0, v0, [J

    aput-wide v3, v0, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v3, v4, v2, v0}, Lb0/x;-><init>(J[J[J)V

    invoke-virtual {p0, p1}, LU/T;->D(Lb0/z;)V

    invoke-virtual {p0}, LU/T;->e()V

    iput-wide p2, p0, LU/T;->T:J

    return-void

    :cond_0
    iget-object p1, p0, LU/T;->s:LJ/j;

    invoke-virtual {p1}, LJ/j;->d()Z

    invoke-virtual {p0}, LU/T;->E()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/T;->O:Z

    return-void
.end method

.method public final h()J
    .locals 2

    invoke-virtual {p0}, LU/T;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 3

    iget-boolean v0, p0, LU/T;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, LU/T;->N:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LU/T;->N:Z

    iget-wide v0, p0, LU/T;->S:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, LU/T;->M:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LU/T;->W:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, LU/T;->w()I

    move-result v0

    iget v2, p0, LU/T;->V:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, LU/T;->M:Z

    iget-wide v0, p0, LU/T;->S:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final j(LN/J;)Z
    .locals 1

    iget-boolean p1, p0, LU/T;->W:Z

    if-nez p1, :cond_4

    iget-object p1, p0, LU/T;->q:LX/m;

    iget-object v0, p1, LX/m;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, LU/T;->U:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, LU/T;->C:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LU/T;->o:LG/x;

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, LU/T;->P:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, LU/T;->s:LJ/j;

    invoke-virtual {v0}, LJ/j;->d()Z

    move-result v0

    invoke-virtual {p1}, LX/m;->a()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, LU/T;->E()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k([LW/q;[Z[LU/a0;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    invoke-virtual {v0}, LU/T;->u()V

    iget-object v5, v0, LU/T;->F:LB0/b;

    iget-object v6, v5, LB0/b;->e:Ljava/lang/Object;

    check-cast v6, LU/l0;

    iget-object v5, v5, LB0/b;->g:Ljava/lang/Object;

    check-cast v5, [Z

    iget v7, v0, LU/T;->P:I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    array-length v10, v1

    const/4 v11, 0x1

    if-ge v9, v10, :cond_1

    aget-object v10, v1, v9

    if-eqz v10, :cond_0

    invoke-interface {v10}, LW/q;->g()LG/r0;

    move-result-object v10

    invoke-virtual {v6, v10}, LU/l0;->b(LG/r0;)I

    move-result v10

    invoke-virtual {v6, v10}, LU/l0;->a(I)LG/r0;

    move-result-object v10

    iget-object v10, v10, LG/r0;->d:[LG/x;

    aget-object v10, v10, v8

    iget-object v10, v10, LG/x;->p:Ljava/lang/String;

    const-string v12, "application/x-itut-t35"

    invoke-static {v10, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v9, v11

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_1
    move v10, v8

    :goto_2
    array-length v12, v1

    iget-object v13, v0, LU/T;->Q:Ljava/util/ArrayList;

    const/4 v14, 0x0

    if-ge v10, v12, :cond_5

    aget-object v12, v2, v10

    if-eqz v12, :cond_4

    aget-object v15, v1, v10

    if-eqz v15, :cond_2

    aget-boolean v15, p2, v10

    if-eqz v15, :cond_2

    if-eqz v9, :cond_4

    instance-of v15, v12, LU/L;

    if-eqz v15, :cond_4

    :cond_2
    instance-of v15, v12, LU/L;

    if-eqz v15, :cond_3

    check-cast v12, LU/L;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v13, v12, LU/L;->e:LU/Q;

    iget v13, v13, LU/Q;->e:I

    aget-boolean v15, v5, v13

    invoke-static {v15}, LF1/i;->o(Z)V

    iget v15, v0, LU/T;->P:I

    sub-int/2addr v15, v11

    iput v15, v0, LU/T;->P:I

    aput-boolean v8, v5, v13

    iget-object v12, v12, LU/L;->f:LU/Q;

    iget v12, v12, LU/Q;->e:I

    aget-boolean v13, v5, v12

    invoke-static {v13}, LF1/i;->o(Z)V

    iget v13, v0, LU/T;->P:I

    sub-int/2addr v13, v11

    iput v13, v0, LU/T;->P:I

    aput-boolean v8, v5, v12

    goto :goto_3

    :cond_3
    check-cast v12, LU/Q;

    iget v12, v12, LU/Q;->e:I

    aget-boolean v13, v5, v12

    invoke-static {v13}, LF1/i;->o(Z)V

    iget v13, v0, LU/T;->P:I

    sub-int/2addr v13, v11

    iput v13, v0, LU/T;->P:I

    aput-boolean v8, v5, v12

    :goto_3
    aput-object v14, v2, v10

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    iget-boolean v10, v0, LU/T;->L:Z

    if-eqz v10, :cond_7

    if-nez v7, :cond_6

    :goto_4
    move v7, v11

    goto :goto_5

    :cond_6
    move v7, v8

    goto :goto_5

    :cond_7
    const-wide/16 v15, 0x0

    cmp-long v7, v3, v15

    if-eqz v7, :cond_6

    iget-boolean v7, v0, LU/T;->E:Z

    if-nez v7, :cond_6

    goto :goto_4

    :goto_5
    move v10, v8

    move v12, v10

    :goto_6
    array-length v15, v1

    if-ge v10, v15, :cond_f

    aget-object v15, v2, v10

    if-nez v15, :cond_d

    aget-object v15, v1, v10

    if-eqz v15, :cond_d

    invoke-interface {v15}, LW/q;->length()I

    move-result v14

    if-ne v14, v11, :cond_8

    move v14, v11

    goto :goto_7

    :cond_8
    move v14, v8

    :goto_7
    invoke-static {v14}, LF1/i;->o(Z)V

    invoke-interface {v15, v8}, LW/q;->d(I)I

    move-result v14

    if-nez v14, :cond_9

    move v14, v11

    goto :goto_8

    :cond_9
    move v14, v8

    :goto_8
    invoke-static {v14}, LF1/i;->o(Z)V

    invoke-interface {v15}, LW/q;->g()LG/r0;

    move-result-object v14

    invoke-virtual {v6, v14}, LU/l0;->b(LG/r0;)I

    move-result v14

    aget-boolean v17, v5, v14

    xor-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, LF1/i;->o(Z)V

    move/from16 v17, v11

    iget v11, v0, LU/T;->P:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, LU/T;->P:I

    aput-boolean v17, v5, v14

    invoke-interface {v15}, LW/q;->h()LG/x;

    move-result-object v11

    iget-boolean v11, v11, LG/x;->v:Z

    or-int/2addr v12, v11

    new-instance v11, LU/Q;

    move/from16 v18, v8

    invoke-interface {v15}, LW/q;->h()LG/x;

    move-result-object v8

    iget-boolean v8, v8, LG/x;->v:Z

    invoke-direct {v11, v0, v14, v8}, LU/Q;-><init>(LU/T;IZ)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x25

    if-lt v8, v1, :cond_b

    if-nez v9, :cond_b

    invoke-interface {v15}, LW/q;->h()LG/x;

    move-result-object v1

    iget-object v1, v1, LG/x;->p:Ljava/lang/String;

    invoke-static {v1}, LG/W;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move/from16 v1, v18

    :goto_9
    iget v8, v6, LU/l0;->a:I

    if-ge v1, v8, :cond_b

    invoke-virtual {v6, v1}, LU/l0;->a(I)LG/r0;

    move-result-object v8

    iget-object v8, v8, LG/r0;->d:[LG/x;

    aget-object v8, v8, v18

    invoke-static {v8}, LJ/h;->f(LG/x;)Z

    move-result v8

    if-eqz v8, :cond_a

    aget-boolean v8, v5, v1

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v8}, LF1/i;->o(Z)V

    iget v8, v0, LU/T;->P:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, LU/T;->P:I

    aput-boolean v17, v5, v1

    new-instance v8, LU/L;

    move-object/from16 v19, v5

    new-instance v5, LU/Q;

    move-object/from16 v20, v6

    move/from16 v6, v18

    invoke-direct {v5, v0, v1, v6}, LU/Q;-><init>(LU/T;IZ)V

    invoke-interface {v15}, LW/q;->h()LG/x;

    move-result-object v1

    invoke-direct {v8, v11, v5, v1}, LU/L;-><init>(LU/Q;LU/Q;LG/x;)V

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v8

    goto :goto_a

    :cond_a
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    add-int/lit8 v1, v1, 0x1

    const/16 v18, 0x0

    goto :goto_9

    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_a
    aput-object v11, v2, v10

    aput-boolean v17, p4, v10

    if-nez v7, :cond_e

    iget-object v1, v0, LU/T;->z:[LU/Z;

    aget-object v1, v1, v14

    iget v5, v1, LU/Z;->q:I

    iget v6, v1, LU/Z;->s:I

    add-int/2addr v5, v6

    if-eqz v5, :cond_c

    move/from16 v5, v17

    invoke-virtual {v1, v3, v4, v5}, LU/Z;->r(JZ)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    move v7, v1

    goto :goto_c

    :cond_d
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :cond_e
    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_f
    iget-boolean v1, v0, LU/T;->N:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, LU/T;->L:Z

    if-nez v1, :cond_11

    :cond_10
    iput-boolean v12, v0, LU/T;->N:Z

    :cond_11
    iget v1, v0, LU/T;->P:I

    if-nez v1, :cond_14

    const/4 v6, 0x0

    iput-boolean v6, v0, LU/T;->U:Z

    iput-boolean v6, v0, LU/T;->M:Z

    iput-boolean v6, v0, LU/T;->N:Z

    iget-object v1, v0, LU/T;->q:LX/m;

    invoke-virtual {v1}, LX/m;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, LU/T;->z:[LU/Z;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_12

    aget-object v7, v2, v6

    invoke-virtual {v7}, LU/Z;->i()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_12
    iget-object v1, v1, LX/m;->b:LX/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, LX/i;->a(Z)V

    goto :goto_11

    :cond_13
    const/4 v6, 0x0

    iput-boolean v6, v0, LU/T;->W:Z

    iget-object v1, v0, LU/T;->z:[LU/Z;

    array-length v2, v1

    move v5, v6

    :goto_e
    if-ge v5, v2, :cond_16

    aget-object v7, v1, v5

    invoke-virtual {v7, v6}, LU/Z;->p(Z)V

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_e

    :cond_14
    if-eqz v7, :cond_16

    invoke-virtual {v0, v3, v4}, LU/T;->q(J)J

    move-result-wide v3

    const/4 v6, 0x0

    :goto_f
    array-length v1, v2

    if-ge v6, v1, :cond_16

    aget-object v1, v2, v6

    if-eqz v1, :cond_15

    const/16 v17, 0x1

    aput-boolean v17, p4, v6

    instance-of v5, v1, LU/L;

    if-eqz v5, :cond_15

    check-cast v1, LU/L;

    iget-object v5, v1, LU/L;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    const/4 v5, 0x0

    iput-object v5, v1, LU/L;->k:[B

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v7, v1, LU/L;->l:J

    const/4 v7, 0x0

    iput-boolean v7, v1, LU/L;->m:Z

    iput-boolean v7, v1, LU/L;->n:Z

    iget-object v1, v1, LU/L;->h:LM/f;

    invoke-virtual {v1}, LM/f;->h()V

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_16
    :goto_11
    const/4 v5, 0x1

    iput-boolean v5, v0, LU/T;->L:Z

    return-wide v3
.end method

.method public final l(LX/j;JJLjava/io/IOException;I)LJ0/f;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, LU/P;

    iget-object v2, v1, LU/P;->c:LL/C;

    new-instance v3, LU/q;

    iget-wide v4, v1, LU/P;->a:J

    iget-object v6, v1, LU/P;->k:LL/n;

    move-wide/from16 v7, p2

    invoke-direct/range {v3 .. v8}, LU/q;-><init>(JLL/n;J)V

    iget-object v4, v2, LL/C;->g:Landroid/net/Uri;

    iput-object v4, v3, LU/q;->d:Landroid/net/Uri;

    iget-object v4, v2, LL/C;->h:Ljava/util/Map;

    iput-object v4, v3, LU/q;->e:Ljava/util/Map;

    move-wide/from16 v4, p4

    iput-wide v4, v3, LU/q;->f:J

    iget-wide v4, v2, LL/C;->f:J

    iput-wide v4, v3, LU/q;->g:J

    new-instance v8, LU/r;

    invoke-direct {v8, v3}, LU/r;-><init>(LU/q;)V

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    iget-object v2, v0, LU/T;->h:Lcom/brisa/local/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, p6

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    instance-of v6, v2, LG/X;

    if-nez v6, :cond_1

    instance-of v6, v2, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_1

    instance-of v6, v2, LL/v;

    if-nez v6, :cond_1

    instance-of v6, v2, LX/l;

    if-nez v6, :cond_1

    instance-of v6, v2, LL/l;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, LL/l;

    iget v6, v6, LL/l;->e:I

    const/16 v7, 0x7d8

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    move-wide v6, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v6, 0x1388

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v6, v2

    :goto_2
    cmp-long v2, v6, v3

    const/4 v9, 0x0

    if-nez v2, :cond_3

    sget-object v2, LX/m;->e:LJ0/f;

    goto :goto_7

    :cond_3
    invoke-virtual {v0}, LU/T;->w()I

    move-result v2

    iget v10, v0, LU/T;->V:I

    if-le v2, v10, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v9

    :goto_3
    iget-boolean v11, v0, LU/T;->R:Z

    if-nez v11, :cond_8

    iget-object v11, v0, LU/T;->G:Lb0/z;

    if-eqz v11, :cond_5

    invoke-interface {v11}, Lb0/z;->g()J

    move-result-wide v11

    cmp-long v3, v11, v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v2, v0, LU/T;->C:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LU/T;->F()Z

    move-result v2

    if-nez v2, :cond_6

    iput-boolean v5, v0, LU/T;->U:Z

    sget-object v2, LX/m;->d:LJ0/f;

    goto :goto_7

    :cond_6
    iget-boolean v2, v0, LU/T;->C:Z

    iput-boolean v2, v0, LU/T;->M:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, LU/T;->S:J

    iput v9, v0, LU/T;->V:I

    iget-object v4, v0, LU/T;->z:[LU/Z;

    array-length v11, v4

    move v12, v9

    :goto_4
    if-ge v12, v11, :cond_7

    aget-object v13, v4, v12

    invoke-virtual {v13, v9}, LU/Z;->p(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    iget-object v4, v1, LU/P;->g:Lb0/r;

    iput-wide v2, v4, Lb0/r;->a:J

    iput-wide v2, v1, LU/P;->j:J

    iput-boolean v5, v1, LU/P;->i:Z

    iput-boolean v9, v1, LU/P;->m:Z

    goto :goto_6

    :cond_8
    :goto_5
    iput v2, v0, LU/T;->V:I

    :goto_6
    new-instance v2, LJ0/f;

    invoke-direct {v2, v10, v6, v7}, LJ0/f;-><init>(IJ)V

    :goto_7
    iget v3, v2, LJ0/f;->a:I

    if-eqz v3, :cond_9

    if-ne v3, v5, :cond_a

    :cond_9
    move v9, v5

    :cond_a
    xor-int/lit8 v11, v9, 0x1

    iget-wide v3, v1, LU/P;->j:J

    iget-wide v5, v0, LU/T;->H:J

    new-instance v9, LU/w;

    invoke-static {v3, v4}, LJ/W;->S(J)J

    move-result-wide v15

    invoke-static {v5, v6}, LJ/W;->S(J)J

    move-result-wide v17

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v12, v9

    invoke-direct/range {v12 .. v18}, LU/w;-><init>(ILG/x;JJ)V

    new-instance v6, LU/E;

    iget-object v7, v0, LU/T;->i:LC1/e;

    move-object/from16 v10, p6

    invoke-direct/range {v6 .. v11}, LU/E;-><init>(LC1/e;LU/r;LU/w;Ljava/io/IOException;Z)V

    invoke-virtual {v7, v6}, LC1/e;->f(LJ/k;)V

    return-object v2
.end method

.method public final m()LU/l0;
    .locals 1

    invoke-virtual {p0}, LU/T;->u()V

    iget-object v0, p0, LU/T;->F:LB0/b;

    iget-object v0, v0, LB0/b;->e:Ljava/lang/Object;

    check-cast v0, LU/l0;

    return-object v0
.end method

.method public final n()J
    .locals 12

    invoke-virtual {p0}, LU/T;->u()V

    iget-boolean v0, p0, LU/T;->W:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, LU/T;->P:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, LU/T;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, LU/T;->T:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, LU/T;->D:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, LU/T;->z:[LU/Z;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, LU/T;->F:LB0/b;

    iget-object v10, v9, LB0/b;->f:Ljava/lang/Object;

    check-cast v10, [Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, LB0/b;->g:Ljava/lang/Object;

    check-cast v9, [Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, LU/T;->z:[LU/Z;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_0
    iget-boolean v10, v9, LU/Z;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v9

    if-nez v10, :cond_2

    iget-object v9, p0, LU/T;->z:[LU/Z;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_1
    iget-wide v10, v9, LU/Z;->w:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, LU/T;->x(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, LU/T;->S:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final o(JLN/h0;)J
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0}, LU/T;->u()V

    iget-object v4, v0, LU/T;->G:Lb0/z;

    invoke-interface {v4}, Lb0/z;->c()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, LU/T;->G:Lb0/z;

    invoke-interface {v4, v1, v2}, Lb0/z;->e(J)Lb0/y;

    move-result-object v4

    iget-object v7, v4, Lb0/y;->a:Lb0/A;

    iget-wide v7, v7, Lb0/A;->a:J

    iget-object v4, v4, Lb0/y;->b:Lb0/A;

    iget-wide v9, v4, Lb0/A;->a:J

    iget-wide v11, v3, LN/h0;->b:J

    iget-wide v3, v3, LN/h0;->a:J

    cmp-long v13, v3, v5

    if-nez v13, :cond_1

    cmp-long v13, v11, v5

    if-nez v13, :cond_1

    return-wide v1

    :cond_1
    sget-object v13, LJ/W;->a:Ljava/lang/String;

    sub-long v13, v1, v3

    xor-long/2addr v3, v1

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/4 v15, 0x0

    if-ltz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v15

    :goto_0
    xor-long v16, v1, v13

    cmp-long v16, v16, v5

    if-ltz v16, :cond_3

    move/from16 v16, v4

    goto :goto_1

    :cond_3
    move/from16 v16, v15

    :goto_1
    or-int v3, v3, v16

    const-wide/16 v16, 0x1

    const/16 v18, 0x3f

    const-wide v19, 0x7fffffffffffffffL

    if-eqz v3, :cond_4

    move-wide/from16 v21, v13

    goto :goto_2

    :cond_4
    ushr-long v21, v13, v18

    xor-long v21, v21, v16

    add-long v21, v21, v19

    :goto_2
    const-wide/high16 v23, -0x8000000000000000L

    cmp-long v3, v21, v23

    if-nez v3, :cond_5

    cmp-long v3, v13, v23

    if-nez v3, :cond_6

    :cond_5
    cmp-long v3, v21, v19

    if-nez v3, :cond_7

    cmp-long v3, v13, v19

    if-eqz v3, :cond_7

    :cond_6
    move-wide/from16 v21, v23

    :cond_7
    add-long v13, v1, v11

    xor-long/2addr v11, v1

    cmp-long v3, v11, v5

    if-gez v3, :cond_8

    move v3, v4

    goto :goto_3

    :cond_8
    move v3, v15

    :goto_3
    xor-long v11, v1, v13

    cmp-long v5, v11, v5

    if-ltz v5, :cond_9

    move v5, v4

    goto :goto_4

    :cond_9
    move v5, v15

    :goto_4
    or-int/2addr v3, v5

    if-eqz v3, :cond_a

    move-wide v5, v13

    goto :goto_5

    :cond_a
    ushr-long v5, v13, v18

    xor-long v5, v5, v16

    add-long v5, v5, v19

    :goto_5
    cmp-long v3, v5, v23

    if-nez v3, :cond_b

    cmp-long v3, v13, v23

    if-nez v3, :cond_d

    :cond_b
    cmp-long v3, v5, v19

    if-nez v3, :cond_c

    cmp-long v3, v13, v19

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    move-wide/from16 v19, v5

    :cond_d
    :goto_6
    cmp-long v3, v21, v7

    if-gtz v3, :cond_e

    cmp-long v3, v7, v19

    if-gtz v3, :cond_e

    move v3, v4

    goto :goto_7

    :cond_e
    move v3, v15

    :goto_7
    cmp-long v5, v21, v9

    if-gtz v5, :cond_f

    cmp-long v5, v9, v19

    if-gtz v5, :cond_f

    goto :goto_8

    :cond_f
    move v4, v15

    :goto_8
    if-eqz v3, :cond_10

    if-eqz v4, :cond_10

    sub-long v3, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v1, v9, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_12

    goto :goto_9

    :cond_10
    if-eqz v3, :cond_11

    :goto_9
    return-wide v7

    :cond_11
    if-eqz v4, :cond_13

    :cond_12
    return-wide v9

    :cond_13
    return-wide v21
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, LU/T;->h:Lcom/brisa/local/j;

    iget v1, p0, LU/T;->J:I

    invoke-virtual {v0, v1}, Lcom/brisa/local/j;->I(I)I

    move-result v0

    iget-object v1, p0, LU/T;->q:LX/m;

    iget-object v2, v1, LX/m;->c:Ljava/io/IOException;

    if-nez v2, :cond_5

    iget-object v1, v1, LX/m;->b:LX/i;

    if-eqz v1, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    iget v0, v1, LX/i;->e:I

    :cond_0
    iget-object v2, v1, LX/i;->i:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v1, v1, LX/i;->j:I

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    iget-boolean v0, p0, LU/T;->W:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LU/T;->C:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    return-void

    :cond_5
    throw v2
.end method

.method public final q(J)J
    .locals 12

    iget-object v0, p0, LU/T;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU/L;

    iget-object v4, v1, LU/L;->i:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    iput-object v2, v1, LU/L;->k:[B

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v1, LU/L;->l:J

    iput-boolean v3, v1, LU/L;->m:Z

    iput-boolean v3, v1, LU/L;->n:Z

    iget-object v1, v1, LU/L;->h:LM/f;

    invoke-virtual {v1}, LM/f;->h()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LU/T;->u()V

    iget-object v0, p0, LU/T;->F:LB0/b;

    iget-object v0, v0, LB0/b;->f:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, LU/T;->G:Lb0/z;

    invoke-interface {v1}, Lb0/z;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-boolean v3, p0, LU/T;->M:Z

    iget-wide v4, p0, LU/T;->S:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-wide p1, p0, LU/T;->S:J

    invoke-virtual {p0}, LU/T;->y()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-wide p1, p0, LU/T;->T:J

    return-wide p1

    :cond_3
    iget v4, p0, LU/T;->J:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_a

    iget-boolean v4, p0, LU/T;->W:Z

    if-nez v4, :cond_4

    iget-object v4, p0, LU/T;->q:LX/m;

    invoke-virtual {v4}, LX/m;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_4
    iget-object v4, p0, LU/T;->z:[LU/Z;

    array-length v4, v4

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_d

    iget-object v6, p0, LU/T;->z:[LU/Z;

    aget-object v6, v6, v5

    iget-object v7, p0, LU/T;->y:[LU/O;

    aget-object v7, v7, v5

    iget-object v7, v7, LU/O;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v7, p0, LU/T;->E:Z

    if-eqz v7, :cond_6

    iget v7, v6, LU/Z;->q:I

    invoke-virtual {v6, v7}, LU/Z;->q(I)V

    goto :goto_5

    :cond_6
    monitor-enter v6

    :try_start_0
    iget v7, v6, LU/Z;->p:I

    const-wide/high16 v8, -0x8000000000000000L

    if-nez v7, :cond_7

    move-wide v10, v8

    goto :goto_4

    :cond_7
    iget-object v7, v6, LU/Z;->n:[J

    iget v10, v6, LU/Z;->r:I

    aget-wide v10, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v6

    cmp-long v7, v10, v8

    if-eqz v7, :cond_8

    cmp-long v7, p1, v10

    if-gtz v7, :cond_8

    iget v7, v6, LU/Z;->q:I

    if-nez v7, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v6, v7}, LU/Z;->q(I)V

    goto :goto_5

    :cond_8
    iget-boolean v7, p0, LU/T;->W:Z

    invoke-virtual {v6, p1, p2, v7}, LU/Z;->r(JZ)Z

    move-result v6

    if-nez v6, :cond_9

    aget-boolean v6, v0, v5

    if-nez v6, :cond_a

    iget-boolean v6, p0, LU/T;->D:Z

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    :goto_6
    iput-boolean v3, p0, LU/T;->U:Z

    iput-wide p1, p0, LU/T;->T:J

    iput-boolean v3, p0, LU/T;->W:Z

    iput-boolean v3, p0, LU/T;->N:Z

    iget-object v0, p0, LU/T;->q:LX/m;

    invoke-virtual {v0}, LX/m;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, LU/T;->z:[LU/Z;

    array-length v1, v0

    move v2, v3

    :goto_7
    if-ge v2, v1, :cond_b

    aget-object v4, v0, v2

    invoke-virtual {v4}, LU/Z;->i()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    iget-object v0, p0, LU/T;->q:LX/m;

    iget-object v0, v0, LX/m;->b:LX/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, LX/i;->a(Z)V

    return-wide p1

    :cond_c
    iget-object v0, p0, LU/T;->q:LX/m;

    iput-object v2, v0, LX/m;->c:Ljava/io/IOException;

    iget-object v0, p0, LU/T;->z:[LU/Z;

    array-length v1, v0

    move v2, v3

    :goto_8
    if-ge v2, v1, :cond_d

    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, LU/Z;->p(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    return-wide p1
.end method

.method public final r(J)V
    .locals 13

    iget-boolean v0, p0, LU/T;->E:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, LU/T;->u()V

    invoke-virtual {p0}, LU/T;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    iget-object v0, p0, LU/T;->F:LB0/b;

    iget-object v0, v0, LB0/b;->g:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, LU/T;->z:[LU/Z;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    iget-object v3, p0, LU/T;->z:[LU/Z;

    aget-object v4, v3, v2

    aget-boolean v3, v0, v2

    iget-object v10, v4, LU/Z;->a:LU/X;

    monitor-enter v4

    :try_start_0
    iget v5, v4, LU/Z;->p:I

    const-wide/16 v11, -0x1

    if-eqz v5, :cond_2

    iget-object v6, v4, LU/Z;->n:[J

    move v7, v5

    iget v5, v4, LU/Z;->r:I

    aget-wide v8, v6, v5

    cmp-long v6, p1, v8

    if-gez v6, :cond_3

    :cond_2
    move-wide v6, p1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    iget v3, v4, LU/Z;->s:I

    if-eq v3, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v8, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_4
    move v8, v7

    :goto_1
    const/4 v9, 0x0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, LU/Z;->j(IJIZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5

    monitor-exit v4

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-virtual {v4, p1}, LU/Z;->h(I)J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    goto :goto_3

    :goto_2
    monitor-exit v4

    :goto_3
    invoke-virtual {v10, v11, v12}, LU/X;->a(J)V

    add-int/lit8 v2, v2, 0x1

    move-wide p1, v6

    goto :goto_0

    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_6
    :goto_5
    return-void
.end method

.method public final s(LX/j;JJZ)V
    .locals 9

    check-cast p1, LU/P;

    iget-object v0, p1, LU/P;->c:LL/C;

    new-instance v1, LU/q;

    iget-wide v2, p1, LU/P;->a:J

    iget-object v4, p1, LU/P;->k:LL/n;

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, LU/q;-><init>(JLL/n;J)V

    iget-object p2, v0, LL/C;->g:Landroid/net/Uri;

    iput-object p2, v1, LU/q;->d:Landroid/net/Uri;

    iget-object p2, v0, LL/C;->h:Ljava/util/Map;

    iput-object p2, v1, LU/q;->e:Ljava/util/Map;

    iput-wide p4, v1, LU/q;->f:J

    iget-wide p2, v0, LL/C;->f:J

    iput-wide p2, v1, LU/q;->g:J

    new-instance p2, LU/r;

    invoke-direct {p2, v1}, LU/r;-><init>(LU/q;)V

    iget-object p3, p0, LU/T;->h:Lcom/brisa/local/j;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p3, p1, LU/P;->j:J

    iget-wide v0, p0, LU/T;->H:J

    new-instance v2, LU/w;

    invoke-static {p3, p4}, LJ/W;->S(J)J

    move-result-wide v5

    invoke-static {v0, v1}, LJ/W;->S(J)J

    move-result-wide v7

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, LU/w;-><init>(ILG/x;JJ)V

    new-instance p1, LU/D;

    const/4 p3, 0x1

    iget-object p4, p0, LU/T;->i:LC1/e;

    invoke-direct {p1, p4, p2, v2, p3}, LU/D;-><init>(LC1/e;LU/r;LU/w;I)V

    invoke-virtual {p4, p1}, LC1/e;->f(LJ/k;)V

    if-nez p6, :cond_1

    iget-object p1, p0, LU/T;->z:[LU/Z;

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_0

    aget-object p5, p1, p4

    invoke-virtual {p5, p3}, LU/Z;->p(Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, LU/T;->P:I

    if-lez p1, :cond_1

    iget-object p1, p0, LU/T;->w:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, LU/x;->a(LU/b0;)V

    :cond_1
    return-void
.end method

.method public final t(J)V
    .locals 5

    iget p1, p0, LU/T;->P:I

    if-lez p1, :cond_5

    invoke-virtual {p0}, LU/T;->y()Z

    move-result p1

    if-nez p1, :cond_5

    iget-wide p1, p0, LU/T;->K:J

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, LU/T;->u()V

    move v1, p2

    move p1, v0

    :goto_0
    iget-object v2, p0, LU/T;->z:[LU/Z;

    array-length v3, v2

    if-ge p1, v3, :cond_4

    iget-object v3, p0, LU/T;->F:LB0/b;

    iget-object v4, v3, LB0/b;->g:Ljava/lang/Object;

    check-cast v4, [Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_3

    iget-object v3, v3, LB0/b;->f:Ljava/lang/Object;

    check-cast v3, [Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    iget-boolean v3, p0, LU/T;->D:Z

    if-nez v3, :cond_3

    :cond_1
    aget-object v2, v2, p1

    monitor-enter v2

    :try_start_0
    iget v3, v2, LU/Z;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move v3, p2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    monitor-exit v2

    and-int/2addr v1, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    iput-boolean p2, p0, LU/T;->W:Z

    :cond_5
    return-void
.end method

.method public final u()V
    .locals 1

    iget-boolean v0, p0, LU/T;->C:Z

    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, p0, LU/T;->F:LB0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LU/T;->G:Lb0/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final v(II)Lb0/G;
    .locals 1

    new-instance p2, LU/S;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, LU/S;-><init>(IZ)V

    invoke-virtual {p0, p2}, LU/T;->C(LU/S;)Lb0/G;

    move-result-object p1

    return-object p1
.end method

.method public final w()I
    .locals 6

    iget-object v0, p0, LU/T;->z:[LU/Z;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget v5, v4, LU/Z;->q:I

    iget v4, v4, LU/Z;->p:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final x(Z)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LU/T;->z:[LU/Z;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, LU/T;->F:LB0/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, LB0/b;->g:Ljava/lang/Object;

    check-cast v3, [Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, LU/T;->z:[LU/Z;

    aget-object v3, v3, v2

    monitor-enter v3

    :try_start_0
    iget-wide v4, v3, LU/Z;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-wide v0
.end method

.method public final y()Z
    .locals 4

    iget-wide v0, p0, LU/T;->T:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 18

    move-object/from16 v1, p0

    iget-wide v2, v1, LU/T;->p:J

    iget-boolean v0, v1, LU/T;->X:Z

    if-nez v0, :cond_1b

    iget-boolean v0, v1, LU/T;->C:Z

    if-nez v0, :cond_1b

    iget-boolean v0, v1, LU/T;->B:Z

    if-eqz v0, :cond_1b

    iget-object v0, v1, LU/T;->G:Lb0/z;

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, v1, LU/T;->z:[LU/Z;

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v0, v6

    invoke-virtual {v7}, LU/Z;->l()LG/x;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_c

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v1, LU/T;->s:LJ/j;

    monitor-enter v4

    :try_start_0
    iput-boolean v5, v4, LJ/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    iget-object v0, v1, LU/T;->z:[LU/Z;

    array-length v0, v0

    const/4 v4, -0x1

    move v7, v4

    move v6, v5

    move v8, v6

    :goto_1
    const/4 v9, 0x1

    if-ge v6, v0, :cond_c

    iget-object v10, v1, LU/T;->z:[LU/Z;

    aget-object v10, v10, v6

    invoke-virtual {v10}, LU/Z;->l()LG/x;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, LG/x;->p:Ljava/lang/String;

    invoke-static {v10}, LG/W;->g(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-eq v10, v9, :cond_6

    if-eq v10, v11, :cond_5

    if-eq v10, v12, :cond_4

    if-eq v10, v13, :cond_3

    move v14, v5

    goto :goto_2

    :cond_3
    move v14, v11

    goto :goto_2

    :cond_4
    move v14, v9

    goto :goto_2

    :cond_5
    move v14, v13

    goto :goto_2

    :cond_6
    move v14, v12

    :goto_2
    if-eq v7, v9, :cond_9

    if-eq v7, v11, :cond_8

    if-eq v7, v12, :cond_a

    if-eq v7, v13, :cond_7

    move v9, v5

    goto :goto_3

    :cond_7
    move v9, v11

    goto :goto_3

    :cond_8
    move v9, v13

    goto :goto_3

    :cond_9
    move v9, v12

    :cond_a
    :goto_3
    if-le v14, v9, :cond_b

    move v8, v6

    move v7, v10

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_c
    new-array v6, v0, [LG/r0;

    new-array v7, v0, [Z

    move v10, v5

    :goto_4
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v0, :cond_19

    iget-object v13, v1, LU/T;->z:[LU/Z;

    aget-object v13, v13, v10

    invoke-virtual {v13}, LU/Z;->l()LG/x;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, LG/x;->p:Ljava/lang/String;

    invoke-static {v14}, LG/W;->h(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-static {v14}, LG/W;->k(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    goto :goto_5

    :cond_d
    move/from16 v16, v5

    goto :goto_6

    :cond_e
    :goto_5
    move/from16 v16, v9

    :goto_6
    aput-boolean v16, v7, v10

    move/from16 v17, v5

    iget-boolean v5, v1, LU/T;->D:Z

    or-int v5, v5, v16

    iput-boolean v5, v1, LU/T;->D:Z

    invoke-static {v14}, LG/W;->i(Ljava/lang/String;)Z

    move-result v5

    cmp-long v11, v2, v11

    if-eqz v11, :cond_f

    if-ne v0, v9, :cond_f

    if-eqz v5, :cond_f

    move v5, v9

    goto :goto_7

    :cond_f
    move/from16 v5, v17

    :goto_7
    iput-boolean v5, v1, LU/T;->E:Z

    iget-object v5, v1, LU/T;->x:Lo0/b;

    if-eqz v5, :cond_13

    iget v11, v5, Lo0/b;->a:I

    if-nez v15, :cond_10

    iget-object v12, v1, LU/T;->A:[LU/S;

    aget-object v12, v12, v10

    iget-boolean v12, v12, LU/S;->b:Z

    if-eqz v12, :cond_12

    :cond_10
    iget-object v12, v13, LG/x;->m:LG/V;

    if-nez v12, :cond_11

    new-instance v12, LG/V;

    new-array v14, v9, [LG/U;

    aput-object v5, v14, v17

    invoke-direct {v12, v14}, LG/V;-><init>([LG/U;)V

    goto :goto_8

    :cond_11
    new-array v14, v9, [LG/U;

    aput-object v5, v14, v17

    invoke-virtual {v12, v14}, LG/V;->a([LG/U;)LG/V;

    move-result-object v12

    :goto_8
    invoke-virtual {v13}, LG/x;->a()LG/w;

    move-result-object v5

    iput-object v12, v5, LG/w;->l:LG/V;

    new-instance v13, LG/x;

    invoke-direct {v13, v5}, LG/x;-><init>(LG/w;)V

    :cond_12
    if-eqz v15, :cond_13

    iget v5, v13, LG/x;->i:I

    if-ne v5, v4, :cond_13

    iget v5, v13, LG/x;->j:I

    if-ne v5, v4, :cond_13

    if-eq v11, v4, :cond_13

    invoke-virtual {v13}, LG/x;->a()LG/w;

    move-result-object v5

    iput v11, v5, LG/w;->i:I

    new-instance v13, LG/x;

    invoke-direct {v13, v5}, LG/x;-><init>(LG/w;)V

    :cond_13
    iget-object v5, v1, LU/T;->g:LQ/o;

    invoke-interface {v5, v13}, LQ/o;->f(LG/x;)I

    move-result v5

    invoke-virtual {v13}, LG/x;->a()LG/w;

    move-result-object v11

    iput v5, v11, LG/w;->S:I

    new-instance v5, LG/x;

    invoke-direct {v5, v11}, LG/x;-><init>(LG/w;)V

    if-eq v10, v8, :cond_14

    invoke-virtual {v5}, LG/x;->a()LG/w;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, LG/w;->m:Ljava/lang/String;

    new-instance v11, LG/x;

    invoke-direct {v11, v5}, LG/x;-><init>(LG/w;)V

    move-object v5, v11

    :cond_14
    new-instance v11, LG/r0;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v5}, [LG/x;

    move-result-object v5

    invoke-direct {v11, v12, v5}, LG/r0;-><init>(Ljava/lang/String;[LG/x;)V

    aput-object v11, v6, v10

    iget-object v5, v1, LU/T;->z:[LU/Z;

    aget-object v5, v5, v10

    iget-wide v11, v1, LU/T;->K:J

    monitor-enter v5

    :try_start_1
    iget-wide v13, v5, LU/Z;->u:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v13, v11, v13

    if-nez v13, :cond_15

    monitor-exit v5

    move/from16 v16, v10

    goto :goto_b

    :cond_15
    :try_start_2
    iput-wide v11, v5, LU/Z;->u:J

    iput v4, v5, LU/Z;->x:I

    iput v4, v5, LU/Z;->y:I

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v13, v11, v13

    if-eqz v13, :cond_16

    iget-wide v13, v5, LU/Z;->w:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_17

    :cond_16
    move/from16 v16, v10

    goto :goto_a

    :cond_17
    move/from16 v11, v17

    :goto_9
    iget v12, v5, LU/Z;->p:I

    if-ge v11, v12, :cond_16

    invoke-virtual {v5, v11}, LU/Z;->k(I)I

    move-result v12

    iget v13, v5, LU/Z;->q:I

    add-int/2addr v13, v11

    iget-object v14, v5, LU/Z;->n:[J

    move/from16 v16, v10

    aget-wide v9, v14, v12

    iget-object v14, v5, LU/Z;->m:[I

    aget v12, v14, v12

    invoke-virtual {v5, v13, v12, v9, v10}, LU/Z;->s(IIJ)V

    iget v9, v5, LU/Z;->x:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v9, v4, :cond_18

    goto :goto_a

    :cond_18
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v16

    const/4 v9, 0x1

    goto :goto_9

    :goto_a
    monitor-exit v5

    :goto_b
    add-int/lit8 v10, v16, 0x1

    move/from16 v5, v17

    const/4 v9, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_19
    new-instance v0, LB0/b;

    new-instance v4, LU/l0;

    invoke-direct {v4, v6}, LU/l0;-><init>([LG/r0;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, LB0/b;->e:Ljava/lang/Object;

    iput-object v7, v0, LB0/b;->f:Ljava/lang/Object;

    iget v4, v4, LU/l0;->a:I

    new-array v5, v4, [Z

    iput-object v5, v0, LB0/b;->g:Ljava/lang/Object;

    new-array v4, v4, [Z

    iput-object v4, v0, LB0/b;->h:Ljava/lang/Object;

    iput-object v0, v1, LU/T;->F:LB0/b;

    iget-boolean v0, v1, LU/T;->E:Z

    if-eqz v0, :cond_1a

    iget-wide v4, v1, LU/T;->H:J

    cmp-long v0, v4, v11

    if-nez v0, :cond_1a

    iput-wide v2, v1, LU/T;->H:J

    new-instance v0, LU/N;

    iget-object v2, v1, LU/T;->G:Lb0/z;

    invoke-direct {v0, v1, v2}, LU/N;-><init>(LU/T;Lb0/z;)V

    iput-object v0, v1, LU/T;->G:Lb0/z;

    :cond_1a
    iget-object v0, v1, LU/T;->k:LU/W;

    iget-wide v2, v1, LU/T;->H:J

    iget-object v4, v1, LU/T;->G:Lb0/z;

    iget-boolean v5, v1, LU/T;->I:Z

    invoke-virtual {v0, v2, v3, v4, v5}, LU/W;->u(JLb0/z;Z)V

    const/4 v15, 0x1

    iput-boolean v15, v1, LU/T;->C:Z

    iget-object v0, v1, LU/T;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, LU/x;->c(LU/y;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1b
    :goto_c
    return-void
.end method
