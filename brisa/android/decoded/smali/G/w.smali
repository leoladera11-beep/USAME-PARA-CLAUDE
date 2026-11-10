.class public final LG/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:I

.field public C:Z

.field public D:F

.field public E:[B

.field public F:I

.field public G:LG/n;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lu1/P;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:LG/V;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Ljava/util/List;

.field public s:LG/s;

.field public t:J

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lu1/P;->f:Lu1/N;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    iput-object v0, p0, LG/w;->c:Lu1/P;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LG/w;->g:F

    const/4 v1, -0x1

    iput v1, p0, LG/w;->i:I

    iput v1, p0, LG/w;->j:I

    iput v1, p0, LG/w;->p:I

    iput v1, p0, LG/w;->q:I

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, LG/w;->t:J

    iput v1, p0, LG/w;->v:I

    iput v1, p0, LG/w;->w:I

    iput v1, p0, LG/w;->x:I

    iput v1, p0, LG/w;->y:I

    iput v1, p0, LG/w;->z:I

    iput v0, p0, LG/w;->A:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LG/w;->D:F

    iput v1, p0, LG/w;->F:I

    iput v1, p0, LG/w;->H:I

    iput v1, p0, LG/w;->I:I

    iput v1, p0, LG/w;->J:I

    iput v1, p0, LG/w;->K:I

    iput v1, p0, LG/w;->L:I

    iput v1, p0, LG/w;->O:I

    const/4 v0, 0x1

    iput v0, p0, LG/w;->P:I

    iput v1, p0, LG/w;->Q:I

    iput v1, p0, LG/w;->R:I

    const/4 v0, 0x0

    iput v0, p0, LG/w;->S:I

    iput v0, p0, LG/w;->h:I

    return-void
.end method


# virtual methods
.method public final a()LG/x;
    .locals 1

    new-instance v0, LG/x;

    invoke-direct {v0, p0}, LG/x;-><init>(LG/w;)V

    return-object v0
.end method
