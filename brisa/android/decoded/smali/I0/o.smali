.class public final LI0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb0/G;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public final f:LJ/v;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:LI0/n;

.field public n:LI0/n;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Lb0/G;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/o;->a:Lb0/G;

    iput-boolean p2, p0, LI0/o;->b:Z

    iput-boolean p3, p0, LI0/o;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LI0/o;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LI0/o;->e:Landroid/util/SparseArray;

    new-instance p1, LI0/n;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/o;->m:LI0/n;

    new-instance p1, LI0/n;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/o;->n:LI0/n;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, LI0/o;->g:[B

    new-instance p2, LJ/v;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, LJ/v;-><init>(I[BI)V

    iput-object p2, p0, LI0/o;->f:LJ/v;

    iput-boolean p3, p0, LI0/o;->k:Z

    iput-boolean p3, p0, LI0/o;->o:Z

    iget-object p1, p0, LI0/o;->n:LI0/n;

    iput-boolean p3, p1, LI0/n;->b:Z

    iput-boolean p3, p1, LI0/n;->a:Z

    return-void
.end method
