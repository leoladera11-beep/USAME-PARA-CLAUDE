.class public final Lv0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# static fields
.field public static final N:[B

.field public static final O:LG/x;


# instance fields
.field public A:Lv0/i;

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Lb0/p;

.field public H:[Lb0/G;

.field public I:[Lb0/G;

.field public J:Z

.field public K:Z

.field public L:J

.field public M:J

.field public final a:Ly0/k;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:LJ/D;

.field public final f:LJ/D;

.field public final g:LJ/D;

.field public final h:[B

.field public final i:LJ/D;

.field public final j:LW0/c;

.field public final k:LJ/D;

.field public final l:Ljava/util/ArrayDeque;

.field public final m:Ljava/util/ArrayDeque;

.field public final n:LJ/c;

.field public final o:La1/g;

.field public p:Lu1/C0;

.field public q:I

.field public r:I

.field public s:J

.field public t:I

.field public u:LJ/D;

.field public v:J

.field public w:I

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lv0/j;->N:[B

    new-instance v0, LG/w;

    invoke-direct {v0}, LG/w;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-static {v1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LG/w;->o:Ljava/lang/String;

    new-instance v1, LG/x;

    invoke-direct {v1, v0}, LG/x;-><init>(LG/w;)V

    sput-object v1, Lv0/j;->O:LG/x;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Ly0/k;I)V
    .locals 2

    sget-object v0, Lu1/P;->f:Lu1/N;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/j;->a:Ly0/k;

    iput p2, p0, Lv0/j;->b:I

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv0/j;->c:Ljava/util/List;

    new-instance p1, LW0/c;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, LW0/c;-><init>(I)V

    iput-object p1, p0, Lv0/j;->j:LW0/c;

    new-instance p1, LJ/D;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, LJ/D;-><init>(I)V

    iput-object p1, p0, Lv0/j;->k:LJ/D;

    new-instance p1, LJ/D;

    sget-object v1, LK/t;->a:[B

    invoke-direct {p1, v1}, LJ/D;-><init>([B)V

    iput-object p1, p0, Lv0/j;->e:LJ/D;

    new-instance p1, LJ/D;

    const/4 v1, 0x6

    invoke-direct {p1, v1}, LJ/D;-><init>(I)V

    iput-object p1, p0, Lv0/j;->f:LJ/D;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Lv0/j;->g:LJ/D;

    new-array p1, p2, [B

    iput-object p1, p0, Lv0/j;->h:[B

    new-instance p2, LJ/D;

    invoke-direct {p2, p1}, LJ/D;-><init>([B)V

    iput-object p2, p0, Lv0/j;->i:LJ/D;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lv0/j;->l:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lv0/j;->m:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lv0/j;->d:Landroid/util/SparseArray;

    iput-object v0, p0, Lv0/j;->p:Lu1/C0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lv0/j;->y:J

    iput-wide p1, p0, Lv0/j;->x:J

    iput-wide p1, p0, Lv0/j;->z:J

    sget-object p1, Lb0/p;->d:Lcom/brisa/local/j;

    iput-object p1, p0, Lv0/j;->G:Lb0/p;

    const/4 p1, 0x0

    new-array p2, p1, [Lb0/G;

    iput-object p2, p0, Lv0/j;->H:[Lb0/G;

    new-array p1, p1, [Lb0/G;

    iput-object p1, p0, Lv0/j;->I:[Lb0/G;

    new-instance p1, LJ/c;

    new-instance p2, Lv0/f;

    invoke-direct {p2, p0}, Lv0/f;-><init>(Lv0/j;)V

    invoke-direct {p1, p2}, LJ/c;-><init>(LK/z;)V

    iput-object p1, p0, Lv0/j;->n:LJ/c;

    new-instance p1, La1/g;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, La1/g;-><init>(I)V

    iput-object p1, p0, Lv0/j;->o:La1/g;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lv0/j;->L:J

    iput-wide p1, p0, Lv0/j;->M:J

    return-void
.end method

.method public static h(Ljava/util/List;)LG/s;
    .locals 9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK/e;

    iget v6, v5, LK/f;->f:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v5, v5, LK/e;->g:LJ/D;

    iget-object v5, v5, LJ/D;->a:[B

    invoke-static {v5}, Lv0/r;->h([B)LN/Y;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    iget-object v6, v6, LN/Y;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v5, v6}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v7, LG/r;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v1, v8, v5}, LG/r;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object v1

    :cond_5
    new-instance p0, LG/s;

    new-array v0, v2, [LG/r;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG/r;

    invoke-direct {p0, v1, v2, v0}, LG/s;-><init>(Ljava/lang/String;Z[LG/r;)V

    return-object p0
.end method

.method public static j(LJ/D;ILv0/v;)V
    .locals 5

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, LJ/D;->N(I)V

    invoke-virtual {p0}, LJ/D;->m()I

    move-result p1

    sget-object v0, Lv0/d;->a:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, LJ/D;->E()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Lv0/v;->l:[Z

    iget p1, p2, Lv0/v;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Lv0/v;->e:I

    iget-object v4, p2, Lv0/v;->n:LJ/D;

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Lv0/v;->l:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, LJ/D;->a()I

    move-result p1

    invoke-virtual {v4, p1}, LJ/D;->K(I)V

    iput-boolean v1, p2, Lv0/v;->k:Z

    iput-boolean v1, p2, Lv0/v;->o:Z

    iget-object p1, v4, LJ/D;->a:[B

    iget v1, v4, LJ/D;->c:I

    invoke-virtual {p0, v0, p1, v1}, LJ/D;->k(I[BI)V

    invoke-virtual {v4, v0}, LJ/D;->N(I)V

    iput-boolean v0, p2, Lv0/v;->o:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    invoke-static {p0, p1, v2}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Lv0/v;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object p0

    throw p0
.end method

.method public static k(JLJ/D;)Landroid/util/Pair;
    .locals 22

    move-object/from16 v0, p2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v1

    invoke-static {v1}, Lv0/d;->e(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v7

    if-nez v1, :cond_0

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v3

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v5

    :goto_0
    add-long v5, v5, p0

    move-wide v10, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, LJ/D;->G()J

    move-result-wide v3

    invoke-virtual {v0}, LJ/D;->G()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    sget-object v1, LJ/W;->a:Ljava/lang/String;

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v9}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LJ/D;->O(I)V

    invoke-virtual {v0}, LJ/D;->H()I

    move-result v1

    new-array v14, v1, [I

    new-array v15, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v9, 0x0

    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move v10, v9

    :goto_2
    if-ge v10, v1, :cond_2

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v9

    const/high16 v11, -0x80000000

    and-int/2addr v11, v9

    if-nez v11, :cond_1

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v20

    const v11, 0x7fffffff

    and-int/2addr v9, v11

    aput v9, v14, v10

    aput-wide v16, v15, v10

    aput-wide v18, v6, v10

    add-long v3, v3, v20

    move-object v9, v5

    move-object v11, v6

    const-wide/32 v5, 0xf4240

    move-object/from16 v18, v9

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v2, v11

    move-object/from16 v11, v18

    invoke-static/range {v3 .. v9}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v19, v2, v10

    sub-long v19, v5, v19

    aput-wide v19, v11, v10

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, LJ/D;->O(I)V

    aget v9, v14, v10

    move/from16 p0, v1

    int-to-long v0, v9

    add-long v16, v16, v0

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p0

    move-object/from16 v0, p2

    move-wide/from16 v18, v5

    move-object v5, v11

    move-object v6, v2

    const/4 v2, 0x4

    goto :goto_2

    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_2
    move-object v11, v5

    move-object v2, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lb0/i;

    invoke-direct {v1, v14, v15, v11, v2}, Lb0/i;-><init>([I[J[J[J)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 6

    iget v0, p0, Lv0/j;->b:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    new-instance v1, LH/c;

    iget-object v2, p0, Lv0/j;->a:Ly0/k;

    invoke-direct {v1, p1, v2}, LH/c;-><init>(Lb0/p;Ly0/k;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lv0/j;->G:Lb0/p;

    invoke-virtual {p0}, Lv0/j;->g()V

    const/4 p1, 0x2

    new-array p1, p1, [Lb0/G;

    iput-object p1, p0, Lv0/j;->H:[Lb0/G;

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv0/j;->G:Lb0/p;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v0, p0, Lv0/j;->H:[Lb0/G;

    invoke-static {p1, v0}, LJ/W;->I(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lb0/G;

    iput-object p1, p0, Lv0/j;->H:[Lb0/G;

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lv0/j;->O:LG/x;

    invoke-interface {v4, v5}, Lb0/G;->b(LG/x;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lv0/j;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lb0/G;

    iput-object v0, p0, Lv0/j;->I:[Lb0/G;

    :goto_2
    iget-object v0, p0, Lv0/j;->I:[Lb0/G;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lv0/j;->G:Lb0/p;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/x;

    invoke-interface {v0, v1}, Lb0/G;->b(LG/x;)V

    iget-object v1, p0, Lv0/j;->I:[Lb0/G;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final c(JJ)V
    .locals 3

    iget-object p1, p0, Lv0/j;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/i;

    invoke-virtual {v2}, Lv0/i;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv0/j;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lv0/j;->w:I

    iget-object p1, p0, Lv0/j;->n:LJ/c;

    iget-object p1, p1, LJ/c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    iput-wide p3, p0, Lv0/j;->x:J

    iget-object p1, p0, Lv0/j;->l:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lv0/j;->M:J

    invoke-virtual {p0}, Lv0/j;->g()V

    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lv0/r;->l(Lb0/o;Z)Lb0/D;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    :goto_0
    iput-object v1, p0, Lv0/j;->p:Lu1/C0;

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :goto_0
    move-object/from16 v2, p2

    :cond_0
    :goto_1
    iget v3, v1, Lv0/j;->q:I

    iget-object v6, v1, Lv0/j;->l:Ljava/util/ArrayDeque;

    iget-object v15, v1, Lv0/j;->n:LJ/c;

    const-wide/32 v16, 0x7fffffff

    iget-object v7, v1, Lv0/j;->o:La1/g;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x8

    iget v9, v1, Lv0/j;->b:I

    const-wide/16 v22, 0x10

    iget-object v11, v1, Lv0/j;->d:Landroid/util/SparseArray;

    const-wide/16 v24, 0x1

    iget-object v13, v1, Lv0/j;->i:LJ/D;

    const/4 v14, 0x5

    const/4 v4, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_62

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v31, 0x0

    iget-object v5, v1, Lv0/j;->m:Ljava/util/ArrayDeque;

    const/16 v32, 0x8

    const-string v12, "FragmentedMp4Extractor"

    if-eq v3, v8, :cond_54

    if-eq v3, v4, :cond_4f

    move/from16 v33, v4

    const/4 v4, 0x6

    if-eq v3, v14, :cond_49

    if-eq v3, v4, :cond_2e

    iget-object v3, v1, Lv0/j;->A:Lv0/i;

    if-nez v3, :cond_a

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v35, v4

    move/from16 v34, v14

    move/from16 v4, v31

    const/4 v14, 0x0

    const-wide v26, 0x7fffffffffffffffL

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lv0/i;

    move/from16 v37, v8

    iget-boolean v8, v7, Lv0/i;->n:Z

    iget-object v6, v7, Lv0/i;->b:Lv0/v;

    if-nez v8, :cond_1

    iget v10, v7, Lv0/i;->f:I

    move/from16 v16, v3

    iget-object v3, v7, Lv0/i;->d:Lv0/w;

    iget v3, v3, Lv0/w;->b:I

    if-eq v10, v3, :cond_4

    goto :goto_3

    :cond_1
    move/from16 v16, v3

    :goto_3
    if-eqz v8, :cond_2

    iget v3, v7, Lv0/i;->h:I

    iget v10, v6, Lv0/v;->d:I

    if-ne v3, v10, :cond_2

    goto :goto_5

    :cond_2
    if-nez v8, :cond_3

    iget-object v3, v7, Lv0/i;->d:Lv0/w;

    iget-object v3, v3, Lv0/w;->c:[J

    iget v6, v7, Lv0/i;->f:I

    aget-wide v17, v3, v6

    goto :goto_4

    :cond_3
    iget-object v3, v6, Lv0/v;->f:[J

    iget v6, v7, Lv0/i;->h:I

    aget-wide v17, v3, v6

    :goto_4
    cmp-long v3, v17, v26

    if-gez v3, :cond_4

    move-object v14, v7

    move-wide/from16 v26, v17

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move/from16 v8, v37

    goto :goto_2

    :cond_5
    move/from16 v37, v8

    if-nez v14, :cond_7

    iget-wide v3, v1, Lv0/j;->v:J

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    if-ltz v3, :cond_6

    invoke-interface {v0, v3}, Lb0/o;->p(I)V

    invoke-virtual {v1}, Lv0/j;->g()V

    goto/16 :goto_1

    :cond_6
    const-string v0, "Offset to end of mdat was negative."

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_7
    iget-boolean v2, v14, Lv0/i;->n:Z

    if-nez v2, :cond_8

    iget-object v2, v14, Lv0/i;->d:Lv0/w;

    iget-object v2, v2, Lv0/w;->c:[J

    iget v3, v14, Lv0/i;->f:I

    aget-wide v3, v2, v3

    goto :goto_6

    :cond_8
    iget-object v2, v14, Lv0/i;->b:Lv0/v;

    iget-object v2, v2, Lv0/v;->f:[J

    iget v3, v14, Lv0/i;->h:I

    aget-wide v3, v2, v3

    :goto_6
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v6

    sub-long/2addr v3, v6

    long-to-int v2, v3

    if-gez v2, :cond_9

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v12, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v31

    :cond_9
    invoke-interface {v0, v2}, Lb0/o;->p(I)V

    iput-object v14, v1, Lv0/j;->A:Lv0/i;

    move-object v3, v14

    goto :goto_7

    :cond_a
    move/from16 v35, v4

    move/from16 v37, v8

    move/from16 v34, v14

    :goto_7
    iget-object v2, v3, Lv0/i;->a:Lb0/G;

    iget-object v4, v3, Lv0/i;->b:Lv0/v;

    iget v6, v1, Lv0/j;->q:I

    const-string v7, "video/hevc"

    const-string v8, "video/avc"

    const/4 v10, 0x3

    if-ne v6, v10, :cond_15

    iget-boolean v6, v3, Lv0/i;->n:Z

    if-nez v6, :cond_b

    iget-object v6, v3, Lv0/i;->d:Lv0/w;

    iget-object v6, v6, Lv0/w;->d:[I

    iget v10, v3, Lv0/i;->f:I

    aget v6, v6, v10

    goto :goto_8

    :cond_b
    iget-object v6, v4, Lv0/v;->h:[I

    iget v10, v3, Lv0/i;->f:I

    aget v6, v6, v10

    :goto_8
    iput v6, v1, Lv0/j;->B:I

    iget-object v6, v3, Lv0/i;->d:Lv0/w;

    iget-object v6, v6, Lv0/w;->a:Lv0/t;

    iget-object v6, v6, Lv0/t;->g:LG/x;

    iget-object v10, v6, LG/x;->p:Ljava/lang/String;

    invoke-static {v10, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    and-int/lit8 v6, v9, 0x40

    if-eqz v6, :cond_c

    :goto_9
    move/from16 v6, v37

    goto :goto_a

    :cond_c
    move/from16 v6, v31

    goto :goto_a

    :cond_d
    iget-object v6, v6, LG/x;->p:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    and-int/lit16 v6, v9, 0x80

    if-eqz v6, :cond_c

    goto :goto_9

    :goto_a
    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, v1, Lv0/j;->E:Z

    iget v6, v3, Lv0/i;->f:I

    iget v9, v3, Lv0/i;->i:I

    if-ge v6, v9, :cond_12

    iget v2, v1, Lv0/j;->B:I

    invoke-interface {v0, v2}, Lb0/o;->p(I)V

    invoke-virtual {v3}, Lv0/i;->b()Lv0/u;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_b

    :cond_e
    iget-object v2, v4, Lv0/v;->n:LJ/D;

    iget v0, v0, Lv0/u;->d:I

    if-eqz v0, :cond_f

    invoke-virtual {v2, v0}, LJ/D;->O(I)V

    :cond_f
    iget v0, v3, Lv0/i;->f:I

    iget-boolean v5, v4, Lv0/v;->k:Z

    if-eqz v5, :cond_10

    iget-object v4, v4, Lv0/v;->l:[Z

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, LJ/D;->H()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, LJ/D;->O(I)V

    :cond_10
    :goto_b
    invoke-virtual {v3}, Lv0/i;->c()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v2, 0x0

    iput-object v2, v1, Lv0/j;->A:Lv0/i;

    :cond_11
    const/4 v10, 0x3

    iput v10, v1, Lv0/j;->q:I

    return v31

    :cond_12
    iget-object v6, v3, Lv0/i;->d:Lv0/w;

    iget-object v6, v6, Lv0/w;->a:Lv0/t;

    iget v6, v6, Lv0/t;->h:I

    move/from16 v9, v37

    if-ne v6, v9, :cond_13

    iget v6, v1, Lv0/j;->B:I

    add-int/lit8 v6, v6, -0x8

    iput v6, v1, Lv0/j;->B:I

    move/from16 v6, v32

    invoke-interface {v0, v6}, Lb0/o;->p(I)V

    :cond_13
    iget-object v6, v3, Lv0/i;->d:Lv0/w;

    iget-object v6, v6, Lv0/w;->a:Lv0/t;

    iget-object v6, v6, Lv0/t;->g:LG/x;

    iget-object v6, v6, LG/x;->p:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget v6, v1, Lv0/j;->B:I

    const/4 v9, 0x7

    invoke-virtual {v3, v6, v9}, Lv0/i;->d(II)I

    move-result v6

    iput v6, v1, Lv0/j;->C:I

    iget v6, v1, Lv0/j;->B:I

    invoke-static {v6, v13}, Lb0/a;->f(ILJ/D;)V

    invoke-interface {v2, v9, v13}, Lb0/G;->a(ILJ/D;)V

    iget v6, v1, Lv0/j;->C:I

    add-int/2addr v6, v9

    iput v6, v1, Lv0/j;->C:I

    move/from16 v9, v31

    goto :goto_c

    :cond_14
    iget v6, v1, Lv0/j;->B:I

    move/from16 v9, v31

    invoke-virtual {v3, v6, v9}, Lv0/i;->d(II)I

    move-result v6

    iput v6, v1, Lv0/j;->C:I

    :goto_c
    iget v6, v1, Lv0/j;->B:I

    iget v10, v1, Lv0/j;->C:I

    add-int/2addr v6, v10

    iput v6, v1, Lv0/j;->B:I

    const/4 v6, 0x4

    iput v6, v1, Lv0/j;->q:I

    iput v9, v1, Lv0/j;->D:I

    :cond_15
    iget-object v6, v3, Lv0/i;->d:Lv0/w;

    iget-object v9, v6, Lv0/w;->a:Lv0/t;

    iget-boolean v10, v3, Lv0/i;->n:Z

    if-nez v10, :cond_16

    iget-object v4, v6, Lv0/w;->f:[J

    iget v6, v3, Lv0/i;->f:I

    aget-wide v10, v4, v6

    goto :goto_d

    :cond_16
    iget v6, v3, Lv0/i;->f:I

    iget-object v4, v4, Lv0/v;->i:[J

    aget-wide v10, v4, v6

    :goto_d
    iget v4, v9, Lv0/t;->k:I

    iget-object v6, v9, Lv0/t;->g:LG/x;

    if-eqz v4, :cond_25

    iget-object v9, v1, Lv0/j;->f:LJ/D;

    iget-object v12, v9, LJ/D;->a:[B

    const/16 v31, 0x0

    aput-byte v31, v12, v31

    const/16 v37, 0x1

    aput-byte v31, v12, v37

    aput-byte v31, v12, v33

    rsub-int/lit8 v13, v4, 0x4

    :goto_e
    iget v14, v1, Lv0/j;->C:I

    move/from16 v16, v4

    iget v4, v1, Lv0/j;->B:I

    if-ge v14, v4, :cond_27

    iget v4, v1, Lv0/j;->D:I

    if-nez v4, :cond_20

    iget-object v4, v1, Lv0/j;->I:[Lb0/G;

    array-length v4, v4

    if-gtz v4, :cond_17

    iget-boolean v4, v1, Lv0/j;->E:Z

    if-nez v4, :cond_18

    :cond_17
    invoke-static {v6}, LK/t;->i(LG/x;)I

    move-result v4

    add-int v14, v16, v4

    move/from16 p2, v4

    iget v4, v1, Lv0/j;->B:I

    move/from16 v17, v4

    iget v4, v1, Lv0/j;->C:I

    sub-int v4, v17, v4

    if-gt v14, v4, :cond_18

    move/from16 v4, p2

    goto :goto_f

    :cond_18
    const/4 v4, 0x0

    :goto_f
    add-int v14, v16, v4

    invoke-interface {v0, v12, v13, v14}, Lb0/o;->readFully([BII)V

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, LJ/D;->N(I)V

    invoke-virtual {v9}, LJ/D;->m()I

    move-result v17

    if-ltz v17, :cond_1f

    sub-int v14, v17, v4

    iput v14, v1, Lv0/j;->D:I

    iget-object v14, v1, Lv0/j;->e:LJ/D;

    move/from16 p2, v13

    const/4 v13, 0x0

    invoke-virtual {v14, v13}, LJ/D;->N(I)V

    const/4 v13, 0x4

    invoke-interface {v2, v13, v14}, Lb0/G;->a(ILJ/D;)V

    iget v14, v1, Lv0/j;->C:I

    add-int/2addr v14, v13

    iput v14, v1, Lv0/j;->C:I

    iget v13, v1, Lv0/j;->B:I

    add-int v13, v13, p2

    iput v13, v1, Lv0/j;->B:I

    iget-object v13, v1, Lv0/j;->I:[Lb0/G;

    array-length v13, v13

    if-lez v13, :cond_1d

    if-lez v4, :cond_1d

    invoke-static {v6}, LK/t;->d(LG/x;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_19

    goto :goto_13

    :cond_19
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_10
    const/4 v13, -0x1

    goto :goto_11

    :sswitch_0
    const-string v14, "video/vvc"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    goto :goto_10

    :cond_1a
    move/from16 v13, v33

    goto :goto_11

    :sswitch_1
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v13, 0x1

    goto :goto_11

    :sswitch_2
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v13, 0x0

    :goto_11
    packed-switch v13, :pswitch_data_0

    goto :goto_13

    :pswitch_0
    aget-byte v13, v12, v34

    and-int/lit16 v13, v13, 0xf8

    const/16 v38, 0x3

    shr-int/lit8 v13, v13, 0x3

    const/16 v14, 0x17

    if-ne v13, v14, :cond_1d

    goto :goto_12

    :pswitch_1
    const/16 v36, 0x4

    aget-byte v13, v12, v36

    and-int/lit8 v13, v13, 0x1f

    move/from16 v14, v35

    if-ne v13, v14, :cond_1d

    goto :goto_12

    :pswitch_2
    const/16 v36, 0x4

    aget-byte v13, v12, v36

    and-int/lit8 v13, v13, 0x7e

    const/16 v37, 0x1

    shr-int/lit8 v13, v13, 0x1

    const/16 v14, 0x27

    if-ne v13, v14, :cond_1d

    :goto_12
    const/4 v13, 0x1

    goto :goto_14

    :cond_1d
    :goto_13
    const/4 v13, 0x0

    :goto_14
    iput-boolean v13, v1, Lv0/j;->F:Z

    invoke-interface {v2, v4, v9}, Lb0/G;->a(ILJ/D;)V

    iget v13, v1, Lv0/j;->C:I

    add-int/2addr v13, v4

    iput v13, v1, Lv0/j;->C:I

    if-lez v4, :cond_1e

    iget-boolean v13, v1, Lv0/j;->E:Z

    if-nez v13, :cond_1e

    invoke-static {v12, v4, v6}, LK/t;->g([BILG/x;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    iput-boolean v4, v1, Lv0/j;->E:Z

    :cond_1e
    move/from16 v13, p2

    move/from16 v4, v16

    :goto_15
    const/16 v35, 0x6

    goto/16 :goto_e

    :cond_1f
    const-string v0, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_20
    move/from16 p2, v13

    iget-boolean v13, v1, Lv0/j;->F:Z

    if-eqz v13, :cond_24

    iget-object v13, v1, Lv0/j;->g:LJ/D;

    invoke-virtual {v13, v4}, LJ/D;->K(I)V

    iget-object v4, v13, LJ/D;->a:[B

    iget v14, v1, Lv0/j;->D:I

    move-object/from16 v17, v7

    const/4 v7, 0x0

    invoke-interface {v0, v4, v7, v14}, Lb0/o;->readFully([BII)V

    iget v4, v1, Lv0/j;->D:I

    invoke-interface {v2, v4, v13}, Lb0/G;->a(ILJ/D;)V

    iget v4, v1, Lv0/j;->D:I

    iget-object v14, v13, LJ/D;->a:[B

    move/from16 v18, v4

    iget v4, v13, LJ/D;->c:I

    invoke-static {v14, v4}, LK/t;->s([BI)I

    move-result v4

    invoke-virtual {v13, v7}, LJ/D;->N(I)V

    invoke-virtual {v13, v4}, LJ/D;->M(I)V

    iget v4, v6, LG/x;->r:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_21

    iget v4, v15, LJ/c;->a:I

    if-eqz v4, :cond_22

    invoke-virtual {v15, v7}, LJ/c;->f(I)V

    goto :goto_16

    :cond_21
    iget v7, v15, LJ/c;->a:I

    if-eq v7, v4, :cond_22

    invoke-virtual {v15, v4}, LJ/c;->f(I)V

    :cond_22
    :goto_16
    invoke-virtual {v15, v10, v11, v13}, LJ/c;->a(JLJ/D;)V

    invoke-virtual {v3}, Lv0/i;->a()I

    move-result v4

    const/16 v36, 0x4

    and-int/lit8 v4, v4, 0x4

    const/4 v13, 0x0

    if-eqz v4, :cond_23

    invoke-virtual {v15, v13}, LJ/c;->b(I)V

    :cond_23
    move/from16 v4, v18

    goto :goto_17

    :cond_24
    move-object/from16 v17, v7

    const/4 v13, 0x0

    invoke-interface {v2, v0, v4, v13}, Lb0/G;->g(LG/o;IZ)I

    move-result v4

    :goto_17
    iget v7, v1, Lv0/j;->C:I

    add-int/2addr v7, v4

    iput v7, v1, Lv0/j;->C:I

    iget v7, v1, Lv0/j;->D:I

    sub-int/2addr v7, v4

    iput v7, v1, Lv0/j;->D:I

    move/from16 v13, p2

    move/from16 v4, v16

    move-object/from16 v7, v17

    goto :goto_15

    :cond_25
    iget-object v4, v3, Lv0/i;->l:LG/x;

    if-eqz v4, :cond_26

    iget-object v6, v6, LG/x;->p:Ljava/lang/String;

    invoke-static {v6}, Lb0/a;->n(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget v6, v1, Lv0/j;->B:I

    iget-object v7, v3, Lv0/i;->m:LG/x;

    invoke-static {v0, v6, v7}, Lb0/a;->y(Lb0/o;ILG/x;)LG/x;

    move-result-object v6

    iput-object v6, v3, Lv0/i;->m:LG/x;

    invoke-virtual {v6}, LG/x;->a()LG/w;

    move-result-object v6

    iget-object v4, v4, LG/x;->t:LG/s;

    iput-object v4, v6, LG/w;->s:LG/s;

    new-instance v4, LG/x;

    invoke-direct {v4, v6}, LG/x;-><init>(LG/w;)V

    invoke-interface {v2, v4}, Lb0/G;->b(LG/x;)V

    const/4 v4, 0x0

    iput-object v4, v3, Lv0/i;->l:LG/x;

    :cond_26
    :goto_18
    iget v4, v1, Lv0/j;->C:I

    iget v6, v1, Lv0/j;->B:I

    if-ge v4, v6, :cond_27

    sub-int/2addr v6, v4

    const/4 v13, 0x0

    invoke-interface {v2, v0, v6, v13}, Lb0/G;->g(LG/o;IZ)I

    move-result v4

    iget v6, v1, Lv0/j;->C:I

    add-int/2addr v6, v4

    iput v6, v1, Lv0/j;->C:I

    goto :goto_18

    :cond_27
    invoke-virtual {v3}, Lv0/i;->a()I

    move-result v0

    iget-boolean v4, v1, Lv0/j;->E:Z

    if-nez v4, :cond_28

    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    :cond_28
    move/from16 v19, v0

    invoke-virtual {v3}, Lv0/i;->b()Lv0/u;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, v0, Lv0/u;->c:Lb0/F;

    move-object/from16 v22, v0

    goto :goto_19

    :cond_29
    const/16 v22, 0x0

    :goto_19
    iget v0, v1, Lv0/j;->B:I

    const/16 v21, 0x0

    move/from16 v20, v0

    move-object/from16 v16, v2

    move-wide/from16 v17, v10

    invoke-interface/range {v16 .. v22}, Lb0/G;->f(JIIILb0/F;)V

    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/g;

    iget v2, v1, Lv0/j;->w:I

    iget v4, v0, Lv0/g;->c:I

    sub-int/2addr v2, v4

    iput v2, v1, Lv0/j;->w:I

    iget-wide v6, v0, Lv0/g;->a:J

    iget-boolean v2, v0, Lv0/g;->b:Z

    if-eqz v2, :cond_2b

    add-long v6, v6, v17

    :cond_2b
    move-wide v9, v6

    iget-object v2, v1, Lv0/j;->H:[Lb0/G;

    array-length v4, v2

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v4, :cond_2a

    aget-object v8, v2, v6

    iget v12, v0, Lv0/g;->c:I

    iget v13, v1, Lv0/j;->w:I

    const/4 v14, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v8 .. v14}, Lb0/G;->f(JIIILb0/F;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2c
    invoke-virtual {v3}, Lv0/i;->c()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v2, 0x0

    iput-object v2, v1, Lv0/j;->A:Lv0/i;

    :cond_2d
    const/4 v10, 0x3

    iput v10, v1, Lv0/j;->q:I

    const/4 v14, 0x0

    return v14

    :cond_2e
    move/from16 v14, v31

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v3

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/16 v6, 0x8

    invoke-virtual {v13, v6}, LJ/D;->K(I)V

    iget-object v5, v13, LJ/D;->a:[B

    const/4 v9, 0x1

    invoke-interface {v0, v5, v14, v6, v9}, Lb0/o;->w([BIIZ)Z

    move-result v5

    if-nez v5, :cond_2f

    new-instance v3, Lb0/s;

    iget-wide v4, v1, Lv0/j;->y:J

    iget-wide v6, v1, Lv0/j;->M:J

    invoke-direct {v3, v4, v5, v6, v7}, Lb0/s;-><init>(JJ)V

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    goto/16 :goto_2b

    :cond_2f
    invoke-virtual {v13, v14}, LJ/D;->N(I)V

    invoke-virtual {v13}, LJ/D;->m()I

    move-result v5

    invoke-virtual {v13}, LJ/D;->m()I

    move-result v6

    const v7, 0x6d667261

    if-eq v6, v7, :cond_30

    new-instance v3, Lb0/s;

    iget-wide v4, v1, Lv0/j;->y:J

    iget-wide v6, v1, Lv0/j;->M:J

    invoke-direct {v3, v4, v5, v6, v7}, Lb0/s;-><init>(JJ)V

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    goto/16 :goto_2b

    :cond_30
    new-instance v6, LJ/D;

    long-to-int v3, v3

    invoke-direct {v6, v3}, LJ/D;-><init>(I)V

    iget-object v4, v6, LJ/D;->a:[B

    const/4 v13, 0x0

    invoke-interface {v0, v4, v13, v3}, Lb0/o;->readFully([BII)V

    const/4 v9, 0x1

    if-ne v5, v9, :cond_31

    const/16 v3, 0x10

    goto :goto_1b

    :cond_31
    const/16 v3, 0x8

    :goto_1b
    invoke-virtual {v6, v3}, LJ/D;->N(I)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_1c
    invoke-virtual {v6}, LJ/D;->a()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_40

    iget v5, v6, LJ/D;->b:I

    invoke-virtual {v6}, LJ/D;->C()J

    move-result-wide v8

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v10

    cmp-long v12, v8, v24

    if-nez v12, :cond_33

    invoke-virtual {v6}, LJ/D;->a()I

    move-result v8

    if-ge v8, v7, :cond_32

    goto/16 :goto_26

    :cond_32
    invoke-virtual {v6}, LJ/D;->u()J

    move-result-wide v8

    goto :goto_1d

    :cond_33
    cmp-long v7, v8, v18

    if-nez v7, :cond_34

    iget v7, v6, LJ/D;->c:I

    int-to-long v7, v7

    int-to-long v13, v5

    sub-long v8, v7, v13

    :cond_34
    :goto_1d
    if-nez v12, :cond_35

    const/16 v7, 0x10

    goto :goto_1e

    :cond_35
    const/16 v7, 0x8

    :goto_1e
    int-to-long v12, v7

    cmp-long v12, v8, v12

    if-ltz v12, :cond_40

    iget v12, v6, LJ/D;->c:I

    int-to-long v12, v12

    int-to-long v14, v5

    sub-long/2addr v12, v14

    cmp-long v5, v8, v12

    if-lez v5, :cond_36

    goto/16 :goto_26

    :cond_36
    const v5, 0x74667261

    if-ne v10, v5, :cond_3f

    add-int/lit8 v7, v7, 0x10

    int-to-long v12, v7

    cmp-long v5, v8, v12

    if-gez v5, :cond_37

    add-long/2addr v14, v8

    long-to-int v5, v14

    invoke-virtual {v6, v5}, LJ/D;->N(I)V

    goto :goto_1c

    :cond_37
    invoke-virtual {v6}, LJ/D;->m()I

    move-result v5

    invoke-static {v5}, Lv0/d;->e(I)I

    move-result v5

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv0/i;

    if-nez v10, :cond_38

    add-long/2addr v14, v8

    long-to-int v5, v14

    invoke-virtual {v6, v5}, LJ/D;->N(I)V

    goto :goto_1c

    :cond_38
    iget-object v10, v10, Lv0/i;->d:Lv0/w;

    iget-object v10, v10, Lv0/w;->a:Lv0/t;

    iget-wide v12, v10, Lv0/t;->c:J

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v10

    shr-int/lit8 v16, v10, 0x4

    const/16 v38, 0x3

    and-int/lit8 v16, v16, 0x3

    shr-int/lit8 v17, v10, 0x2

    and-int/lit8 v17, v17, 0x3

    and-int/lit8 v10, v10, 0x3

    move-wide/from16 v26, v8

    invoke-virtual {v6}, LJ/D;->C()J

    move-result-wide v8

    move/from16 v34, v10

    const/4 v10, 0x1

    if-ne v5, v10, :cond_39

    move-wide/from16 v35, v22

    :goto_1f
    move/from16 v37, v10

    goto :goto_20

    :cond_39
    move-wide/from16 v35, v20

    goto :goto_1f

    :goto_20
    add-int/lit8 v10, v16, 0x1

    move-wide/from16 v43, v12

    int-to-long v12, v10

    add-long v35, v35, v12

    add-int/lit8 v12, v17, 0x1

    move-wide/from16 v16, v14

    int-to-long v13, v12

    add-long v35, v35, v13

    add-int/lit8 v13, v34, 0x1

    int-to-long v14, v13

    add-long v35, v35, v14

    mul-long v35, v35, v8

    invoke-virtual {v6}, LJ/D;->a()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v35, v14

    if-lez v14, :cond_3a

    add-long v14, v16, v26

    long-to-int v5, v14

    invoke-virtual {v6, v5}, LJ/D;->N(I)V

    goto/16 :goto_1c

    :cond_3a
    long-to-int v8, v8

    new-array v9, v8, [J

    new-array v14, v8, [J

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v8, :cond_3e

    move/from16 v34, v8

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3b

    invoke-virtual {v6}, LJ/D;->G()J

    move-result-wide v35

    :goto_22
    move-wide/from16 v39, v35

    goto :goto_23

    :cond_3b
    invoke-virtual {v6}, LJ/D;->C()J

    move-result-wide v35

    goto :goto_22

    :goto_23
    if-ne v5, v8, :cond_3c

    invoke-virtual {v6}, LJ/D;->G()J

    move-result-wide v35

    goto :goto_24

    :cond_3c
    invoke-virtual {v6}, LJ/D;->C()J

    move-result-wide v35

    :goto_24
    add-int v8, v10, v12

    add-int/2addr v8, v13

    invoke-virtual {v6, v8}, LJ/D;->O(I)V

    cmp-long v8, v43, v29

    if-eqz v8, :cond_3d

    const-wide/32 v41, 0xf4240

    sget-object v45, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v39 .. v45}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v39

    :cond_3d
    aput-wide v39, v9, v15

    aput-wide v35, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v34

    goto :goto_21

    :cond_3e
    invoke-virtual {v3, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4, v7, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_25

    :cond_3f
    move-wide/from16 v26, v8

    move-wide/from16 v16, v14

    :goto_25
    add-long v14, v16, v26

    long-to-int v5, v14

    invoke-virtual {v6, v5}, LJ/D;->N(I)V

    goto/16 :goto_1c

    :cond_40
    :goto_26
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_41

    new-instance v3, Lb0/s;

    iget-wide v4, v1, Lv0/j;->y:J

    iget-wide v6, v1, Lv0/j;->M:J

    invoke-direct {v3, v4, v5, v6, v7}, Lb0/s;-><init>(JJ)V

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    goto :goto_2b

    :cond_41
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_27
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_45

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv0/i;

    if-nez v9, :cond_42

    const/4 v14, -0x1

    goto :goto_28

    :cond_42
    iget-object v9, v9, Lv0/i;->d:Lv0/w;

    iget-object v9, v9, Lv0/w;->a:Lv0/t;

    iget v9, v9, Lv0/t;->b:I

    const/4 v14, -0x1

    if-ne v5, v14, :cond_43

    move/from16 v10, v33

    if-ne v9, v10, :cond_43

    move v5, v8

    goto :goto_28

    :cond_43
    if-ne v6, v14, :cond_44

    const/4 v10, 0x1

    if-ne v9, v10, :cond_44

    move v6, v8

    :cond_44
    :goto_28
    add-int/lit8 v7, v7, 0x1

    const/16 v33, 0x2

    goto :goto_27

    :cond_45
    const/4 v14, -0x1

    if-eq v5, v14, :cond_46

    :goto_29
    move/from16 v46, v5

    goto :goto_2a

    :cond_46
    if-eq v6, v14, :cond_47

    move/from16 v46, v6

    goto :goto_2a

    :cond_47
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    goto :goto_29

    :goto_2a
    new-instance v39, Lv0/h;

    iget-wide v5, v1, Lv0/j;->y:J

    iget-wide v7, v1, Lv0/j;->M:J

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-wide/from16 v42, v5

    move-wide/from16 v44, v7

    invoke-direct/range {v39 .. v46}, Lv0/h;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;JJI)V

    move-object/from16 v3, v39

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    :goto_2b
    iget v3, v1, Lv0/j;->q:I

    if-nez v3, :cond_0

    :cond_48
    :goto_2c
    const/16 v37, 0x1

    goto/16 :goto_41

    :cond_49
    const/16 v3, 0x10

    invoke-virtual {v13, v3}, LJ/D;->K(I)V

    iget-object v4, v13, LJ/D;->a:[B

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-interface {v0, v4, v14, v3, v9}, Lb0/o;->f([BIIZ)Z

    move-result v4

    if-nez v4, :cond_4a

    new-instance v3, Lb0/s;

    iget-wide v4, v1, Lv0/j;->y:J

    iget-wide v6, v1, Lv0/j;->M:J

    invoke-direct {v3, v4, v5, v6, v7}, Lb0/s;-><init>(JJ)V

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    goto :goto_2f

    :cond_4a
    invoke-virtual {v13, v14}, LJ/D;->N(I)V

    invoke-virtual {v13}, LJ/D;->m()I

    move-result v4

    invoke-virtual {v13}, LJ/D;->m()I

    move-result v5

    if-ne v4, v3, :cond_4e

    const v3, 0x6d66726f

    if-eq v5, v3, :cond_4b

    goto :goto_2e

    :cond_4b
    const/4 v6, 0x4

    invoke-virtual {v13, v6}, LJ/D;->O(I)V

    invoke-virtual {v13}, LJ/D;->C()J

    move-result-wide v3

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v7, v3, v18

    if-lez v7, :cond_4d

    cmp-long v3, v3, v16

    if-gtz v3, :cond_4d

    cmp-long v3, v5, v18

    if-ltz v3, :cond_4d

    iget-wide v3, v1, Lv0/j;->M:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_4c

    goto :goto_2d

    :cond_4c
    iput-wide v5, v2, Lb0/r;->a:J

    const/4 v14, 0x6

    iput v14, v1, Lv0/j;->q:I

    goto :goto_2f

    :cond_4d
    :goto_2d
    new-instance v3, Lb0/s;

    iget-wide v4, v1, Lv0/j;->y:J

    iget-wide v6, v1, Lv0/j;->M:J

    invoke-direct {v3, v4, v5, v6, v7}, Lb0/s;-><init>(JJ)V

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    goto :goto_2f

    :cond_4e
    :goto_2e
    new-instance v3, Lb0/s;

    iget-wide v4, v1, Lv0/j;->y:J

    iget-wide v6, v1, Lv0/j;->M:J

    invoke-direct {v3, v4, v5, v6, v7}, Lb0/s;-><init>(JJ)V

    invoke-virtual {v1, v3, v2}, Lv0/j;->i(Lb0/z;Lb0/r;)V

    :goto_2f
    iget v3, v1, Lv0/j;->q:I

    const/4 v14, 0x6

    if-eq v3, v14, :cond_48

    if-nez v3, :cond_0

    goto :goto_2c

    :cond_4f
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    :goto_30
    if-ge v4, v3, :cond_51

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv0/i;

    iget-object v8, v8, Lv0/i;->b:Lv0/v;

    iget-boolean v9, v8, Lv0/v;->o:Z

    if-eqz v9, :cond_50

    iget-wide v8, v8, Lv0/v;->c:J

    cmp-long v10, v8, v6

    if-gez v10, :cond_50

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv0/i;

    move-wide v6, v8

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_51
    if-nez v5, :cond_52

    const/4 v10, 0x3

    iput v10, v1, Lv0/j;->q:I

    goto/16 :goto_1

    :cond_52
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v3

    sub-long/2addr v6, v3

    long-to-int v3, v6

    if-ltz v3, :cond_53

    invoke-interface {v0, v3}, Lb0/o;->p(I)V

    iget-object v3, v5, Lv0/i;->b:Lv0/v;

    iget-object v4, v3, Lv0/v;->n:LJ/D;

    iget-object v5, v4, LJ/D;->a:[B

    iget v6, v4, LJ/D;->c:I

    const/4 v13, 0x0

    invoke-interface {v0, v5, v13, v6}, Lb0/o;->readFully([BII)V

    invoke-virtual {v4, v13}, LJ/D;->N(I)V

    iput-boolean v13, v3, Lv0/v;->o:Z

    goto/16 :goto_1

    :cond_53
    const-string v0, "Offset to encryption data was negative."

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_54
    iget-wide v3, v1, Lv0/j;->s:J

    iget v8, v1, Lv0/j;->t:I

    int-to-long v10, v8

    sub-long/2addr v3, v10

    long-to-int v3, v3

    iget-object v4, v1, Lv0/j;->u:LJ/D;

    if-eqz v4, :cond_61

    iget-object v8, v4, LJ/D;->a:[B

    const/16 v10, 0x8

    invoke-interface {v0, v8, v10, v3}, Lb0/o;->readFully([BII)V

    new-instance v3, LK/e;

    iget v8, v1, Lv0/j;->r:I

    invoke-direct {v3, v8, v4}, LK/e;-><init>(ILJ/D;)V

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_55

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LK/d;

    iget-object v4, v4, LK/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    :cond_55
    const v3, 0x73696478

    if-ne v8, v3, :cond_58

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lv0/j;->k(JLJ/D;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lb0/i;

    invoke-virtual {v7, v4}, La1/g;->t(Lb0/i;)V

    iget-object v4, v7, La1/g;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lv0/j;->z:J

    iget-boolean v5, v1, Lv0/j;->K:Z

    if-nez v5, :cond_57

    iget-object v5, v1, Lv0/j;->G:Lb0/p;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_56

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lb0/z;

    goto :goto_31

    :cond_56
    invoke-virtual {v7}, La1/g;->A()Lb0/i;

    move-result-object v3

    :goto_31
    invoke-interface {v5, v3}, Lb0/p;->c(Lb0/z;)V

    iput-boolean v10, v1, Lv0/j;->J:Z

    goto :goto_32

    :cond_57
    const/4 v10, 0x1

    :goto_32
    and-int/lit16 v3, v9, 0x100

    if-eqz v3, :cond_60

    iget-boolean v3, v1, Lv0/j;->K:Z

    if-nez v3, :cond_60

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-le v3, v10, :cond_60

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v3

    iput-wide v3, v1, Lv0/j;->L:J

    goto/16 :goto_37

    :cond_58
    const v3, 0x656d7367

    if-ne v8, v3, :cond_60

    iget-object v3, v1, Lv0/j;->H:[Lb0/G;

    array-length v3, v3

    if-nez v3, :cond_59

    goto/16 :goto_37

    :cond_59
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, LJ/D;->N(I)V

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v3

    invoke-static {v3}, Lv0/d;->e(I)I

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v9, 0x1

    if-eq v3, v9, :cond_5a

    const-string v4, "Skipping unsupported emsg version: "

    invoke-static {v4, v12, v3}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_37

    :cond_5a
    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v17

    invoke-virtual {v4}, LJ/D;->G()J

    move-result-wide v13

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v15, 0xf4240

    invoke-static/range {v13 .. v19}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    invoke-static/range {v13 .. v19}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v10

    invoke-virtual {v4}, LJ/D;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, LJ/D;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v13, v10

    move-wide/from16 v47, v6

    move-object v6, v12

    move-wide v11, v8

    move-wide/from16 v9, v29

    move-wide/from16 v7, v47

    goto :goto_34

    :cond_5b
    invoke-virtual {v4}, LJ/D;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, LJ/D;->v()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v17

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v13

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v15, 0xf4240

    invoke-static/range {v13 .. v19}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    iget-wide v8, v1, Lv0/j;->z:J

    cmp-long v10, v8, v29

    if-eqz v10, :cond_5c

    add-long/2addr v8, v6

    goto :goto_33

    :cond_5c
    move-wide/from16 v8, v29

    :goto_33
    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    invoke-static/range {v13 .. v19}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v13

    move-wide/from16 v47, v6

    move-object v6, v12

    move-wide v7, v8

    move-wide v11, v10

    move-wide/from16 v9, v47

    :goto_34
    invoke-virtual {v4}, LJ/D;->a()I

    move-result v15

    new-array v15, v15, [B

    invoke-virtual {v4}, LJ/D;->a()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v15, v2}, LJ/D;->k(I[BI)V

    new-instance v0, Lm0/a;

    new-instance v0, LJ/D;

    iget-object v2, v1, Lv0/j;->j:LW0/c;

    iget-object v4, v2, LW0/c;->g:Ljava/lang/Object;

    check-cast v4, Ljava/io/DataOutputStream;

    iget-object v2, v2, LW0/c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v4, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v4, v15}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, v2}, LJ/D;-><init>([B)V

    invoke-virtual {v0}, LJ/D;->a()I

    move-result v2

    iget-object v3, v1, Lv0/j;->H:[Lb0/G;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_35
    if-ge v6, v4, :cond_5d

    aget-object v11, v3, v6

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, LJ/D;->N(I)V

    invoke-interface {v11, v2, v0}, Lb0/G;->a(ILJ/D;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_5d
    cmp-long v0, v7, v29

    if-nez v0, :cond_5e

    new-instance v0, Lv0/g;

    const/4 v4, 0x1

    invoke-direct {v0, v9, v10, v2, v4}, Lv0/g;-><init>(JIZ)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v0, v1, Lv0/j;->w:I

    add-int/2addr v0, v2

    iput v0, v1, Lv0/j;->w:I

    goto :goto_37

    :cond_5e
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    new-instance v0, Lv0/g;

    const/4 v13, 0x0

    invoke-direct {v0, v7, v8, v2, v13}, Lv0/g;-><init>(JIZ)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v0, v1, Lv0/j;->w:I

    add-int/2addr v0, v2

    iput v0, v1, Lv0/j;->w:I

    goto :goto_37

    :cond_5f
    iget-object v0, v1, Lv0/j;->H:[Lb0/G;

    array-length v3, v0

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v3, :cond_60

    aget-object v6, v0, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    move v10, v2

    invoke-interface/range {v6 .. v12}, Lb0/G;->f(JIIILb0/F;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_60
    :goto_37
    move-object/from16 v0, p1

    goto :goto_38

    :cond_61
    invoke-interface {v0, v3}, Lb0/o;->p(I)V

    :goto_38
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lv0/j;->l(J)V

    goto/16 :goto_0

    :cond_62
    move/from16 v34, v14

    iget v2, v1, Lv0/j;->t:I

    const-wide/16 v3, -0x1

    iget-object v5, v1, Lv0/j;->k:LJ/D;

    if-nez v2, :cond_65

    iget-object v2, v5, LJ/D;->a:[B

    const/4 v8, 0x1

    const/16 v10, 0x8

    const/4 v14, 0x0

    invoke-interface {v0, v2, v14, v10, v8}, Lb0/o;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_64

    iget-wide v5, v1, Lv0/j;->L:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_63

    move-object/from16 v2, p2

    iput-wide v5, v2, Lb0/r;->a:J

    iput-wide v3, v1, Lv0/j;->L:J

    iget-object v0, v1, Lv0/j;->G:Lb0/p;

    invoke-virtual {v7}, La1/g;->A()Lb0/i;

    move-result-object v2

    invoke-interface {v0, v2}, Lb0/p;->c(Lb0/z;)V

    iput-boolean v8, v1, Lv0/j;->K:Z

    return v8

    :cond_63
    const/4 v14, 0x0

    invoke-virtual {v15, v14}, LJ/c;->b(I)V

    const/16 v28, -0x1

    return v28

    :cond_64
    move-object/from16 v2, p2

    const/16 v10, 0x8

    const/4 v14, 0x0

    iput v10, v1, Lv0/j;->t:I

    invoke-virtual {v5, v14}, LJ/D;->N(I)V

    invoke-virtual {v5}, LJ/D;->C()J

    move-result-wide v14

    iput-wide v14, v1, Lv0/j;->s:J

    invoke-virtual {v5}, LJ/D;->m()I

    move-result v8

    iput v8, v1, Lv0/j;->r:I

    goto :goto_39

    :cond_65
    move-object/from16 v2, p2

    :goto_39
    iget-wide v14, v1, Lv0/j;->s:J

    cmp-long v8, v14, v24

    if-nez v8, :cond_67

    iget-object v8, v5, LJ/D;->a:[B

    const/16 v10, 0x8

    invoke-interface {v0, v8, v10, v10}, Lb0/o;->readFully([BII)V

    iget v8, v1, Lv0/j;->t:I

    add-int/2addr v8, v10

    iput v8, v1, Lv0/j;->t:I

    invoke-virtual {v5}, LJ/D;->G()J

    move-result-wide v14

    iput-wide v14, v1, Lv0/j;->s:J

    :cond_66
    move-wide/from16 v18, v3

    goto :goto_3a

    :cond_67
    cmp-long v8, v14, v18

    if-nez v8, :cond_66

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v14

    cmp-long v8, v14, v3

    if-nez v8, :cond_68

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_68

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LK/d;

    iget-wide v14, v8, LK/d;->g:J

    :cond_68
    cmp-long v8, v14, v3

    if-eqz v8, :cond_66

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v18

    sub-long v14, v14, v18

    iget v8, v1, Lv0/j;->t:I

    move-wide/from16 v18, v3

    int-to-long v3, v8

    add-long/2addr v14, v3

    iput-wide v14, v1, Lv0/j;->s:J

    :goto_3a
    iget-wide v3, v1, Lv0/j;->s:J

    iget v8, v1, Lv0/j;->t:I

    int-to-long v14, v8

    cmp-long v3, v3, v14

    if-gez v3, :cond_6a

    iget v3, v1, Lv0/j;->r:I

    const v4, 0x66726565

    if-ne v3, v4, :cond_69

    const/16 v10, 0x8

    if-ne v8, v10, :cond_69

    iput-wide v14, v1, Lv0/j;->s:J

    goto :goto_3b

    :cond_69
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_6a
    :goto_3b
    iget-wide v3, v1, Lv0/j;->L:J

    cmp-long v3, v3, v18

    if-eqz v3, :cond_6c

    iget v3, v1, Lv0/j;->r:I

    const v4, 0x73696478

    if-ne v3, v4, :cond_6b

    iget-wide v3, v1, Lv0/j;->s:J

    long-to-int v3, v3

    invoke-virtual {v13, v3}, LJ/D;->K(I)V

    iget-object v3, v5, LJ/D;->a:[B

    iget-object v4, v13, LJ/D;->a:[B

    const/16 v10, 0x8

    const/4 v14, 0x0

    invoke-static {v3, v14, v4, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v13, LJ/D;->a:[B

    iget-wide v4, v1, Lv0/j;->s:J

    iget v6, v1, Lv0/j;->t:I

    int-to-long v8, v6

    sub-long/2addr v4, v8

    long-to-int v4, v4

    invoke-interface {v0, v3, v10, v4}, Lb0/o;->readFully([BII)V

    invoke-interface {v0}, Lb0/o;->x()J

    move-result-wide v3

    invoke-static {v3, v4, v13}, Lv0/j;->k(JLJ/D;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lb0/i;

    invoke-virtual {v7, v3}, La1/g;->t(Lb0/i;)V

    goto :goto_3c

    :cond_6b
    iget-wide v3, v1, Lv0/j;->s:J

    sub-long/2addr v3, v14

    long-to-int v3, v3

    const/4 v9, 0x1

    invoke-interface {v0, v3, v9}, Lb0/o;->t(IZ)Z

    :goto_3c
    invoke-virtual {v1}, Lv0/j;->g()V

    goto/16 :goto_40

    :cond_6c
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v3

    iget v7, v1, Lv0/j;->t:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    iget v7, v1, Lv0/j;->r:I

    const v8, 0x6d646174

    const v10, 0x6d6f6f66

    if-eq v7, v10, :cond_6d

    if-ne v7, v8, :cond_6f

    :cond_6d
    iget-boolean v7, v1, Lv0/j;->J:Z

    if-nez v7, :cond_6f

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v14

    cmp-long v7, v14, v18

    if-eqz v7, :cond_6e

    iget-wide v14, v1, Lv0/j;->M:J

    cmp-long v7, v14, v18

    if-nez v7, :cond_6e

    and-int/lit16 v7, v9, 0x200

    if-eqz v7, :cond_6e

    iput-wide v3, v1, Lv0/j;->M:J

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v3

    sub-long v3, v3, v22

    iput-wide v3, v2, Lb0/r;->a:J

    move/from16 v3, v34

    iput v3, v1, Lv0/j;->q:I

    goto/16 :goto_40

    :cond_6e
    iget-object v7, v1, Lv0/j;->G:Lb0/p;

    new-instance v9, Lb0/s;

    iget-wide v14, v1, Lv0/j;->y:J

    invoke-direct {v9, v14, v15, v3, v4}, Lb0/s;-><init>(JJ)V

    invoke-interface {v7, v9}, Lb0/p;->c(Lb0/z;)V

    const/4 v9, 0x1

    iput-boolean v9, v1, Lv0/j;->J:Z

    :cond_6f
    iget v7, v1, Lv0/j;->r:I

    if-ne v7, v10, :cond_70

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_3d
    if-ge v9, v7, :cond_70

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv0/i;

    iget-object v12, v12, Lv0/i;->b:Lv0/v;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v3, v12, Lv0/v;->c:J

    iput-wide v3, v12, Lv0/v;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :cond_70
    iget v7, v1, Lv0/j;->r:I

    if-ne v7, v8, :cond_71

    const/4 v8, 0x0

    iput-object v8, v1, Lv0/j;->A:Lv0/i;

    iget-wide v5, v1, Lv0/j;->s:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lv0/j;->v:J

    const/4 v10, 0x2

    iput v10, v1, Lv0/j;->q:I

    goto/16 :goto_40

    :cond_71
    const v3, 0x6d6f6f76

    const v4, 0x6d657461

    if-eq v7, v3, :cond_78

    const v3, 0x7472616b

    if-eq v7, v3, :cond_78

    const v3, 0x6d646961

    if-eq v7, v3, :cond_78

    const v3, 0x6d696e66

    if-eq v7, v3, :cond_78

    const v3, 0x7374626c

    if-eq v7, v3, :cond_78

    if-eq v7, v10, :cond_78

    const v3, 0x74726166

    if-eq v7, v3, :cond_78

    const v3, 0x6d766578

    if-eq v7, v3, :cond_78

    const v3, 0x65647473

    if-eq v7, v3, :cond_78

    if-ne v7, v4, :cond_72

    goto/16 :goto_3f

    :cond_72
    const v3, 0x68646c72    # 4.3148E24f

    if-eq v7, v3, :cond_75

    const v3, 0x6d646864

    if-eq v7, v3, :cond_75

    const v3, 0x6d766864

    if-eq v7, v3, :cond_75

    const v3, 0x73696478

    if-eq v7, v3, :cond_75

    const v3, 0x73747364

    if-eq v7, v3, :cond_75

    const v3, 0x73747473

    if-eq v7, v3, :cond_75

    const v3, 0x63747473

    if-eq v7, v3, :cond_75

    const v3, 0x73747363

    if-eq v7, v3, :cond_75

    const v3, 0x7374737a

    if-eq v7, v3, :cond_75

    const v3, 0x73747a32

    if-eq v7, v3, :cond_75

    const v3, 0x7374636f

    if-eq v7, v3, :cond_75

    const v3, 0x636f3634

    if-eq v7, v3, :cond_75

    const v3, 0x73747373

    if-eq v7, v3, :cond_75

    const v3, 0x74666474

    if-eq v7, v3, :cond_75

    const v3, 0x74666864

    if-eq v7, v3, :cond_75

    const v3, 0x746b6864

    if-eq v7, v3, :cond_75

    const v3, 0x74726578

    if-eq v7, v3, :cond_75

    const v3, 0x7472756e

    if-eq v7, v3, :cond_75

    const v3, 0x70737368    # 3.013775E29f

    if-eq v7, v3, :cond_75

    const v3, 0x7361697a

    if-eq v7, v3, :cond_75

    const v3, 0x7361696f

    if-eq v7, v3, :cond_75

    const v3, 0x73656e63

    if-eq v7, v3, :cond_75

    const v3, 0x75756964

    if-eq v7, v3, :cond_75

    const v3, 0x73626770

    if-eq v7, v3, :cond_75

    const v3, 0x73677064

    if-eq v7, v3, :cond_75

    const v3, 0x656c7374

    if-eq v7, v3, :cond_75

    const v3, 0x6d656864

    if-eq v7, v3, :cond_75

    const v3, 0x656d7367

    if-eq v7, v3, :cond_75

    const v3, 0x75647461

    if-eq v7, v3, :cond_75

    const v3, 0x6b657973

    if-eq v7, v3, :cond_75

    const v3, 0x696c7374

    if-ne v7, v3, :cond_73

    goto :goto_3e

    :cond_73
    iget-wide v3, v1, Lv0/j;->s:J

    cmp-long v3, v3, v16

    if-gtz v3, :cond_74

    const/4 v4, 0x0

    iput-object v4, v1, Lv0/j;->u:LJ/D;

    const/4 v9, 0x1

    iput v9, v1, Lv0/j;->q:I

    goto/16 :goto_40

    :cond_74
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_75
    :goto_3e
    iget v3, v1, Lv0/j;->t:I

    const/16 v10, 0x8

    if-ne v3, v10, :cond_77

    iget-wide v3, v1, Lv0/j;->s:J

    cmp-long v3, v3, v16

    if-gtz v3, :cond_76

    new-instance v3, LJ/D;

    iget-wide v6, v1, Lv0/j;->s:J

    long-to-int v4, v6

    invoke-direct {v3, v4}, LJ/D;-><init>(I)V

    iget-object v4, v5, LJ/D;->a:[B

    iget-object v5, v3, LJ/D;->a:[B

    const/4 v13, 0x0

    invoke-static {v4, v13, v5, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v1, Lv0/j;->u:LJ/D;

    const/4 v9, 0x1

    iput v9, v1, Lv0/j;->q:I

    goto :goto_40

    :cond_76
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_77
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_78
    :goto_3f
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v7

    iget-wide v9, v1, Lv0/j;->s:J

    add-long/2addr v7, v9

    sub-long v7, v7, v20

    iget v3, v1, Lv0/j;->t:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-eqz v3, :cond_79

    iget v3, v1, Lv0/j;->r:I

    if-ne v3, v4, :cond_79

    const/16 v10, 0x8

    invoke-virtual {v13, v10}, LJ/D;->K(I)V

    iget-object v3, v13, LJ/D;->a:[B

    const/4 v14, 0x0

    invoke-interface {v0, v14, v3, v10}, Lb0/o;->l(I[BI)V

    invoke-static {v13}, Lv0/d;->a(LJ/D;)V

    iget v3, v13, LJ/D;->b:I

    invoke-interface {v0, v3}, Lb0/o;->p(I)V

    invoke-interface {v0}, Lb0/o;->o()V

    :cond_79
    new-instance v3, LK/d;

    iget v4, v1, Lv0/j;->r:I

    invoke-direct {v3, v4, v7, v8}, LK/d;-><init>(IJ)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v3, v1, Lv0/j;->s:J

    iget v5, v1, Lv0/j;->t:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7a

    invoke-virtual {v1, v7, v8}, Lv0/j;->l(J)V

    goto :goto_40

    :cond_7a
    invoke-virtual {v1}, Lv0/j;->g()V

    :goto_40
    iget v3, v1, Lv0/j;->q:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    goto/16 :goto_2c

    :goto_41
    return v37

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x4f62860f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lv0/j;->p:Lu1/C0;

    return-object v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv0/j;->q:I

    iput v0, p0, Lv0/j;->t:I

    return-void
.end method

.method public final i(Lb0/z;Lb0/r;)V
    .locals 2

    iget-object v0, p0, Lv0/j;->G:Lb0/p;

    invoke-interface {v0, p1}, Lb0/p;->c(Lb0/z;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/j;->J:Z

    iget-wide v0, p0, Lv0/j;->M:J

    iput-wide v0, p2, Lb0/r;->a:J

    invoke-virtual {p0}, Lv0/j;->g()V

    return-void
.end method

.method public final l(J)V
    .locals 56

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lv0/j;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_66

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK/d;

    iget-wide v2, v2, LK/d;->g:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_66

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LK/d;

    iget v2, v3, LK/f;->f:I

    iget-object v4, v3, LK/d;->i:Ljava/util/ArrayList;

    iget-object v5, v3, LK/d;->h:Ljava/util/ArrayList;

    const v6, 0x6d6f6f76

    const/4 v7, 0x0

    const/16 v9, 0xc

    iget-object v14, v0, Lv0/j;->d:Landroid/util/SparseArray;

    iget v15, v0, Lv0/j;->b:I

    if-ne v2, v6, :cond_15

    move-object v6, v7

    invoke-static {v5}, Lv0/j;->h(Ljava/util/List;)LG/s;

    move-result-object v7

    const v1, 0x6d766578

    invoke-virtual {v3, v1}, LK/d;->h(I)LK/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v1, LK/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, LK/e;

    const/16 v16, 0x0

    iget v12, v6, LK/f;->f:I

    iget-object v6, v6, LK/e;->g:LJ/D;

    const/16 v18, 0x1

    const v13, 0x74726578

    if-ne v12, v13, :cond_1

    invoke-virtual {v6, v9}, LJ/D;->N(I)V

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v12

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v9

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v8

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v21, v1

    new-instance v1, Lv0/e;

    invoke-direct {v1, v13, v9, v8, v6}, Lv0/e;-><init>(IIII)V

    invoke-static {v12, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lv0/e;

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    move-object/from16 v21, v1

    const v1, 0x6d656864

    if-ne v12, v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, LJ/D;->N(I)V

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v1

    invoke-static {v1}, Lv0/d;->e(I)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v6}, LJ/D;->C()J

    move-result-wide v8

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, LJ/D;->G()J

    move-result-wide v8

    :goto_2
    move-wide v10, v8

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v21

    const/4 v6, 0x0

    const/16 v9, 0xc

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    const/16 v18, 0x1

    const v1, 0x6d657461

    invoke-virtual {v3, v1}, LK/d;->h(I)LK/d;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lv0/d;->f(LK/d;)LG/V;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    new-instance v4, Lb0/v;

    invoke-direct {v4}, Lb0/v;-><init>()V

    const v5, 0x75647461

    invoke-virtual {v3, v5}, LK/d;->i(I)LK/e;

    move-result-object v5

    if-eqz v5, :cond_7

    and-int/lit16 v6, v15, 0x400

    if-eqz v6, :cond_6

    move/from16 v6, v18

    goto :goto_5

    :cond_6
    move/from16 v6, v16

    :goto_5
    invoke-static {v5, v6}, Lv0/d;->k(LK/e;Z)LG/V;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb0/v;->b(LG/V;)V

    move-object v12, v5

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_6
    new-instance v13, LG/V;

    const v5, 0x6d766864

    invoke-virtual {v3, v5}, LK/d;->i(I)LK/e;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LK/e;->g:LJ/D;

    invoke-static {v5}, Lv0/d;->g(LJ/D;)LK/i;

    move-result-object v5

    move/from16 v6, v18

    new-array v8, v6, [LG/U;

    aput-object v5, v8, v16

    invoke-direct {v13, v8}, LG/V;-><init>([LG/U;)V

    and-int/lit8 v5, v15, 0x10

    if-eqz v5, :cond_8

    const/4 v8, 0x1

    :goto_7
    move-wide v5, v10

    goto :goto_8

    :cond_8
    move/from16 v8, v16

    goto :goto_7

    :goto_8
    new-instance v10, Lv0/f;

    invoke-direct {v10, v0}, Lv0/f;-><init>(Lv0/j;)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lv0/d;->j(LK/d;Lb0/v;JLG/s;ZZLt1/j;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v3}, Lv0/r;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    move/from16 v7, v16

    :goto_9
    if-ge v7, v5, :cond_d

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv0/w;

    iget-object v9, v8, Lv0/w;->a:Lv0/t;

    iget-boolean v10, v9, Lv0/t;->m:Z

    iget v11, v9, Lv0/t;->a:I

    iget-object v15, v9, Lv0/t;->g:LG/x;

    move/from16 v17, v5

    move-object/from16 v19, v6

    iget-wide v5, v9, Lv0/t;->e:J

    iget v9, v9, Lv0/t;->b:I

    if-nez v10, :cond_9

    move-object/from16 v21, v3

    move/from16 v20, v7

    goto :goto_c

    :cond_9
    iget-object v10, v0, Lv0/j;->G:Lb0/p;

    invoke-interface {v10, v7, v9}, Lb0/p;->v(II)Lb0/G;

    move-result-object v10

    invoke-interface {v10, v5, v6}, Lb0/G;->d(J)V

    move/from16 v20, v7

    invoke-virtual {v15}, LG/x;->a()LG/w;

    move-result-object v7

    move-object/from16 v21, v3

    invoke-static/range {v19 .. v19}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, LG/w;->n:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v9, v3, :cond_a

    iget v3, v4, Lb0/v;->a:I

    move-wide/from16 v22, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_b

    iget v6, v4, Lb0/v;->b:I

    if-eq v6, v5, :cond_b

    iput v3, v7, LG/w;->M:I

    iput v6, v7, LG/w;->N:I

    goto :goto_a

    :cond_a
    move-wide/from16 v22, v5

    :cond_b
    :goto_a
    iget-object v3, v15, LG/x;->m:LG/V;

    filled-new-array {v12, v13}, [LG/V;

    move-result-object v5

    invoke-static {v9, v1, v7, v3, v5}, Lv0/r;->k(ILG/V;LG/w;LG/V;[LG/V;)V

    new-instance v3, Lv0/i;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    move/from16 v5, v16

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/e;

    goto :goto_b

    :cond_c
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lv0/e;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_b
    new-instance v5, LG/x;

    invoke-direct {v5, v7}, LG/x;-><init>(LG/w;)V

    invoke-direct {v3, v10, v8, v6, v5}, Lv0/i;-><init>(Lb0/G;Lv0/w;Lv0/e;LG/x;)V

    invoke-virtual {v14, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lv0/j;->y:J

    move-wide/from16 v7, v22

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lv0/j;->y:J

    :goto_c
    add-int/lit8 v7, v20, 0x1

    move/from16 v5, v17

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_d
    iget-object v1, v0, Lv0/j;->G:Lb0/p;

    invoke-interface {v1}, Lb0/p;->e()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v21, v3

    move v4, v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v1, v4, :cond_10

    move-object/from16 v5, v21

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/w;

    iget-object v6, v6, Lv0/w;->a:Lv0/t;

    iget-boolean v6, v6, Lv0/t;->m:Z

    if-eqz v6, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v5

    goto :goto_d

    :cond_10
    move-object/from16 v5, v21

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v3, :cond_11

    const/4 v1, 0x1

    goto :goto_e

    :cond_11
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, LF1/i;->o(Z)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v4, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/w;

    iget-object v6, v3, Lv0/w;->a:Lv0/t;

    iget-boolean v7, v6, Lv0/t;->m:Z

    iget v6, v6, Lv0/t;->a:I

    if-nez v7, :cond_12

    goto :goto_11

    :cond_12
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv0/i;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/e;

    goto :goto_10

    :cond_13
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/e;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    iput-object v3, v7, Lv0/i;->d:Lv0/w;

    iput-object v6, v7, Lv0/i;->e:Lv0/e;

    iget-object v3, v7, Lv0/i;->l:LG/x;

    if-nez v3, :cond_14

    iget-object v3, v7, Lv0/i;->a:Lb0/G;

    iget-object v6, v7, Lv0/i;->m:LG/x;

    invoke-interface {v3, v6}, Lb0/G;->b(LG/x;)V

    :cond_14
    invoke-virtual {v7}, Lv0/i;->e()V

    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_15
    const v6, 0x6d6f6f66

    if-ne v2, v6, :cond_65

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_5d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK/d;

    iget v6, v3, LK/f;->f:I

    const v7, 0x74726166

    if-ne v6, v7, :cond_5c

    const v6, 0x74666864

    invoke-virtual {v3, v6}, LK/d;->i(I)LK/e;

    move-result-object v6

    iget-object v7, v3, LK/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, LK/e;->g:LJ/D;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, LJ/D;->N(I)V

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v8

    sget-object v9, Lv0/d;->a:[B

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v9

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv0/i;

    if-nez v9, :cond_16

    move/from16 v23, v1

    const/4 v9, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_17

    :cond_16
    iget-object v12, v9, Lv0/i;->b:Lv0/v;

    and-int/lit8 v13, v8, 0x1

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v13, :cond_17

    invoke-virtual {v6}, LJ/D;->G()J

    move-result-wide v10

    iput-wide v10, v12, Lv0/v;->b:J

    iput-wide v10, v12, Lv0/v;->c:J

    :cond_17
    iget-object v10, v9, Lv0/i;->e:Lv0/e;

    and-int/lit8 v11, v8, 0x2

    if-eqz v11, :cond_18

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v11

    const/16 v18, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_13

    :cond_18
    iget v11, v10, Lv0/e;->a:I

    :goto_13
    and-int/lit8 v13, v8, 0x8

    if-eqz v13, :cond_19

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v13

    goto :goto_14

    :cond_19
    iget v13, v10, Lv0/e;->b:I

    :goto_14
    and-int/lit8 v23, v8, 0x10

    if-eqz v23, :cond_1a

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v23

    move/from16 v55, v23

    move/from16 v23, v1

    move/from16 v1, v55

    goto :goto_15

    :cond_1a
    move/from16 v23, v1

    iget v1, v10, Lv0/e;->c:I

    :goto_15
    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_1b

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v6

    goto :goto_16

    :cond_1b
    iget v6, v10, Lv0/e;->d:I

    :goto_16
    new-instance v8, Lv0/e;

    invoke-direct {v8, v11, v13, v1, v6}, Lv0/e;-><init>(IIII)V

    iput-object v8, v12, Lv0/v;->a:Lv0/e;

    :goto_17
    if-nez v9, :cond_1d

    move/from16 v24, v2

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/16 v12, 0xc

    :cond_1c
    const/16 v8, 0x8

    const/4 v10, 0x0

    goto/16 :goto_44

    :cond_1d
    iget-object v1, v9, Lv0/i;->b:Lv0/v;

    iget-wide v10, v1, Lv0/v;->p:J

    iget-boolean v6, v1, Lv0/v;->q:Z

    invoke-virtual {v9}, Lv0/i;->e()V

    const/4 v8, 0x1

    iput-boolean v8, v9, Lv0/i;->n:Z

    const v12, 0x74666474

    invoke-virtual {v3, v12}, LK/d;->i(I)LK/e;

    move-result-object v12

    if-eqz v12, :cond_1f

    and-int/lit8 v13, v15, 0x2

    if-nez v13, :cond_1f

    iget-object v6, v12, LK/e;->g:LJ/D;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, LJ/D;->N(I)V

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v10

    invoke-static {v10}, Lv0/d;->e(I)I

    move-result v10

    if-ne v10, v8, :cond_1e

    invoke-virtual {v6}, LJ/D;->G()J

    move-result-wide v10

    goto :goto_18

    :cond_1e
    invoke-virtual {v6}, LJ/D;->C()J

    move-result-wide v10

    :goto_18
    iput-wide v10, v1, Lv0/v;->p:J

    iput-boolean v8, v1, Lv0/v;->q:Z

    goto :goto_19

    :cond_1f
    iput-wide v10, v1, Lv0/v;->p:J

    iput-boolean v6, v1, Lv0/v;->q:Z

    :goto_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1a
    const v12, 0x7472756e

    if-ge v8, v6, :cond_21

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LK/e;

    move/from16 v24, v2

    iget v2, v13, LK/f;->f:I

    if-ne v2, v12, :cond_20

    iget-object v2, v13, LK/e;->g:LJ/D;

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->E()I

    move-result v2

    if-lez v2, :cond_20

    add-int/2addr v11, v2

    add-int/lit8 v10, v10, 0x1

    :cond_20
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v24

    goto :goto_1a

    :cond_21
    move/from16 v24, v2

    const/4 v8, 0x0

    iput v8, v9, Lv0/i;->h:I

    iput v8, v9, Lv0/i;->g:I

    iput v8, v9, Lv0/i;->f:I

    iput v10, v1, Lv0/v;->d:I

    iput v11, v1, Lv0/v;->e:I

    iget-object v2, v1, Lv0/v;->g:[I

    array-length v2, v2

    if-ge v2, v10, :cond_22

    new-array v2, v10, [J

    iput-object v2, v1, Lv0/v;->f:[J

    new-array v2, v10, [I

    iput-object v2, v1, Lv0/v;->g:[I

    :cond_22
    iget-object v2, v1, Lv0/v;->h:[I

    array-length v2, v2

    if-ge v2, v11, :cond_23

    mul-int/lit8 v11, v11, 0x7d

    div-int/lit8 v11, v11, 0x64

    new-array v2, v11, [I

    iput-object v2, v1, Lv0/v;->h:[I

    new-array v2, v11, [J

    iput-object v2, v1, Lv0/v;->i:[J

    new-array v2, v11, [Z

    iput-object v2, v1, Lv0/v;->j:[Z

    new-array v2, v11, [Z

    iput-object v2, v1, Lv0/v;->l:[Z

    :cond_23
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1b
    const-wide/16 v25, 0x0

    if-ge v2, v6, :cond_3d

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    const/16 v28, 0x10

    move-object/from16 v11, v27

    check-cast v11, LK/e;

    iget v13, v11, LK/f;->f:I

    if-ne v13, v12, :cond_3c

    add-int/lit8 v13, v8, 0x1

    iget-object v11, v11, LK/e;->g:LJ/D;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, LJ/D;->N(I)V

    invoke-virtual {v11}, LJ/D;->m()I

    move-result v12

    sget-object v30, Lv0/d;->a:[B

    move/from16 v30, v2

    iget-object v2, v9, Lv0/i;->d:Lv0/w;

    iget-object v2, v2, Lv0/w;->a:Lv0/t;

    move-object/from16 v31, v4

    iget-object v4, v1, Lv0/v;->a:Lv0/e;

    sget-object v32, LJ/W;->a:Ljava/lang/String;

    move-object/from16 v32, v5

    iget-object v5, v1, Lv0/v;->g:[I

    invoke-virtual {v11}, LJ/D;->E()I

    move-result v33

    aput v33, v5, v8

    iget-object v5, v1, Lv0/v;->f:[J

    move-object/from16 v34, v5

    move/from16 v33, v6

    iget-wide v5, v1, Lv0/v;->b:J

    aput-wide v5, v34, v8

    and-int/lit8 v35, v12, 0x1

    if-eqz v35, :cond_24

    move-wide/from16 v35, v5

    invoke-virtual {v11}, LJ/D;->m()I

    move-result v5

    int-to-long v5, v5

    add-long v5, v35, v5

    aput-wide v5, v34, v8

    :cond_24
    and-int/lit8 v5, v12, 0x4

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_1c

    :cond_25
    const/4 v5, 0x0

    :goto_1c
    iget v6, v4, Lv0/e;->d:I

    if-eqz v5, :cond_26

    invoke-virtual {v11}, LJ/D;->m()I

    move-result v6

    :cond_26
    move/from16 v34, v5

    and-int/lit16 v5, v12, 0x100

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    goto :goto_1d

    :cond_27
    const/4 v5, 0x0

    :goto_1d
    move/from16 v35, v5

    and-int/lit16 v5, v12, 0x200

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    goto :goto_1e

    :cond_28
    const/4 v5, 0x0

    :goto_1e
    move/from16 v36, v5

    and-int/lit16 v5, v12, 0x400

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_1f

    :cond_29
    const/4 v5, 0x0

    :goto_1f
    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_2a

    const/4 v12, 0x1

    :goto_20
    move/from16 v37, v5

    goto :goto_21

    :cond_2a
    const/4 v12, 0x0

    goto :goto_20

    :goto_21
    iget-object v5, v2, Lv0/t;->i:Ly1/b;

    move/from16 v38, v6

    iget-object v6, v2, Lv0/t;->j:Ly1/b;

    move/from16 v39, v8

    if-eqz v5, :cond_2e

    iget v8, v5, Ly1/b;->f:I

    move/from16 v40, v10

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2b

    if-nez v6, :cond_2c

    :cond_2b
    move-object v5, v9

    :goto_22
    move-object/from16 v41, v11

    goto :goto_24

    :cond_2c
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ly1/b;->a(I)J

    move-result-wide v41

    cmp-long v10, v41, v25

    if-nez v10, :cond_2d

    move-object v5, v9

    move-object/from16 v41, v11

    goto :goto_23

    :cond_2d
    invoke-virtual {v5, v8}, Ly1/b;->a(I)J

    move-result-wide v41

    move-object v5, v9

    iget-wide v8, v2, Lv0/t;->d:J

    sget-object v47, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v43, 0xf4240

    move-wide/from16 v45, v8

    invoke-static/range {v41 .. v47}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ly1/b;->a(I)J

    move-result-wide v43

    const-wide/32 v45, 0xf4240

    move-object/from16 v41, v11

    iget-wide v10, v2, Lv0/t;->c:J

    move-object/from16 v49, v47

    move-wide/from16 v47, v10

    invoke-static/range {v43 .. v49}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-wide v10, v2, Lv0/t;->e:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2f

    const/4 v8, 0x0

    :goto_23
    invoke-virtual {v6, v8}, Ly1/b;->a(I)J

    move-result-wide v25

    goto :goto_24

    :cond_2e
    move-object v5, v9

    move/from16 v40, v10

    goto :goto_22

    :cond_2f
    :goto_24
    iget-object v6, v1, Lv0/v;->h:[I

    iget-object v8, v1, Lv0/v;->i:[J

    iget-object v9, v1, Lv0/v;->j:[Z

    iget v10, v2, Lv0/t;->b:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_30

    and-int/lit8 v10, v15, 0x1

    if-eqz v10, :cond_30

    const/4 v10, 0x1

    goto :goto_25

    :cond_30
    const/4 v10, 0x0

    :goto_25
    iget-object v11, v1, Lv0/v;->g:[I

    aget v11, v11, v39

    add-int v11, v40, v11

    move-object/from16 v27, v5

    move-object/from16 v49, v6

    iget-wide v5, v2, Lv0/t;->c:J

    move-wide/from16 v46, v5

    iget-wide v5, v1, Lv0/v;->p:J

    move/from16 v2, v40

    :goto_26
    if-ge v2, v11, :cond_3b

    if-eqz v35, :cond_31

    invoke-virtual/range {v41 .. v41}, LJ/D;->m()I

    move-result v39

    move/from16 v50, v39

    move/from16 v39, v2

    move/from16 v2, v50

    :goto_27
    move-object/from16 v50, v8

    goto :goto_28

    :cond_31
    move/from16 v39, v2

    iget v2, v4, Lv0/e;->b:I

    goto :goto_27

    :goto_28
    const-string v8, "Unexpected negative value: "

    if-ltz v2, :cond_3a

    if-eqz v36, :cond_32

    invoke-virtual/range {v41 .. v41}, LJ/D;->m()I

    move-result v40

    move-object/from16 v51, v9

    move/from16 v9, v40

    goto :goto_29

    :cond_32
    move-object/from16 v51, v9

    iget v9, v4, Lv0/e;->c:I

    :goto_29
    if-ltz v9, :cond_39

    if-eqz v37, :cond_33

    invoke-virtual/range {v41 .. v41}, LJ/D;->m()I

    move-result v8

    goto :goto_2a

    :cond_33
    if-nez v39, :cond_34

    if-eqz v34, :cond_34

    move/from16 v8, v38

    goto :goto_2a

    :cond_34
    iget v8, v4, Lv0/e;->d:I

    :goto_2a
    if-eqz v12, :cond_35

    invoke-virtual/range {v41 .. v41}, LJ/D;->m()I

    move-result v40

    move-object/from16 v52, v4

    move/from16 v4, v40

    :goto_2b
    move/from16 v53, v10

    move/from16 v54, v11

    goto :goto_2c

    :cond_35
    move-object/from16 v52, v4

    const/4 v4, 0x0

    goto :goto_2b

    :goto_2c
    int-to-long v10, v4

    add-long/2addr v10, v5

    sub-long v42, v10, v25

    const-wide/32 v44, 0xf4240

    sget-object v48, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v42 .. v48}, LJ/W;->N(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    aput-wide v10, v50, v39

    iget-boolean v4, v1, Lv0/v;->q:Z

    if-nez v4, :cond_36

    move-object/from16 v4, v27

    move/from16 v27, v8

    iget-object v8, v4, Lv0/i;->d:Lv0/w;

    move-wide/from16 v42, v10

    iget-wide v10, v8, Lv0/w;->i:J

    add-long v10, v42, v10

    aput-wide v10, v50, v39

    goto :goto_2d

    :cond_36
    move-object/from16 v4, v27

    move/from16 v27, v8

    :goto_2d
    aput v9, v49, v39

    shr-int/lit8 v8, v27, 0x10

    const/16 v18, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_38

    if-eqz v53, :cond_37

    if-nez v39, :cond_38

    :cond_37
    const/4 v8, 0x1

    goto :goto_2e

    :cond_38
    const/4 v8, 0x0

    :goto_2e
    aput-boolean v8, v51, v39

    int-to-long v8, v2

    add-long/2addr v5, v8

    add-int/lit8 v2, v39, 0x1

    move-object/from16 v27, v4

    move-object/from16 v8, v50

    move-object/from16 v9, v51

    move-object/from16 v4, v52

    move/from16 v10, v53

    move/from16 v11, v54

    goto/16 :goto_26

    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v6, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_3a
    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_3b
    move/from16 v54, v11

    move-object/from16 v4, v27

    iput-wide v5, v1, Lv0/v;->p:J

    move v8, v13

    move/from16 v10, v54

    goto :goto_2f

    :cond_3c
    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v33, v6

    move/from16 v39, v8

    move-object v4, v9

    move/from16 v40, v10

    :goto_2f
    add-int/lit8 v2, v30, 0x1

    move-object v9, v4

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    move/from16 v6, v33

    const v12, 0x7472756e

    goto/16 :goto_1b

    :cond_3d
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object v4, v9

    const/16 v28, 0x10

    iget-object v2, v4, Lv0/i;->d:Lv0/w;

    iget-object v2, v2, Lv0/w;->a:Lv0/t;

    iget-object v4, v1, Lv0/v;->a:Lv0/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Lv0/e;->a:I

    iget-object v2, v2, Lv0/t;->n:[Lv0/u;

    if-nez v2, :cond_3e

    const/4 v6, 0x0

    goto :goto_30

    :cond_3e
    aget-object v2, v2, v4

    move-object v6, v2

    :goto_30
    const v2, 0x7361697a

    invoke-virtual {v3, v2}, LK/d;->i(I)LK/e;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, LK/e;->g:LJ/D;

    iget v4, v6, Lv0/u;->d:I

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v5

    sget-object v9, Lv0/d;->a:[B

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_3f

    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    :cond_3f
    invoke-virtual {v2}, LJ/D;->A()I

    move-result v5

    invoke-virtual {v2}, LJ/D;->E()I

    move-result v8

    iget v9, v1, Lv0/v;->e:I

    if-gt v8, v9, :cond_44

    if-nez v5, :cond_42

    iget-object v5, v1, Lv0/v;->l:[Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_31
    if-ge v9, v8, :cond_41

    invoke-virtual {v2}, LJ/D;->A()I

    move-result v11

    add-int/2addr v10, v11

    if-le v11, v4, :cond_40

    const/4 v11, 0x1

    goto :goto_32

    :cond_40
    const/4 v11, 0x0

    :goto_32
    aput-boolean v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_41
    const/4 v5, 0x0

    goto :goto_34

    :cond_42
    if-le v5, v4, :cond_43

    const/4 v2, 0x1

    goto :goto_33

    :cond_43
    const/4 v2, 0x0

    :goto_33
    mul-int v10, v5, v8

    iget-object v4, v1, Lv0/v;->l:[Z

    const/4 v5, 0x0

    invoke-static {v4, v5, v8, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_34
    iget-object v2, v1, Lv0/v;->l:[Z

    iget v4, v1, Lv0/v;->e:I

    invoke-static {v2, v8, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v10, :cond_45

    iget-object v2, v1, Lv0/v;->n:LJ/D;

    invoke-virtual {v2, v10}, LJ/D;->K(I)V

    const/4 v9, 0x1

    iput-boolean v9, v1, Lv0/v;->k:Z

    iput-boolean v9, v1, Lv0/v;->o:Z

    goto :goto_35

    :cond_44
    const-string v2, "Saiz sample count "

    const-string v3, " is greater than fragment sample count"

    invoke-static {v2, v3, v8}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lv0/v;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v6, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_45
    :goto_35
    const v2, 0x7361696f

    invoke-virtual {v3, v2}, LK/d;->i(I)LK/e;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, v2, LK/e;->g:LJ/D;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->m()I

    move-result v4

    sget-object v5, Lv0/d;->a:[B

    and-int/lit8 v5, v4, 0x1

    const/4 v9, 0x1

    if-ne v5, v9, :cond_46

    invoke-virtual {v2, v8}, LJ/D;->O(I)V

    :cond_46
    invoke-virtual {v2}, LJ/D;->E()I

    move-result v5

    if-ne v5, v9, :cond_49

    invoke-static {v4}, Lv0/d;->e(I)I

    move-result v4

    iget-wide v8, v1, Lv0/v;->c:J

    if-nez v4, :cond_47

    invoke-virtual {v2}, LJ/D;->C()J

    move-result-wide v4

    goto :goto_36

    :cond_47
    invoke-virtual {v2}, LJ/D;->G()J

    move-result-wide v4

    :goto_36
    add-long/2addr v8, v4

    iput-wide v8, v1, Lv0/v;->c:J

    :cond_48
    const/4 v2, 0x0

    goto :goto_37

    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected saio entry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :goto_37
    const v4, 0x73656e63

    invoke-virtual {v3, v4}, LK/d;->i(I)LK/e;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v3, v3, LK/e;->g:LJ/D;

    const/4 v8, 0x0

    invoke-static {v3, v8, v1}, Lv0/j;->j(LJ/D;ILv0/v;)V

    :cond_4a
    if-eqz v6, :cond_4b

    iget-object v6, v6, Lv0/u;->b:Ljava/lang/String;

    move-object/from16 v35, v6

    goto :goto_38

    :cond_4b
    move-object/from16 v35, v2

    :goto_38
    move-object v3, v2

    move-object v6, v3

    const/4 v4, 0x0

    :goto_39
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK/e;

    iget-object v8, v5, LK/e;->g:LJ/D;

    iget v5, v5, LK/f;->f:I

    const v9, 0x73626770

    const v10, 0x73656967

    if-ne v5, v9, :cond_4c

    const/16 v12, 0xc

    invoke-virtual {v8, v12}, LJ/D;->N(I)V

    invoke-virtual {v8}, LJ/D;->m()I

    move-result v5

    if-ne v5, v10, :cond_4d

    move-object v6, v8

    goto :goto_3a

    :cond_4c
    const/16 v12, 0xc

    const v9, 0x73677064

    if-ne v5, v9, :cond_4d

    invoke-virtual {v8, v12}, LJ/D;->N(I)V

    invoke-virtual {v8}, LJ/D;->m()I

    move-result v5

    if-ne v5, v10, :cond_4d

    move-object v3, v8

    :cond_4d
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4e
    const/16 v12, 0xc

    if-eqz v6, :cond_4f

    if-nez v3, :cond_50

    :cond_4f
    :goto_3b
    const/4 v9, 0x1

    goto/16 :goto_41

    :cond_50
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, LJ/D;->N(I)V

    invoke-virtual {v6}, LJ/D;->m()I

    move-result v4

    invoke-static {v4}, Lv0/d;->e(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v6, v5}, LJ/D;->O(I)V

    const/4 v9, 0x1

    if-ne v4, v9, :cond_51

    invoke-virtual {v6, v5}, LJ/D;->O(I)V

    :cond_51
    invoke-virtual {v6}, LJ/D;->m()I

    move-result v4

    if-ne v4, v9, :cond_59

    invoke-virtual {v3, v8}, LJ/D;->N(I)V

    invoke-virtual {v3}, LJ/D;->m()I

    move-result v4

    invoke-static {v4}, Lv0/d;->e(I)I

    move-result v4

    invoke-virtual {v3, v5}, LJ/D;->O(I)V

    if-lt v4, v9, :cond_52

    invoke-virtual {v3}, LJ/D;->C()J

    move-result-wide v8

    :goto_3c
    const/4 v11, 0x2

    goto :goto_3d

    :cond_52
    move-wide/from16 v8, v25

    goto :goto_3c

    :goto_3d
    if-lt v4, v11, :cond_53

    invoke-virtual {v3, v5}, LJ/D;->O(I)V

    :cond_53
    invoke-virtual {v3}, LJ/D;->C()J

    move-result-wide v10

    const-wide/16 v29, 0x1

    cmp-long v6, v10, v29

    if-nez v6, :cond_58

    const/4 v6, 0x1

    if-lt v4, v6, :cond_54

    cmp-long v4, v8, v25

    if-nez v4, :cond_54

    invoke-virtual {v3, v5}, LJ/D;->O(I)V

    :cond_54
    invoke-virtual {v3, v6}, LJ/D;->O(I)V

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v4

    and-int/lit16 v8, v4, 0xf0

    shr-int/lit8 v38, v8, 0x4

    and-int/lit8 v39, v4, 0xf

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v4

    if-ne v4, v6, :cond_55

    const/16 v34, 0x1

    goto :goto_3e

    :cond_55
    const/16 v34, 0x0

    :goto_3e
    if-nez v34, :cond_56

    goto :goto_3b

    :cond_56
    invoke-virtual {v3}, LJ/D;->A()I

    move-result v36

    move/from16 v4, v28

    new-array v5, v4, [B

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5, v4}, LJ/D;->k(I[BI)V

    if-nez v36, :cond_57

    invoke-virtual {v3}, LJ/D;->A()I

    move-result v4

    new-array v6, v4, [B

    invoke-virtual {v3, v8, v6, v4}, LJ/D;->k(I[BI)V

    move-object/from16 v40, v6

    :goto_3f
    const/4 v9, 0x1

    goto :goto_40

    :cond_57
    move-object/from16 v40, v2

    goto :goto_3f

    :goto_40
    iput-boolean v9, v1, Lv0/v;->k:Z

    new-instance v33, Lv0/u;

    move-object/from16 v37, v5

    invoke-direct/range {v33 .. v40}, Lv0/u;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v3, v33

    iput-object v3, v1, Lv0/v;->m:Lv0/u;

    goto :goto_41

    :cond_58
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :cond_59
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v1}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v1

    throw v1

    :goto_41
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_42
    if-ge v5, v3, :cond_1c

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LK/e;

    iget v6, v4, LK/f;->f:I

    const v8, 0x75756964

    if-ne v6, v8, :cond_5b

    iget-object v4, v4, LK/e;->g:LJ/D;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, LJ/D;->N(I)V

    iget-object v6, v0, Lv0/j;->h:[B

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-virtual {v4, v10, v6, v11}, LJ/D;->k(I[BI)V

    sget-object v13, Lv0/j;->N:[B

    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5a

    goto :goto_43

    :cond_5a
    invoke-static {v4, v11, v1}, Lv0/j;->j(LJ/D;ILv0/v;)V

    goto :goto_43

    :cond_5b
    const/16 v8, 0x8

    const/4 v10, 0x0

    const/16 v11, 0x10

    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_5c
    move/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    const/4 v2, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v12, 0xc

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    :goto_44
    add-int/lit8 v1, v24, 0x1

    move v2, v1

    move/from16 v1, v23

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_12

    :cond_5d
    move-object/from16 v32, v5

    const/4 v2, 0x0

    const/4 v10, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static/range {v32 .. v32}, Lv0/j;->h(Ljava/util/List;)LG/s;

    move-result-object v1

    if-eqz v1, :cond_61

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v5, v10

    :goto_45
    if-ge v5, v3, :cond_61

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0/i;

    iget-object v6, v4, Lv0/i;->d:Lv0/w;

    iget-object v6, v6, Lv0/w;->a:Lv0/t;

    iget-object v7, v4, Lv0/i;->b:Lv0/v;

    iget-object v7, v7, Lv0/v;->a:Lv0/e;

    sget-object v8, LJ/W;->a:Ljava/lang/String;

    iget v7, v7, Lv0/e;->a:I

    iget-object v6, v6, Lv0/t;->n:[Lv0/u;

    if-nez v6, :cond_5e

    move-object v6, v2

    goto :goto_46

    :cond_5e
    aget-object v6, v6, v7

    :goto_46
    if-eqz v6, :cond_5f

    iget-object v6, v6, Lv0/u;->b:Ljava/lang/String;

    goto :goto_47

    :cond_5f
    move-object v6, v2

    :goto_47
    invoke-virtual {v1, v6}, LG/s;->a(Ljava/lang/String;)LG/s;

    move-result-object v6

    iget-object v7, v4, Lv0/i;->m:LG/x;

    invoke-virtual {v7}, LG/x;->a()LG/w;

    move-result-object v7

    iput-object v6, v7, LG/w;->s:LG/s;

    new-instance v6, LG/x;

    invoke-direct {v6, v7}, LG/x;-><init>(LG/w;)V

    iget-object v7, v4, Lv0/i;->l:LG/x;

    if-eqz v7, :cond_60

    iput-object v6, v4, Lv0/i;->l:LG/x;

    goto :goto_48

    :cond_60
    iget-object v4, v4, Lv0/i;->a:Lb0/G;

    invoke-interface {v4, v6}, Lb0/G;->b(LG/x;)V

    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_61
    iget-wide v1, v0, Lv0/j;->x:J

    cmp-long v1, v1, v21

    if-eqz v1, :cond_0

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v12, v10

    :goto_49
    if-ge v12, v1, :cond_64

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/i;

    iget-wide v3, v0, Lv0/j;->x:J

    iget v5, v2, Lv0/i;->f:I

    :goto_4a
    iget-object v6, v2, Lv0/i;->b:Lv0/v;

    iget v7, v6, Lv0/v;->e:I

    if-ge v5, v7, :cond_63

    iget-object v7, v6, Lv0/v;->i:[J

    aget-wide v8, v7, v5

    cmp-long v7, v8, v3

    if-gtz v7, :cond_63

    iget-object v6, v6, Lv0/v;->j:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_62

    iput v5, v2, Lv0/i;->i:I

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_63
    add-int/lit8 v12, v12, 0x1

    goto :goto_49

    :cond_64
    move-wide/from16 v2, v21

    iput-wide v2, v0, Lv0/j;->x:J

    goto/16 :goto_0

    :cond_65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/d;

    iget-object v1, v1, LK/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_66
    invoke-virtual {v0}, Lv0/j;->g()V

    return-void
.end method
