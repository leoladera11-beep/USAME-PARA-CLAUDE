.class public final Lv0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:I

.field public E:J

.field public F:Lb0/p;

.field public G:[Lv0/m;

.field public H:[[J

.field public I:I

.field public final a:Ly0/k;

.field public final b:I

.field public final c:Z

.field public final d:LJ/D;

.field public final e:LJ/D;

.field public final f:LJ/D;

.field public final g:LJ/D;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Lv0/q;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public m:Lu1/C0;

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:LJ/D;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ly0/k;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/n;->a:Ly0/k;

    iput p2, p0, Lv0/n;->b:I

    and-int/lit16 p1, p2, 0x100

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lv0/n;->c:Z

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    iput-object p1, p0, Lv0/n;->m:Lu1/C0;

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput p1, p0, Lv0/n;->n:I

    new-instance p1, Lv0/q;

    invoke-direct {p1}, Lv0/q;-><init>()V

    iput-object p1, p0, Lv0/n;->i:Lv0/q;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv0/n;->j:Ljava/util/ArrayList;

    new-instance p1, LJ/D;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, LJ/D;-><init>(I)V

    iput-object p1, p0, Lv0/n;->g:LJ/D;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lv0/n;->h:Ljava/util/ArrayDeque;

    new-instance p1, LJ/D;

    sget-object p2, LK/t;->a:[B

    invoke-direct {p1, p2}, LJ/D;-><init>([B)V

    iput-object p1, p0, Lv0/n;->d:LJ/D;

    new-instance p1, LJ/D;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, LJ/D;-><init>(I)V

    iput-object p1, p0, Lv0/n;->e:LJ/D;

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Lv0/n;->f:LJ/D;

    const/4 p1, -0x1

    iput p1, p0, Lv0/n;->s:I

    sget-object p1, Lb0/p;->d:Lcom/brisa/local/j;

    iput-object p1, p0, Lv0/n;->F:Lb0/p;

    new-array p1, v0, [Lv0/m;

    iput-object p1, p0, Lv0/n;->G:[Lv0/m;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv0/n;->k:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv0/n;->l:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 2

    iget v0, p0, Lv0/n;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, LH/c;

    iget-object v1, p0, Lv0/n;->a:Ly0/k;

    invoke-direct {v0, p1, v1}, LH/c;-><init>(Lb0/p;Ly0/k;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lv0/n;->F:Lb0/p;

    return-void
.end method

.method public final c(JJ)V
    .locals 6

    iget-object v0, p0, Lv0/n;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lv0/n;->q:I

    const/4 v1, -0x1

    iput v1, p0, Lv0/n;->s:I

    iput v0, p0, Lv0/n;->t:I

    iput v0, p0, Lv0/n;->u:I

    iput v0, p0, Lv0/n;->v:I

    iput-boolean v0, p0, Lv0/n;->w:Z

    iput-boolean v0, p0, Lv0/n;->B:Z

    iput v0, p0, Lv0/n;->C:I

    iput v0, p0, Lv0/n;->D:I

    iget-object v2, p0, Lv0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lv0/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Lv0/n;->n:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iput v0, p0, Lv0/n;->n:I

    iput v0, p0, Lv0/n;->q:I

    return-void

    :cond_0
    iget-object p1, p0, Lv0/n;->i:Lv0/q;

    iget-object p2, p1, Lv0/q;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput v0, p1, Lv0/q;->b:I

    iget-object p1, p0, Lv0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object p1, p0, Lv0/n;->G:[Lv0/m;

    array-length p2, p1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_4

    aget-object v3, p1, v2

    iget-object v4, v3, Lv0/m;->b:Lv0/w;

    invoke-virtual {v4, p3, p4}, Lv0/w;->a(J)I

    move-result v5

    if-ne v5, v1, :cond_2

    invoke-virtual {v4, p3, p4}, Lv0/w;->b(J)I

    move-result v5

    :cond_2
    iput v5, v3, Lv0/m;->g:I

    iget-object v3, v3, Lv0/m;->d:Lb0/H;

    if-eqz v3, :cond_3

    iput-boolean v0, v3, Lb0/H;->b:Z

    iput v0, v3, Lb0/H;->c:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 2

    const/4 v0, 0x0

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
    iput-object v1, p0, Lv0/n;->m:Lu1/C0;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-boolean v3, v1, Lv0/n;->c:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lv0/n;->B:Z

    if-eqz v3, :cond_0

    :goto_0
    const/16 v25, -0x1

    goto/16 :goto_35

    :cond_0
    :goto_1
    iget v3, v1, Lv0/n;->n:I

    const v5, 0x66747970

    iget-object v6, v1, Lv0/n;->h:Ljava/util/ArrayDeque;

    iget-object v12, v1, Lv0/n;->f:LJ/D;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_58

    const-wide/32 v16, 0x40000

    const-wide/16 v18, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v3, v15, :cond_4a

    const-wide/16 v20, 0x8

    const-string v5, "audio/mpeg"

    if-eq v3, v8, :cond_24

    const/4 v6, 0x3

    if-eq v3, v6, :cond_e

    if-ne v3, v7, :cond_d

    iget v3, v1, Lv0/n;->C:I

    iget-object v4, v1, Lv0/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/w;

    iget v6, v1, Lv0/n;->D:I

    iget v7, v3, Lv0/w;->b:I

    iget-object v9, v3, Lv0/w;->f:[J

    iget-object v10, v1, Lv0/n;->l:Ljava/util/ArrayList;

    if-ge v6, v7, :cond_3

    iget-object v4, v3, Lv0/w;->c:[J

    aget-wide v5, v4, v6

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_1

    iput-wide v5, v2, Lb0/r;->a:J

    return v15

    :cond_1
    iget-object v2, v3, Lv0/w;->d:[I

    iget v4, v1, Lv0/n;->D:I

    aget v2, v2, v4

    invoke-virtual {v12, v2}, LJ/D;->K(I)V

    iget-object v4, v12, LJ/D;->a:[B

    invoke-interface {v0, v4, v14, v2}, Lb0/o;->readFully([BII)V

    invoke-virtual {v12}, LJ/D;->H()I

    move-result v0

    invoke-virtual {v12}, LJ/D;->a()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v0, v2}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lv0/n;->D:I

    aget-wide v4, v9, v2

    invoke-static {v4, v5}, LJ/W;->S(J)J

    move-result-wide v17

    iget v2, v1, Lv0/n;->D:I

    add-int/2addr v2, v15

    iget v4, v3, Lv0/w;->b:I

    if-ge v2, v4, :cond_2

    aget-wide v2, v9, v2

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v2

    :goto_2
    move-wide/from16 v19, v2

    goto :goto_3

    :cond_2
    iget-wide v2, v3, Lv0/w;->i:J

    invoke-static {v2, v3}, LJ/W;->S(J)J

    move-result-wide v2

    goto :goto_2

    :goto_3
    new-instance v2, LG/B;

    invoke-direct {v2, v13, v0}, LG/B;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lk0/b;

    const/16 v21, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lk0/b;-><init>(JJZLG/B;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lv0/n;->D:I

    add-int/2addr v0, v15

    iput v0, v1, Lv0/n;->D:I

    return v14

    :cond_3
    iget-object v0, v1, Lv0/n;->G:[Lv0/m;

    array-length v2, v0

    move v6, v14

    :goto_4
    if-ge v6, v2, :cond_b

    aget-object v7, v0, v6

    iget-object v9, v7, Lv0/m;->a:Lv0/t;

    iget v9, v9, Lv0/t;->l:I

    iget-object v11, v3, Lv0/w;->a:Lv0/t;

    iget v11, v11, Lv0/t;->a:I

    if-ne v9, v11, :cond_a

    iget-object v9, v7, Lv0/m;->h:LG/x;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, LG/x;->m:LG/V;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_7

    move/from16 v22, v15

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v15

    iget-object v11, v11, LG/V;->a:[LG/U;

    array-length v8, v11

    :goto_5
    if-ge v14, v8, :cond_6

    aget-object v13, v11, v14

    move-object/from16 v16, v0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move/from16 v17, v2

    const-class v2, LG/U;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v13}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/U;

    instance-of v2, v0, Lk0/a;

    if-nez v2, :cond_4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_5

    invoke-virtual {v15, v0}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v17

    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v16, v0

    move/from16 v17, v2

    invoke-virtual {v15}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_7
    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v22, v15

    :goto_7
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, LG/x;->a()LG/w;

    move-result-object v0

    new-instance v2, LG/V;

    invoke-direct {v2, v12}, LG/V;-><init>(Ljava/util/List;)V

    iput-object v2, v0, LG/w;->l:LG/V;

    new-instance v2, LG/x;

    invoke-direct {v2, v0}, LG/x;-><init>(LG/w;)V

    iget-object v0, v2, LG/x;->p:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v0}, Lb0/a;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    iget-object v0, v7, Lv0/m;->c:Lb0/G;

    invoke-interface {v0, v2}, Lb0/G;->b(LG/x;)V

    const/4 v2, 0x0

    iput-object v2, v7, Lv0/m;->h:LG/x;

    goto :goto_9

    :cond_9
    :goto_8
    iput-object v2, v7, Lv0/m;->h:LG/x;

    goto :goto_9

    :cond_a
    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v22, v15

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v17

    move/from16 v15, v22

    const/4 v8, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_b
    move/from16 v22, v15

    iget v0, v1, Lv0/n;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lv0/n;->C:I

    const/4 v0, 0x0

    iput v0, v1, Lv0/n;->D:I

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget v2, v1, Lv0/n;->C:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_c

    const/4 v2, 0x2

    iput v2, v1, Lv0/n;->n:I

    :cond_c
    return v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    move/from16 v22, v15

    iget-object v3, v1, Lv0/n;->i:Lv0/q;

    iget-object v5, v3, Lv0/q;->a:Ljava/util/ArrayList;

    iget v8, v3, Lv0/q;->b:I

    if-eqz v8, :cond_21

    move/from16 v12, v22

    if-eq v8, v12, :cond_1f

    const/16 v12, 0xb01

    const/16 v13, 0xb04

    const/16 v14, 0xb00

    const/16 v15, 0xb03

    const/16 v4, 0x890

    const/4 v11, 0x2

    if-eq v8, v11, :cond_1b

    if-ne v8, v6, :cond_1a

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v16

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v18

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v20

    sub-long v18, v18, v20

    iget v3, v3, Lv0/q;->c:I

    int-to-long v9, v3

    sub-long v8, v18, v9

    long-to-int v3, v8

    new-instance v8, LJ/D;

    invoke-direct {v8, v3}, LJ/D;-><init>(I)V

    iget-object v9, v8, LJ/D;->a:[B

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10, v3}, Lb0/o;->readFully([BII)V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv0/p;

    iget-wide v9, v3, Lv0/p;->a:J

    sub-long v9, v9, v16

    long-to-int v9, v9

    invoke-virtual {v8, v9}, LJ/D;->N(I)V

    invoke-virtual {v8, v7}, LJ/D;->O(I)V

    invoke-virtual {v8}, LJ/D;->o()I

    move-result v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9, v10}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_b
    const/4 v7, -0x1

    goto :goto_c

    :sswitch_0
    const-string v7, "Super_SlowMotion_BGM"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_b

    :cond_f
    const/4 v7, 0x4

    goto :goto_c

    :sswitch_1
    const-string v7, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_b

    :cond_10
    move v7, v6

    goto :goto_c

    :sswitch_2
    const-string v7, "Super_SlowMotion_Data"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_b

    :cond_11
    const/4 v7, 0x2

    goto :goto_c

    :sswitch_3
    const-string v7, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_b

    :cond_12
    const/4 v7, 0x1

    goto :goto_c

    :sswitch_4
    const-string v7, "SlowMotion_Data"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_b

    :cond_13
    const/4 v7, 0x0

    :goto_c
    packed-switch v7, :pswitch_data_0

    const-string v0, "Invalid SEF name"

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :pswitch_0
    move v7, v12

    goto :goto_d

    :pswitch_1
    move v7, v13

    goto :goto_d

    :pswitch_2
    move v7, v14

    goto :goto_d

    :pswitch_3
    move v7, v15

    goto :goto_d

    :pswitch_4
    move v7, v4

    :goto_d
    iget v3, v3, Lv0/p;->b:I

    add-int/lit8 v9, v9, 0x8

    sub-int/2addr v3, v9

    if-eq v7, v4, :cond_15

    if-eq v7, v14, :cond_18

    if-eq v7, v12, :cond_18

    if-eq v7, v15, :cond_18

    if-ne v7, v13, :cond_14

    goto/16 :goto_f

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v3, v10}, LJ/D;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lv0/q;->e:LC1/e;

    invoke-virtual {v9, v3}, LC1/e;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_17

    sget-object v10, Lv0/q;->d:LC1/e;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, LC1/e;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v6, :cond_16

    const/4 v11, 0x0

    :try_start_0
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v22, 0x1

    add-int/lit8 v10, v10, -0x1

    shl-int v34, v22, v10

    new-instance v29, Lq0/a;

    invoke-direct/range {v29 .. v34}, Lq0/a;-><init>(JJI)V

    move-object/from16 v10, v29

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_16
    const/4 v2, 0x0

    invoke-static {v2, v2}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_17
    new-instance v3, Lq0/b;

    invoke-direct {v3, v7}, Lq0/b;-><init>(Ljava/util/ArrayList;)V

    iget-object v7, v1, Lv0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_f
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x4

    goto/16 :goto_a

    :cond_19
    const-wide/16 v9, 0x0

    iput-wide v9, v2, Lb0/r;->a:J

    :goto_10
    const/4 v11, 0x1

    goto/16 :goto_15

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1b
    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v7

    iget v9, v3, Lv0/q;->c:I

    add-int/lit8 v9, v9, -0x14

    new-instance v10, LJ/D;

    invoke-direct {v10, v9}, LJ/D;-><init>(I)V

    iget-object v11, v10, LJ/D;->a:[B

    const/4 v6, 0x0

    invoke-interface {v0, v11, v6, v9}, Lb0/o;->readFully([BII)V

    const/4 v0, 0x0

    :goto_11
    div-int/lit8 v6, v9, 0xc

    if-ge v0, v6, :cond_1d

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, LJ/D;->O(I)V

    invoke-virtual {v10}, LJ/D;->q()S

    move-result v6

    if-eq v6, v4, :cond_1c

    if-eq v6, v14, :cond_1c

    if-eq v6, v12, :cond_1c

    if-eq v6, v15, :cond_1c

    if-eq v6, v13, :cond_1c

    const/16 v6, 0x8

    invoke-virtual {v10, v6}, LJ/D;->O(I)V

    goto :goto_12

    :cond_1c
    iget v6, v3, Lv0/q;->c:I

    int-to-long v12, v6

    sub-long v12, v7, v12

    invoke-virtual {v10}, LJ/D;->o()I

    move-result v6

    move-wide/from16 v18, v12

    int-to-long v11, v6

    sub-long v12, v18, v11

    invoke-virtual {v10}, LJ/D;->o()I

    move-result v6

    new-instance v11, Lv0/p;

    invoke-direct {v11, v6, v12, v13}, Lv0/p;-><init>(IJ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v0, v0, 0x1

    const/16 v12, 0xb01

    const/16 v13, 0xb04

    goto :goto_11

    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v9, 0x0

    iput-wide v9, v2, Lb0/r;->a:J

    const/4 v6, 0x0

    goto :goto_10

    :cond_1e
    const/4 v0, 0x3

    iput v0, v3, Lv0/q;->b:I

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/p;

    iget-wide v3, v0, Lv0/p;->a:J

    iput-wide v3, v2, Lb0/r;->a:J

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    new-instance v4, LJ/D;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, LJ/D;-><init>(I)V

    iget-object v7, v4, LJ/D;->a:[B

    invoke-interface {v0, v7, v6, v5}, Lb0/o;->readFully([BII)V

    invoke-virtual {v4}, LJ/D;->o()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Lv0/q;->c:I

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_20

    const-wide/16 v9, 0x0

    iput-wide v9, v2, Lb0/r;->a:J

    goto/16 :goto_10

    :cond_20
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v4

    iget v0, v3, Lv0/q;->c:I

    add-int/lit8 v0, v0, -0xc

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lb0/r;->a:J

    const/4 v11, 0x2

    iput v11, v3, Lv0/q;->b:I

    goto/16 :goto_10

    :cond_21
    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v4

    cmp-long v0, v4, v18

    if-eqz v0, :cond_23

    cmp-long v0, v4, v20

    if-gez v0, :cond_22

    goto :goto_13

    :cond_22
    sub-long v4, v4, v20

    goto :goto_14

    :cond_23
    :goto_13
    const-wide/16 v4, 0x0

    :goto_14
    iput-wide v4, v2, Lb0/r;->a:J

    const/4 v11, 0x1

    iput v11, v3, Lv0/q;->b:I

    :goto_15
    iget-wide v2, v2, Lb0/r;->a:J

    const-wide/16 v27, 0x0

    cmp-long v0, v2, v27

    if-nez v0, :cond_57

    const/4 v6, 0x0

    iput v6, v1, Lv0/n;->n:I

    iput v6, v1, Lv0/n;->q:I

    return v11

    :cond_24
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v3

    iget v6, v1, Lv0/n;->s:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_32

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const-wide v18, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    const-wide v33, 0x7fffffffffffffffL

    const-wide v35, 0x7fffffffffffffffL

    :goto_16
    iget-object v15, v1, Lv0/n;->G:[Lv0/m;

    move-wide/from16 v37, v3

    array-length v3, v15

    if-ge v10, v3, :cond_2e

    aget-object v3, v15, v10

    iget v4, v3, Lv0/m;->g:I

    iget-object v15, v3, Lv0/m;->b:Lv0/w;

    move/from16 v26, v8

    iget v8, v15, Lv0/w;->b:I

    if-ne v4, v8, :cond_25

    move/from16 v8, v26

    goto/16 :goto_1b

    :cond_25
    iget-object v8, v15, Lv0/w;->f:[J

    move/from16 v39, v13

    move/from16 v40, v14

    aget-wide v13, v8, v4

    iget-boolean v8, v3, Lv0/m;->e:Z

    if-eqz v8, :cond_26

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_17

    :cond_26
    iget-boolean v3, v3, Lv0/m;->f:Z

    if-eqz v3, :cond_27

    cmp-long v3, v13, v29

    if-gez v3, :cond_27

    move v11, v10

    move-wide/from16 v29, v13

    :cond_27
    :goto_17
    iget-object v3, v15, Lv0/w;->c:[J

    aget-wide v13, v3, v4

    iget-object v3, v1, Lv0/n;->H:[[J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v3, v10

    aget-wide v41, v3, v4

    sub-long v13, v13, v37

    const-wide/16 v27, 0x0

    cmp-long v3, v13, v27

    if-ltz v3, :cond_29

    cmp-long v3, v13, v16

    if-ltz v3, :cond_28

    goto :goto_18

    :cond_28
    const/4 v3, 0x0

    goto :goto_19

    :cond_29
    :goto_18
    const/4 v3, 0x1

    :goto_19
    if-nez v3, :cond_2a

    if-nez v9, :cond_2b

    :cond_2a
    if-ne v3, v9, :cond_2c

    cmp-long v4, v13, v35

    if-gez v4, :cond_2c

    :cond_2b
    move v9, v3

    move-wide/from16 v35, v13

    move-wide/from16 v31, v41

    move v14, v10

    goto :goto_1a

    :cond_2c
    move/from16 v14, v40

    :goto_1a
    cmp-long v4, v41, v33

    if-gez v4, :cond_2d

    move v8, v3

    move v13, v10

    move-wide/from16 v33, v41

    goto :goto_1b

    :cond_2d
    move/from16 v8, v26

    move/from16 v13, v39

    :goto_1b
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, v37

    goto :goto_16

    :cond_2e
    move/from16 v26, v8

    move/from16 v39, v13

    move/from16 v40, v14

    cmp-long v3, v6, v18

    if-eqz v3, :cond_2f

    const/4 v3, -0x1

    if-eq v11, v3, :cond_2f

    cmp-long v3, v29, v6

    if-gtz v3, :cond_2f

    goto :goto_1d

    :cond_2f
    cmp-long v3, v33, v18

    if-eqz v3, :cond_31

    if-eqz v26, :cond_31

    const-wide/32 v3, 0xa00000

    add-long v33, v33, v3

    cmp-long v3, v31, v33

    if-gez v3, :cond_30

    goto :goto_1c

    :cond_30
    move/from16 v11, v39

    goto :goto_1d

    :cond_31
    :goto_1c
    move/from16 v11, v40

    :goto_1d
    iput v11, v1, Lv0/n;->s:I

    const/4 v3, -0x1

    if-ne v11, v3, :cond_33

    move/from16 v25, v3

    goto/16 :goto_35

    :cond_32
    move-wide/from16 v37, v3

    :cond_33
    iget-object v3, v1, Lv0/n;->G:[Lv0/m;

    iget v4, v1, Lv0/n;->s:I

    aget-object v3, v3, v4

    iget-object v4, v3, Lv0/m;->c:Lb0/G;

    iget-object v6, v3, Lv0/m;->b:Lv0/w;

    iget-object v7, v3, Lv0/m;->a:Lv0/t;

    iget v8, v3, Lv0/m;->g:I

    iget-object v9, v6, Lv0/w;->c:[J

    iget-object v10, v6, Lv0/w;->d:[I

    aget-wide v13, v9, v8

    move v11, v8

    iget-wide v8, v1, Lv0/n;->E:J

    add-long/2addr v13, v8

    aget v8, v10, v11

    iget-object v9, v3, Lv0/m;->d:Lb0/H;

    sub-long v18, v13, v37

    iget v15, v1, Lv0/n;->t:I

    move-object/from16 v26, v10

    move/from16 v37, v11

    int-to-long v10, v15

    add-long v18, v18, v10

    const-wide/16 v27, 0x0

    cmp-long v10, v18, v27

    if-ltz v10, :cond_34

    cmp-long v10, v18, v16

    if-ltz v10, :cond_35

    :cond_34
    const/16 v22, 0x1

    goto/16 :goto_26

    :cond_35
    iget v2, v7, Lv0/t;->h:I

    iget v10, v7, Lv0/t;->k:I

    iget-object v7, v7, Lv0/t;->g:LG/x;

    const/4 v11, 0x1

    if-ne v2, v11, :cond_36

    add-long v18, v18, v20

    add-int/lit8 v8, v8, -0x8

    :cond_36
    move-wide/from16 v13, v18

    long-to-int v2, v13

    invoke-interface {v0, v2}, Lb0/o;->p(I)V

    iget-object v2, v7, LG/x;->p:Ljava/lang/String;

    iget-object v11, v7, LG/x;->p:Ljava/lang/String;

    const-string v13, "video/avc"

    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    iget v14, v1, Lv0/n;->b:I

    if-eqz v13, :cond_38

    and-int/lit8 v2, v14, 0x20

    if-eqz v2, :cond_37

    :goto_1e
    const/4 v2, 0x1

    goto :goto_1f

    :cond_37
    const/4 v2, 0x0

    goto :goto_1f

    :cond_38
    const-string v13, "video/hevc"

    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    and-int/lit16 v2, v14, 0x80

    if-eqz v2, :cond_37

    goto :goto_1e

    :cond_39
    const-string v13, "video/apv"

    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1f
    if-nez v2, :cond_3a

    const/4 v2, 0x1

    iput-boolean v2, v1, Lv0/n;->w:Z

    goto :goto_20

    :cond_3a
    const/4 v2, 0x1

    :goto_20
    if-eqz v10, :cond_40

    iget-object v5, v1, Lv0/n;->e:LJ/D;

    iget-object v11, v5, LJ/D;->a:[B

    const/16 v24, 0x0

    aput-byte v24, v11, v24

    aput-byte v24, v11, v2

    const/16 v23, 0x2

    aput-byte v24, v11, v23

    rsub-int/lit8 v2, v10, 0x4

    add-int/2addr v8, v2

    :cond_3b
    :goto_21
    iget v12, v1, Lv0/n;->u:I

    if-ge v12, v8, :cond_3f

    iget v12, v1, Lv0/n;->v:I

    if-nez v12, :cond_3e

    iget-boolean v12, v1, Lv0/n;->w:Z

    if-nez v12, :cond_3c

    invoke-static {v7}, LK/t;->i(LG/x;)I

    move-result v12

    add-int/2addr v12, v10

    aget v13, v26, v37

    iget v14, v1, Lv0/n;->t:I

    sub-int/2addr v13, v14

    if-gt v12, v13, :cond_3c

    invoke-static {v7}, LK/t;->i(LG/x;)I

    move-result v12

    add-int v13, v10, v12

    goto :goto_22

    :cond_3c
    move v13, v10

    const/4 v12, 0x0

    :goto_22
    invoke-interface {v0, v11, v2, v13}, Lb0/o;->readFully([BII)V

    iget v14, v1, Lv0/n;->t:I

    add-int/2addr v14, v13

    iput v14, v1, Lv0/n;->t:I

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, LJ/D;->N(I)V

    invoke-virtual {v5}, LJ/D;->m()I

    move-result v14

    if-ltz v14, :cond_3d

    sub-int/2addr v14, v12

    iput v14, v1, Lv0/n;->v:I

    iget-object v14, v1, Lv0/n;->d:LJ/D;

    invoke-virtual {v14, v13}, LJ/D;->N(I)V

    const/4 v13, 0x4

    invoke-interface {v4, v13, v14}, Lb0/G;->a(ILJ/D;)V

    iget v14, v1, Lv0/n;->u:I

    add-int/2addr v14, v13

    iput v14, v1, Lv0/n;->u:I

    if-lez v12, :cond_3b

    invoke-interface {v4, v12, v5}, Lb0/G;->a(ILJ/D;)V

    iget v13, v1, Lv0/n;->u:I

    add-int/2addr v13, v12

    iput v13, v1, Lv0/n;->u:I

    invoke-static {v11, v12, v7}, LK/t;->g([BILG/x;)Z

    move-result v12

    if-eqz v12, :cond_3b

    const/4 v12, 0x1

    iput-boolean v12, v1, Lv0/n;->w:Z

    goto :goto_21

    :cond_3d
    const-string v0, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v2, v0}, LG/X;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_3e
    const/4 v13, 0x0

    invoke-interface {v4, v0, v12, v13}, Lb0/G;->g(LG/o;IZ)I

    move-result v12

    iget v13, v1, Lv0/n;->t:I

    add-int/2addr v13, v12

    iput v13, v1, Lv0/n;->t:I

    iget v13, v1, Lv0/n;->u:I

    add-int/2addr v13, v12

    iput v13, v1, Lv0/n;->u:I

    iget v13, v1, Lv0/n;->v:I

    sub-int/2addr v13, v12

    iput v13, v1, Lv0/n;->v:I

    goto :goto_21

    :cond_3f
    move/from16 v33, v8

    goto/16 :goto_24

    :cond_40
    iget-object v2, v3, Lv0/m;->h:LG/x;

    const-string v7, "audio/ac4"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget v2, v1, Lv0/n;->u:I

    if-nez v2, :cond_41

    invoke-static {v8, v12}, Lb0/a;->f(ILJ/D;)V

    const/4 v2, 0x7

    invoke-interface {v4, v2, v12}, Lb0/G;->a(ILJ/D;)V

    iget v5, v1, Lv0/n;->u:I

    add-int/2addr v5, v2

    iput v5, v1, Lv0/n;->u:I

    :cond_41
    add-int/lit8 v8, v8, 0x7

    goto :goto_23

    :cond_42
    if-eqz v2, :cond_44

    invoke-static {v11, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, LJ/D;->K(I)V

    iget-object v5, v12, LJ/D;->a:[B

    const/4 v10, 0x0

    invoke-interface {v0, v10, v5, v13}, Lb0/o;->l(I[BI)V

    invoke-interface {v0}, Lb0/o;->o()V

    new-instance v5, LK/A;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v12}, LJ/D;->m()I

    move-result v7

    invoke-virtual {v5, v7}, LK/A;->a(I)Z

    move-result v7

    if-eqz v7, :cond_43

    iget-object v7, v2, LG/x;->p:Ljava/lang/String;

    iget-object v10, v5, LK/A;->g:Ljava/io/Serializable;

    check-cast v10, Ljava/lang/String;

    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    invoke-virtual {v2}, LG/x;->a()LG/w;

    move-result-object v2

    iget-object v5, v5, LK/A;->g:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, LG/w;->o:Ljava/lang/String;

    new-instance v5, LG/x;

    invoke-direct {v5, v2}, LG/x;-><init>(LG/w;)V

    move-object v2, v5

    :cond_43
    invoke-interface {v4, v2}, Lb0/G;->b(LG/x;)V

    const/4 v5, 0x0

    iput-object v5, v3, Lv0/m;->h:LG/x;

    goto :goto_23

    :cond_44
    const/4 v5, 0x0

    if-eqz v2, :cond_45

    invoke-static {v11}, Lb0/a;->n(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-static {v0, v8, v2}, Lb0/a;->y(Lb0/o;ILG/x;)LG/x;

    move-result-object v2

    invoke-interface {v4, v2}, Lb0/G;->b(LG/x;)V

    iput-object v5, v3, Lv0/m;->h:LG/x;

    goto :goto_23

    :cond_45
    if-eqz v9, :cond_46

    invoke-virtual {v9, v0}, Lb0/H;->c(Lb0/o;)V

    :cond_46
    :goto_23
    iget v2, v1, Lv0/n;->u:I

    if-ge v2, v8, :cond_3f

    sub-int v2, v8, v2

    const/4 v13, 0x0

    invoke-interface {v4, v0, v2, v13}, Lb0/G;->g(LG/o;IZ)I

    move-result v2

    iget v5, v1, Lv0/n;->t:I

    add-int/2addr v5, v2

    iput v5, v1, Lv0/n;->t:I

    iget v5, v1, Lv0/n;->u:I

    add-int/2addr v5, v2

    iput v5, v1, Lv0/n;->u:I

    iget v5, v1, Lv0/n;->v:I

    sub-int/2addr v5, v2

    iput v5, v1, Lv0/n;->v:I

    goto :goto_23

    :goto_24
    iget-object v0, v6, Lv0/w;->f:[J

    aget-wide v30, v0, v37

    iget-object v0, v6, Lv0/w;->g:[I

    aget v0, v0, v37

    iget-boolean v2, v1, Lv0/n;->w:Z

    if-nez v2, :cond_47

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    :cond_47
    move/from16 v32, v0

    if-eqz v9, :cond_48

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v9

    move/from16 v34, v33

    move/from16 v33, v32

    move-wide/from16 v31, v30

    move-object/from16 v30, v4

    invoke-virtual/range {v29 .. v36}, Lb0/H;->b(Lb0/G;JIIILb0/F;)V

    move-object/from16 v2, v29

    move-object/from16 v0, v30

    const/16 v22, 0x1

    add-int/lit8 v8, v37, 0x1

    iget v4, v6, Lv0/w;->b:I

    if-ne v8, v4, :cond_49

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lb0/H;->a(Lb0/G;Lb0/F;)V

    goto :goto_25

    :cond_48
    move-object v0, v4

    const/16 v22, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v35}, Lb0/G;->f(JIIILb0/F;)V

    :cond_49
    :goto_25
    iget v0, v3, Lv0/m;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lv0/m;->g:I

    const/4 v3, -0x1

    iput v3, v1, Lv0/n;->s:I

    const/4 v13, 0x0

    iput v13, v1, Lv0/n;->t:I

    iput v13, v1, Lv0/n;->u:I

    iput v13, v1, Lv0/n;->v:I

    iput-boolean v13, v1, Lv0/n;->w:Z

    return v13

    :goto_26
    iput-wide v13, v2, Lb0/r;->a:J

    return v22

    :cond_4a
    iget-wide v3, v1, Lv0/n;->p:J

    iget v7, v1, Lv0/n;->q:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, v1, Lv0/n;->r:LJ/D;

    if-eqz v9, :cond_51

    iget-object v10, v9, LJ/D;->a:[B

    iget v11, v1, Lv0/n;->q:I

    long-to-int v3, v3

    invoke-interface {v0, v10, v11, v3}, Lb0/o;->readFully([BII)V

    iget v3, v1, Lv0/n;->o:I

    if-ne v3, v5, :cond_50

    const/4 v11, 0x1

    iput-boolean v11, v1, Lv0/n;->x:Z

    const/16 v5, 0x8

    invoke-virtual {v9, v5}, LJ/D;->N(I)V

    invoke-virtual {v9}, LJ/D;->m()I

    move-result v3

    const v4, 0x71742020

    if-eq v3, v4, :cond_4b

    const/4 v3, 0x0

    goto :goto_27

    :cond_4b
    const/4 v3, 0x1

    :goto_27
    if-eqz v3, :cond_4c

    goto :goto_29

    :cond_4c
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, LJ/D;->O(I)V

    :cond_4d
    invoke-virtual {v9}, LJ/D;->a()I

    move-result v3

    if-lez v3, :cond_4f

    invoke-virtual {v9}, LJ/D;->m()I

    move-result v3

    if-eq v3, v4, :cond_4e

    const/4 v3, 0x0

    goto :goto_28

    :cond_4e
    const/4 v3, 0x1

    :goto_28
    if-eqz v3, :cond_4d

    goto :goto_29

    :cond_4f
    const/4 v3, 0x0

    :goto_29
    iput v3, v1, Lv0/n;->I:I

    goto :goto_2a

    :cond_50
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK/d;

    new-instance v4, LK/e;

    iget v5, v1, Lv0/n;->o:I

    invoke-direct {v4, v5, v9}, LK/e;-><init>(ILJ/D;)V

    iget-object v3, v3, LK/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_51
    iget-boolean v5, v1, Lv0/n;->x:Z

    if-nez v5, :cond_52

    iget v5, v1, Lv0/n;->o:I

    const v6, 0x6d646174

    if-ne v5, v6, :cond_52

    const/4 v11, 0x1

    iput v11, v1, Lv0/n;->I:I

    :cond_52
    cmp-long v5, v3, v16

    if-gez v5, :cond_54

    long-to-int v3, v3

    invoke-interface {v0, v3}, Lb0/o;->p(I)V

    :cond_53
    :goto_2a
    const/4 v3, 0x0

    goto :goto_2b

    :cond_54
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, Lb0/r;->a:J

    const/4 v3, 0x1

    :goto_2b
    invoke-virtual {v1, v7, v8}, Lv0/n;->g(J)V

    iget-boolean v4, v1, Lv0/n;->y:Z

    if-eqz v4, :cond_55

    const/4 v11, 0x1

    iput-boolean v11, v1, Lv0/n;->A:Z

    iget-wide v3, v1, Lv0/n;->z:J

    iput-wide v3, v2, Lb0/r;->a:J

    const/4 v13, 0x0

    iput-boolean v13, v1, Lv0/n;->y:Z

    const/4 v3, 0x1

    :cond_55
    if-eqz v3, :cond_56

    iget v3, v1, Lv0/n;->n:I

    const/4 v11, 0x2

    if-eq v3, v11, :cond_56

    const/4 v14, 0x1

    goto :goto_2c

    :cond_56
    const/4 v14, 0x0

    :goto_2c
    if-eqz v14, :cond_0

    const/4 v11, 0x1

    :cond_57
    return v11

    :cond_58
    move v11, v15

    const-wide/16 v18, -0x1

    iget v3, v1, Lv0/n;->q:I

    iget-object v4, v1, Lv0/n;->g:LJ/D;

    if-nez v3, :cond_5a

    iget-object v3, v4, LJ/D;->a:[B

    const/16 v7, 0x8

    const/4 v13, 0x0

    invoke-interface {v0, v3, v13, v7, v11}, Lb0/o;->f([BIIZ)Z

    move-result v3

    if-nez v3, :cond_59

    move v14, v13

    goto/16 :goto_34

    :cond_59
    iput v7, v1, Lv0/n;->q:I

    invoke-virtual {v4, v13}, LJ/D;->N(I)V

    invoke-virtual {v4}, LJ/D;->C()J

    move-result-wide v7

    iput-wide v7, v1, Lv0/n;->p:J

    invoke-virtual {v4}, LJ/D;->m()I

    move-result v3

    iput v3, v1, Lv0/n;->o:I

    :cond_5a
    iget-wide v7, v1, Lv0/n;->p:J

    const-wide/16 v9, 0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_5b

    iget-object v3, v4, LJ/D;->a:[B

    const/16 v7, 0x8

    invoke-interface {v0, v3, v7, v7}, Lb0/o;->readFully([BII)V

    iget v3, v1, Lv0/n;->q:I

    add-int/2addr v3, v7

    iput v3, v1, Lv0/n;->q:I

    invoke-virtual {v4}, LJ/D;->G()J

    move-result-wide v7

    iput-wide v7, v1, Lv0/n;->p:J

    goto :goto_2d

    :cond_5b
    const-wide/16 v27, 0x0

    cmp-long v3, v7, v27

    if-nez v3, :cond_5d

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v7

    cmp-long v3, v7, v18

    if-nez v3, :cond_5c

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK/d;

    if-eqz v3, :cond_5c

    iget-wide v7, v3, LK/d;->g:J

    :cond_5c
    cmp-long v3, v7, v18

    if-eqz v3, :cond_5d

    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget v3, v1, Lv0/n;->q:I

    int-to-long v9, v3

    add-long/2addr v7, v9

    iput-wide v7, v1, Lv0/n;->p:J

    :cond_5d
    :goto_2d
    iget-wide v7, v1, Lv0/n;->p:J

    iget v3, v1, Lv0/n;->q:I

    int-to-long v9, v3

    cmp-long v7, v7, v9

    if-gez v7, :cond_5f

    iget v7, v1, Lv0/n;->o:I

    const v8, 0x66726565

    if-ne v7, v8, :cond_5e

    const/16 v7, 0x8

    if-ne v3, v7, :cond_5e

    iput-wide v9, v1, Lv0/n;->p:J

    goto :goto_2e

    :cond_5e
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, LG/X;->b(Ljava/lang/String;)LG/X;

    move-result-object v0

    throw v0

    :cond_5f
    :goto_2e
    iget v7, v1, Lv0/n;->o:I

    const v8, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v7, v8, :cond_60

    const v8, 0x7472616b

    if-eq v7, v8, :cond_60

    const v8, 0x6d646961

    if-eq v7, v8, :cond_60

    const v8, 0x6d696e66

    if-eq v7, v8, :cond_60

    const v8, 0x7374626c

    if-eq v7, v8, :cond_60

    const v8, 0x65647473

    if-eq v7, v8, :cond_60

    if-eq v7, v9, :cond_60

    const v8, 0x61787465

    if-eq v7, v8, :cond_60

    const v8, 0x74726566

    if-ne v7, v8, :cond_61

    :cond_60
    const/4 v11, 0x1

    goto/16 :goto_32

    :cond_61
    const v6, 0x6d646864

    if-eq v7, v6, :cond_62

    const v6, 0x6d766864

    if-eq v7, v6, :cond_62

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v7, v6, :cond_62

    const v6, 0x73747364

    if-eq v7, v6, :cond_62

    const v6, 0x73747473

    if-eq v7, v6, :cond_62

    const v6, 0x73747373

    if-eq v7, v6, :cond_62

    const v6, 0x63747473

    if-eq v7, v6, :cond_62

    const v6, 0x656c7374

    if-eq v7, v6, :cond_62

    const v6, 0x73747363

    if-eq v7, v6, :cond_62

    const v6, 0x7374737a

    if-eq v7, v6, :cond_62

    const v6, 0x73747a32

    if-eq v7, v6, :cond_62

    const v6, 0x7374636f

    if-eq v7, v6, :cond_62

    const v6, 0x636f3634

    if-eq v7, v6, :cond_62

    const v6, 0x746b6864

    if-eq v7, v6, :cond_62

    if-eq v7, v5, :cond_62

    const v5, 0x75647461

    if-eq v7, v5, :cond_62

    const v5, 0x6b657973

    if-eq v7, v5, :cond_62

    const v5, 0x696c7374

    if-eq v7, v5, :cond_62

    const v5, 0x63686170

    if-ne v7, v5, :cond_63

    :cond_62
    const/16 v7, 0x8

    goto :goto_2f

    :cond_63
    const/4 v5, 0x0

    iput-object v5, v1, Lv0/n;->r:LJ/D;

    const/4 v11, 0x1

    iput v11, v1, Lv0/n;->n:I

    goto/16 :goto_33

    :goto_2f
    if-ne v3, v7, :cond_64

    const/4 v3, 0x1

    goto :goto_30

    :cond_64
    const/4 v3, 0x0

    :goto_30
    invoke-static {v3}, LF1/i;->o(Z)V

    iget-wide v5, v1, Lv0/n;->p:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_65

    const/4 v3, 0x1

    goto :goto_31

    :cond_65
    const/4 v3, 0x0

    :goto_31
    invoke-static {v3}, LF1/i;->o(Z)V

    new-instance v3, LJ/D;

    iget-wide v5, v1, Lv0/n;->p:J

    long-to-int v5, v5

    invoke-direct {v3, v5}, LJ/D;-><init>(I)V

    iget-object v4, v4, LJ/D;->a:[B

    iget-object v5, v3, LJ/D;->a:[B

    const/16 v7, 0x8

    const/4 v13, 0x0

    invoke-static {v4, v13, v5, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v1, Lv0/n;->r:LJ/D;

    const/4 v11, 0x1

    iput v11, v1, Lv0/n;->n:I

    goto :goto_33

    :goto_32
    invoke-interface {v0}, Lb0/o;->getPosition()J

    move-result-wide v3

    iget-wide v7, v1, Lv0/n;->p:J

    add-long/2addr v3, v7

    iget v5, v1, Lv0/n;->q:I

    int-to-long v13, v5

    sub-long/2addr v3, v13

    cmp-long v5, v7, v13

    if-eqz v5, :cond_66

    iget v5, v1, Lv0/n;->o:I

    if-ne v5, v9, :cond_66

    const/16 v7, 0x8

    invoke-virtual {v12, v7}, LJ/D;->K(I)V

    iget-object v5, v12, LJ/D;->a:[B

    const/4 v13, 0x0

    invoke-interface {v0, v13, v5, v7}, Lb0/o;->l(I[BI)V

    invoke-static {v12}, Lv0/d;->a(LJ/D;)V

    iget v5, v12, LJ/D;->b:I

    invoke-interface {v0, v5}, Lb0/o;->p(I)V

    invoke-interface {v0}, Lb0/o;->o()V

    :cond_66
    new-instance v5, LK/d;

    iget v7, v1, Lv0/n;->o:I

    invoke-direct {v5, v7, v3, v4}, LK/d;-><init>(IJ)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v1, Lv0/n;->p:J

    iget v7, v1, Lv0/n;->q:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_67

    invoke-virtual {v1, v3, v4}, Lv0/n;->g(J)V

    goto :goto_33

    :cond_67
    const/4 v13, 0x0

    iput v13, v1, Lv0/n;->n:I

    iput v13, v1, Lv0/n;->q:I

    :goto_33
    move v14, v11

    :goto_34
    if-nez v14, :cond_68

    goto/16 :goto_0

    :goto_35
    return v25

    :cond_68
    const/16 v25, -0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lv0/n;->m:Lu1/C0;

    return-object v0
.end method

.method public final g(J)V
    .locals 44

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lv0/n;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK/d;

    iget-wide v6, v2, LK/d;->g:J

    cmp-long v2, v6, p1

    if-nez v2, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, LK/d;

    iget v2, v6, LK/f;->f:I

    const v7, 0x6d6f6f76

    if-ne v2, v7, :cond_43

    const v2, 0x6d657461

    invoke-virtual {v6, v2}, LK/d;->h(I)LK/d;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    iget-object v9, v0, Lv0/n;->k:Ljava/util/ArrayList;

    iget-boolean v10, v0, Lv0/n;->c:Z

    const-wide/16 v16, 0x0

    iget v11, v0, Lv0/n;->b:I

    if-eqz v2, :cond_15

    invoke-static {v2}, Lv0/d;->f(LK/d;)LG/V;

    move-result-object v2

    iget-boolean v12, v0, Lv0/n;->A:Z

    const-class v13, LK/b;

    if-eqz v12, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, LG/V;->a:[LG/U;

    array-length v12, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_4

    aget-object v15, v7, v14

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v13, v15}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/U;

    move-object v15, v4

    check-cast v15, LK/b;

    iget-object v15, v15, LK/b;->a:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v3, "auxiliary.tracks.interleaved"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_3
    check-cast v4, LK/b;

    if-eqz v4, :cond_5

    iget-object v3, v4, LK/b;->b:[B

    aget-byte v3, v3, v18

    if-nez v3, :cond_5

    iget-wide v3, v0, Lv0/n;->z:J

    const-wide/16 v14, 0x10

    add-long/2addr v3, v14

    iput-wide v3, v0, Lv0/n;->E:J

    :cond_5
    array-length v3, v7

    move/from16 v4, v18

    :goto_4
    if-ge v4, v3, :cond_8

    aget-object v12, v7, v4

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LG/U;

    move-object v14, v12

    check-cast v14, LK/b;

    iget-object v14, v14, LK/b;->a:Ljava/lang/String;

    const-string v15, "auxiliary.tracks.map"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_6
    check-cast v12, LK/b;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, LK/b;->d()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v4, v18

    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_b

    if-eq v12, v8, :cond_a

    const/4 v13, 0x3

    if-eq v12, v5, :cond_c

    if-eq v12, v13, :cond_9

    move/from16 v13, v18

    goto :goto_8

    :cond_9
    const/4 v13, 0x4

    goto :goto_8

    :cond_a
    move v13, v5

    goto :goto_8

    :cond_b
    move v13, v8

    :cond_c
    :goto_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    :goto_9
    move-object v3, v7

    goto :goto_d

    :cond_e
    const/16 v18, 0x0

    if-eqz v2, :cond_d

    and-int/lit8 v3, v11, 0x40

    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    iget-object v3, v2, LG/V;->a:[LG/U;

    array-length v4, v3

    move/from16 v12, v18

    :goto_a
    if-ge v12, v4, :cond_12

    aget-object v14, v3, v12

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-virtual {v13, v14}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LG/U;

    move-object v15, v14

    check-cast v15, LK/b;

    iget-object v15, v15, LK/b;->a:Ljava/lang/String;

    const-string v5, "auxiliary.tracks.offset"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_b
    if-eqz v14, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    goto :goto_a

    :cond_12
    const/4 v14, 0x0

    :goto_c
    check-cast v14, LK/b;

    if-nez v14, :cond_13

    goto :goto_9

    :cond_13
    new-instance v3, LJ/D;

    iget-object v4, v14, LK/b;->b:[B

    invoke-direct {v3, v4}, LJ/D;-><init>([B)V

    invoke-virtual {v3}, LJ/D;->G()J

    move-result-wide v3

    cmp-long v5, v3, v16

    if-gtz v5, :cond_14

    goto :goto_9

    :cond_14
    iput-wide v3, v0, Lv0/n;->z:J

    iput-boolean v8, v0, Lv0/n;->y:Z

    move-object/from16 v23, v1

    move-object/from16 v26, v9

    move/from16 v22, v10

    goto/16 :goto_34

    :cond_15
    const/16 v18, 0x0

    move-object v3, v7

    const/4 v2, 0x0

    :goto_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Lv0/n;->I:I

    if-ne v5, v8, :cond_16

    move v12, v8

    goto :goto_e

    :cond_16
    move/from16 v12, v18

    :goto_e
    new-instance v7, Lb0/v;

    invoke-direct {v7}, Lb0/v;-><init>()V

    const v5, 0x75647461

    invoke-virtual {v6, v5}, LK/d;->i(I)LK/e;

    move-result-object v5

    if-eqz v5, :cond_18

    and-int/lit16 v13, v11, 0x200

    if-eqz v13, :cond_17

    move v13, v8

    goto :goto_f

    :cond_17
    move/from16 v13, v18

    :goto_f
    invoke-static {v5, v13}, Lv0/d;->k(LK/e;Z)LG/V;

    move-result-object v5

    invoke-virtual {v7, v5}, Lb0/v;->b(LG/V;)V

    goto :goto_10

    :cond_18
    const/4 v5, 0x0

    :goto_10
    new-instance v15, LG/V;

    const v13, 0x6d766864

    invoke-virtual {v6, v13}, LK/d;->i(I)LK/e;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, LK/e;->g:LJ/D;

    invoke-static {v13}, Lv0/d;->g(LJ/D;)LK/i;

    move-result-object v13

    new-array v14, v8, [LG/U;

    aput-object v13, v14, v18

    invoke-direct {v15, v14}, LG/V;-><init>([LG/U;)V

    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_19

    move v13, v11

    move v11, v8

    goto :goto_11

    :cond_19
    move v13, v11

    move/from16 v11, v18

    :goto_11
    new-instance v14, LI0/E;

    const/16 v8, 0x1d

    invoke-direct {v14, v0, v8}, LI0/E;-><init>(Ljava/lang/Object;I)V

    move v8, v13

    move-object v13, v14

    iget-boolean v14, v0, Lv0/n;->c:Z

    move/from16 v21, v8

    move-object/from16 v20, v9

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v22, v10

    const/4 v10, 0x0

    move-object/from16 v23, v1

    const/4 v1, 0x1

    invoke-static/range {v6 .. v14}, Lv0/d;->j(LK/d;Lb0/v;JLG/s;ZZLt1/j;Z)Ljava/util/ArrayList;

    move-result-object v6

    iget-boolean v8, v0, Lv0/n;->A:Z

    if-eqz v8, :cond_1b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_1a

    move v8, v1

    goto :goto_12

    :cond_1a
    move/from16 v8, v18

    :goto_12
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "The number of auxiliary track types from metadata ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is not same as the number of auxiliary tracks ("

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, LF1/i;->n(Ljava/lang/String;Z)V

    :cond_1b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1c
    :goto_13
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv0/w;

    iget-object v12, v10, Lv0/w;->a:Lv0/t;

    iget v12, v12, Lv0/t;->l:I

    if-eq v12, v11, :cond_1c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    iget-object v10, v10, Lv0/w;->a:Lv0/t;

    iget v10, v10, Lv0/t;->l:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1d
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv0/w;

    iget-object v12, v10, Lv0/w;->a:Lv0/t;

    iget v12, v12, Lv0/t;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    move-object/from16 v12, v20

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1e
    move-object/from16 v12, v20

    :goto_15
    move-object/from16 v20, v12

    goto :goto_14

    :cond_1f
    move-object/from16 v12, v20

    invoke-static {v6}, Lv0/r;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    move v1, v11

    move/from16 v13, v18

    move v14, v13

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_16
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_3b

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lv0/w;

    move-object/from16 v25, v6

    iget v6, v11, Lv0/w;->b:I

    move/from16 v26, v6

    iget-object v6, v11, Lv0/w;->f:[J

    move-object/from16 v27, v8

    iget v8, v11, Lv0/w;->e:I

    move/from16 v28, v8

    iget-object v8, v11, Lv0/w;->a:Lv0/t;

    if-nez v26, :cond_20

    move-object/from16 v30, v4

    move-object/from16 v26, v12

    goto :goto_17

    :cond_20
    move-object/from16 v26, v12

    iget-boolean v12, v8, Lv0/t;->m:Z

    move/from16 v29, v12

    iget-object v12, v8, Lv0/t;->g:LG/x;

    move-object/from16 v30, v4

    iget v4, v8, Lv0/t;->l:I

    move/from16 v31, v4

    iget v4, v8, Lv0/t;->b:I

    if-nez v29, :cond_21

    :goto_17
    move v4, v1

    move-object v8, v2

    move-object/from16 v28, v3

    move-object v2, v5

    move-object v11, v15

    move-object/from16 v5, v30

    const/4 v1, -0x1

    goto/16 :goto_2f

    :cond_21
    move-object/from16 v29, v2

    new-instance v2, Lv0/m;

    move-object/from16 v32, v5

    iget-object v5, v0, Lv0/n;->F:Lb0/p;

    add-int/lit8 v33, v14, 0x1

    invoke-interface {v5, v14, v4}, Lb0/p;->v(II)Lb0/G;

    move-result-object v5

    invoke-direct {v2, v8, v11, v5}, Lv0/m;-><init>(Lv0/t;Lv0/w;Lb0/G;)V

    move-object/from16 v34, v15

    iget-wide v14, v8, Lv0/t;->e:J

    cmp-long v8, v14, v19

    if-eqz v8, :cond_22

    goto :goto_18

    :cond_22
    iget-wide v14, v11, Lv0/w;->i:J

    :goto_18
    invoke-interface {v5, v14, v15}, Lb0/G;->d(J)V

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v5, v12, LG/x;->p:Ljava/lang/String;

    const-string v8, "audio/true-hd"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    mul-int/lit8 v8, v28, 0x10

    :goto_19
    move-wide/from16 v35, v9

    goto :goto_1a

    :cond_23
    add-int/lit8 v8, v28, 0x1e

    goto :goto_19

    :goto_1a
    invoke-virtual {v12}, LG/x;->a()LG/w;

    move-result-object v9

    iput v8, v9, LG/w;->p:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_27

    iget v8, v12, LG/x;->f:I

    and-int/lit8 v10, v21, 0x8

    if-eqz v10, :cond_25

    const/4 v10, -0x1

    if-ne v1, v10, :cond_24

    const/4 v10, 0x1

    goto :goto_1b

    :cond_24
    const/4 v10, 0x2

    :goto_1b
    or-int/2addr v8, v10

    :cond_25
    iget-boolean v10, v0, Lv0/n;->A:Z

    if-eqz v10, :cond_26

    const v10, 0x8000

    or-int/2addr v8, v10

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, LG/w;->h:I

    :cond_26
    iput v8, v9, LG/w;->f:I

    :cond_27
    iget-object v8, v11, Lv0/w;->h:[I

    iget-boolean v10, v11, Lv0/w;->j:Z

    move-object/from16 v28, v3

    iget-object v3, v12, LG/x;->p:Ljava/lang/String;

    invoke-static {v3}, LG/W;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    array-length v3, v6

    if-lez v3, :cond_2f

    if-eqz v10, :cond_28

    iget v3, v11, Lv0/w;->b:I

    :goto_1c
    move-object/from16 v37, v6

    goto :goto_1d

    :cond_28
    array-length v3, v8

    goto :goto_1c

    :goto_1d
    const/16 v6, 0x14

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    cmp-long v6, v14, v19

    if-eqz v6, :cond_29

    const/4 v6, 0x1

    goto :goto_1e

    :cond_29
    move/from16 v6, v18

    :goto_1e
    invoke-static {v6}, LF1/i;->o(Z)V

    move v6, v1

    move-object/from16 v38, v2

    const-wide/32 v1, 0x989680

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide/from16 v39, v1

    move/from16 v14, v18

    move v15, v14

    const/4 v1, -0x1

    :goto_1f
    if-ge v14, v3, :cond_2b

    if-eqz v10, :cond_2a

    move v2, v14

    goto :goto_20

    :cond_2a
    aget v2, v8, v14

    :goto_20
    aget-wide v41, v37, v2

    cmp-long v43, v41, v39

    if-lez v43, :cond_2c

    :cond_2b
    const/4 v10, -0x1

    goto :goto_21

    :cond_2c
    cmp-long v41, v41, v16

    if-ltz v41, :cond_2d

    move/from16 v41, v2

    iget-object v2, v11, Lv0/w;->d:[I

    aget v2, v2, v41

    if-le v2, v15, :cond_2d

    move v15, v2

    move/from16 v1, v41

    :cond_2d
    add-int/lit8 v14, v14, 0x1

    goto :goto_1f

    :goto_21
    if-ne v1, v10, :cond_2e

    :goto_22
    move-wide/from16 v1, v19

    goto :goto_23

    :cond_2e
    aget-wide v1, v37, v1

    goto :goto_23

    :cond_2f
    move v6, v1

    move-object/from16 v38, v2

    goto :goto_22

    :goto_23
    cmp-long v3, v1, v19

    if-eqz v3, :cond_30

    new-instance v3, LG/V;

    new-instance v8, Lk0/e;

    invoke-direct {v8, v1, v2}, Lk0/e;-><init>(J)V

    const/4 v1, 0x1

    new-array v2, v1, [LG/U;

    aput-object v8, v2, v18

    invoke-direct {v3, v2}, LG/V;-><init>([LG/U;)V

    goto :goto_24

    :cond_30
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_24
    if-ne v4, v1, :cond_31

    iget v1, v7, Lb0/v;->a:I

    const/4 v10, -0x1

    if-eq v1, v10, :cond_31

    iget v2, v7, Lb0/v;->b:I

    if-eq v2, v10, :cond_31

    iput v1, v9, LG/w;->M:I

    iput v2, v9, LG/w;->N:I

    :cond_31
    iget-object v1, v12, LG/x;->m:LG/V;

    iget-object v2, v0, Lv0/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_32

    const/4 v8, 0x0

    :goto_25
    move-object/from16 v2, v32

    move-object/from16 v11, v34

    goto :goto_26

    :cond_32
    new-instance v8, LG/V;

    invoke-direct {v8, v2}, LG/V;-><init>(Ljava/util/List;)V

    goto :goto_25

    :goto_26
    filled-new-array {v8, v2, v11, v3}, [LG/V;

    move-result-object v3

    move-object/from16 v8, v29

    invoke-static {v4, v8, v9, v1, v3}, Lv0/r;->k(ILG/V;LG/w;LG/V;[LG/V;)V

    invoke-static/range {v27 .. v27}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, LG/w;->n:Ljava/lang/String;

    new-instance v1, LG/x;

    invoke-direct {v1, v9}, LG/x;-><init>(LG/w;)V

    const-string v3, "audio/mpeg"

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-static {v5}, Lb0/a;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_27

    :cond_33
    move/from16 v3, v18

    goto :goto_28

    :cond_34
    :goto_27
    const/4 v3, 0x1

    :goto_28
    if-nez v22, :cond_36

    move/from16 v5, v31

    const/4 v10, -0x1

    if-eq v5, v10, :cond_36

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv0/w;

    iget-object v10, v10, Lv0/w;->a:Lv0/t;

    iget v10, v10, Lv0/t;->a:I

    if-ne v10, v5, :cond_35

    const/4 v5, 0x1

    goto :goto_29

    :cond_36
    move/from16 v5, v18

    :goto_29
    if-nez v3, :cond_37

    if-eqz v5, :cond_38

    :cond_37
    move-object/from16 v3, v38

    goto :goto_2b

    :cond_38
    move-object/from16 v3, v38

    iget-object v5, v3, Lv0/m;->c:Lb0/G;

    invoke-interface {v5, v1}, Lb0/G;->b(LG/x;)V

    :goto_2a
    const/4 v1, 0x2

    goto :goto_2c

    :goto_2b
    iput-object v1, v3, Lv0/m;->h:LG/x;

    goto :goto_2a

    :goto_2c
    if-ne v4, v1, :cond_39

    const/4 v1, -0x1

    if-ne v6, v1, :cond_3a

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2d
    move-object/from16 v5, v30

    goto :goto_2e

    :cond_39
    const/4 v1, -0x1

    :cond_3a
    move v4, v6

    goto :goto_2d

    :goto_2e
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v33

    move-wide/from16 v9, v35

    :goto_2f
    add-int/lit8 v13, v13, 0x1

    move v1, v4

    move-object v4, v5

    move-object v15, v11

    move-object/from16 v6, v25

    move-object/from16 v12, v26

    move-object/from16 v3, v28

    move-object v5, v2

    move-object v2, v8

    move-object/from16 v8, v27

    goto/16 :goto_16

    :cond_3b
    move v6, v1

    move-object v5, v4

    move-object/from16 v26, v12

    move/from16 v3, v18

    const/4 v1, -0x1

    new-array v2, v3, [Lv0/m;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lv0/m;

    iput-object v2, v0, Lv0/n;->G:[Lv0/m;

    if-nez v22, :cond_40

    array-length v3, v2

    new-array v15, v3, [[J

    array-length v3, v2

    new-array v3, v3, [I

    array-length v4, v2

    new-array v4, v4, [J

    array-length v5, v2

    new-array v5, v5, [Z

    const/4 v7, 0x0

    :goto_30
    array-length v8, v2

    if-ge v7, v8, :cond_3c

    aget-object v8, v2, v7

    iget-object v8, v8, Lv0/m;->b:Lv0/w;

    iget v8, v8, Lv0/w;->b:I

    new-array v8, v8, [J

    aput-object v8, v15, v7

    aget-object v8, v2, v7

    iget-object v8, v8, Lv0/m;->b:Lv0/w;

    iget-object v8, v8, Lv0/w;->f:[J

    const/16 v18, 0x0

    aget-wide v11, v8, v18

    aput-wide v11, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_3c
    const/4 v7, 0x0

    :goto_31
    array-length v8, v2

    if-ge v7, v8, :cond_41

    const-wide v11, 0x7fffffffffffffffL

    move-wide v12, v11

    const/4 v8, 0x0

    move v11, v1

    :goto_32
    array-length v14, v2

    if-ge v8, v14, :cond_3e

    aget-boolean v14, v5, v8

    if-nez v14, :cond_3d

    aget-wide v19, v4, v8

    cmp-long v14, v19, v12

    if-gtz v14, :cond_3d

    move v11, v8

    move-wide/from16 v12, v19

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_3e
    aget v8, v3, v11

    aget-object v12, v15, v11

    aput-wide v16, v12, v8

    aget-object v13, v2, v11

    iget-object v13, v13, Lv0/m;->b:Lv0/w;

    iget-object v14, v13, Lv0/w;->d:[I

    aget v14, v14, v8

    move-object/from16 v19, v2

    int-to-long v1, v14

    add-long v16, v16, v1

    const/16 v24, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v3, v11

    array-length v1, v12

    if-ge v8, v1, :cond_3f

    iget-object v1, v13, Lv0/w;->f:[J

    aget-wide v12, v1, v8

    aput-wide v12, v4, v11

    goto :goto_33

    :cond_3f
    aput-boolean v24, v5, v11

    add-int/lit8 v7, v7, 0x1

    :goto_33
    move-object/from16 v2, v19

    const/4 v1, -0x1

    goto :goto_31

    :cond_40
    const/4 v15, 0x0

    :cond_41
    iput-object v15, v0, Lv0/n;->H:[[J

    iget-object v1, v0, Lv0/n;->F:Lb0/p;

    invoke-interface {v1}, Lb0/p;->e()V

    iget-object v1, v0, Lv0/n;->F:Lb0/p;

    new-instance v2, Lv0/l;

    iget-object v3, v0, Lv0/n;->G:[Lv0/m;

    invoke-direct {v2, v9, v10, v3, v6}, Lv0/l;-><init>(J[Lv0/m;I)V

    invoke-interface {v1, v2}, Lb0/p;->c(Lb0/z;)V

    :goto_34
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lv0/n;->B:Z

    iget-boolean v1, v0, Lv0/n;->y:Z

    if-nez v1, :cond_0

    if-nez v22, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    const/4 v4, 0x4

    goto :goto_35

    :cond_42
    const/4 v4, 0x2

    :goto_35
    iput v4, v0, Lv0/n;->n:I

    goto/16 :goto_0

    :cond_43
    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/d;

    iget-object v1, v1, LK/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_44
    iget v1, v0, Lv0/n;->n:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_45

    const/4 v8, 0x2

    if-eq v1, v8, :cond_45

    const/4 v3, 0x0

    iput v3, v0, Lv0/n;->n:I

    iput v3, v0, Lv0/n;->q:I

    :cond_45
    return-void
.end method
