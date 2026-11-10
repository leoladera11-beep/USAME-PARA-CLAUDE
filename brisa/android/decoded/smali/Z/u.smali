.class public final LZ/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LZ/s;

.field public final c:Landroid/util/SparseArray;

.field public final d:Z

.field public final e:LZ/e;

.field public final f:LJ/M;

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final h:J

.field public final i:LZ/z;

.field public j:LJ/Q;

.field public k:LJ/O;

.field public l:Landroid/util/Pair;

.field public m:I

.field public n:I

.field public o:J

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LZ/p;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LZ/p;->a:Landroid/content/Context;

    iput-object v0, p0, LZ/u;->a:Landroid/content/Context;

    new-instance v0, LJ/Q;

    invoke-direct {v0}, LJ/Q;-><init>()V

    iput-object v0, p0, LZ/u;->j:LJ/Q;

    iget-object v0, p1, LZ/p;->c:LZ/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, LZ/u;->b:LZ/s;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LZ/u;->c:Landroid/util/SparseArray;

    sget-object v0, Lu1/P;->f:Lu1/N;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    iget-boolean v0, p1, LZ/p;->d:Z

    iput-boolean v0, p0, LZ/u;->d:Z

    iget-object v0, p1, LZ/p;->e:LJ/M;

    iput-object v0, p0, LZ/u;->f:LJ/M;

    iget-wide v1, p1, LZ/p;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    neg-long v1, v1

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    iput-wide v1, p0, LZ/u;->h:J

    iget-object v1, p1, LZ/p;->h:LZ/z;

    iput-object v1, p0, LZ/u;->i:LZ/z;

    new-instance v2, LZ/e;

    iget-object p1, p1, LZ/p;->b:LZ/y;

    invoke-direct {v2, p1, v1, v0}, LZ/e;-><init>(LZ/y;LZ/z;LJ/M;)V

    iput-object v2, p0, LZ/u;->e:LZ/e;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, LZ/u;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, LG/w;

    invoke-direct {p1}, LG/w;-><init>()V

    invoke-virtual {p1}, LG/w;->a()LG/x;

    iput-wide v3, p0, LZ/u;->o:J

    const/4 p1, -0x1

    iput p1, p0, LZ/u;->p:I

    const/4 p1, 0x0

    iput p1, p0, LZ/u;->n:I

    return-void
.end method
