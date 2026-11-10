.class public final LI0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb0/d;

.field public final b:Lb0/h;

.field public c:Lb0/e;

.field public final d:I


# direct methods
.method public constructor <init>(Lb0/f;Lb0/h;JJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/y;->b:Lb0/h;

    iput p13, p0, LI0/y;->d:I

    move-object p2, p1

    new-instance p1, Lb0/d;

    invoke-direct/range {p1 .. p12}, Lb0/d;-><init>(Lb0/f;JJJJJ)V

    iput-object p1, p0, LI0/y;->a:Lb0/d;

    return-void
.end method

.method public static a([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static c(Lb0/o;JLb0/r;)I
    .locals 2

    invoke-interface {p0}, Lb0/o;->getPosition()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lb0/r;->a:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b(Lb0/o;Lb0/r;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, LI0/y;->c:Lb0/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v3, Lb0/e;->f:J

    iget-wide v6, v3, Lb0/e;->g:J

    iget-wide v8, v3, Lb0/e;->h:J

    sub-long/2addr v6, v4

    iget v10, v0, LI0/y;->d:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    iget-object v10, v0, LI0/y;->b:Lb0/h;

    if-gtz v6, :cond_0

    iput-object v7, v0, LI0/y;->c:Lb0/e;

    invoke-interface {v10}, Lb0/h;->z()V

    invoke-static {v1, v4, v5, v2}, LI0/y;->c(Lb0/o;JLb0/r;)I

    move-result v1

    return v1

    :cond_0
    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-ltz v6, :cond_6

    const-wide/32 v13, 0x40000

    cmp-long v6, v4, v13

    if-gtz v6, :cond_6

    long-to-int v4, v4

    invoke-interface {v1, v4}, Lb0/o;->p(I)V

    invoke-interface {v1}, Lb0/o;->o()V

    iget-wide v4, v3, Lb0/e;->b:J

    invoke-interface {v10, v1, v4, v5}, Lb0/h;->r(Lb0/o;J)Lb0/g;

    move-result-object v4

    iget v5, v4, Lb0/g;->a:I

    move-wide v15, v11

    iget-wide v11, v4, Lb0/g;->b:J

    move-wide/from16 v17, v13

    iget-wide v13, v4, Lb0/g;->c:J

    const/4 v4, -0x3

    if-eq v5, v4, :cond_5

    const/4 v4, -0x2

    if-eq v5, v4, :cond_4

    const/4 v4, -0x1

    if-eq v5, v4, :cond_3

    if-nez v5, :cond_2

    invoke-interface {v1}, Lb0/o;->getPosition()J

    move-result-wide v3

    sub-long v3, v13, v3

    cmp-long v5, v3, v15

    if-ltz v5, :cond_1

    cmp-long v5, v3, v17

    if-gtz v5, :cond_1

    long-to-int v3, v3

    invoke-interface {v1, v3}, Lb0/o;->p(I)V

    :cond_1
    iput-object v7, v0, LI0/y;->c:Lb0/e;

    invoke-interface {v10}, Lb0/h;->z()V

    invoke-static {v1, v13, v14, v2}, LI0/y;->c(Lb0/o;JLb0/r;)I

    move-result v1

    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid case"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput-wide v11, v3, Lb0/e;->e:J

    iput-wide v13, v3, Lb0/e;->g:J

    iget-wide v4, v3, Lb0/e;->b:J

    iget-wide v6, v3, Lb0/e;->d:J

    iget-wide v8, v3, Lb0/e;->f:J

    move-wide v15, v4

    iget-wide v4, v3, Lb0/e;->c:J

    move-wide/from16 v25, v4

    move-wide/from16 v17, v6

    move-wide/from16 v21, v8

    move-wide/from16 v19, v11

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v26}, Lb0/e;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lb0/e;->h:J

    goto/16 :goto_0

    :cond_4
    move-wide v4, v11

    move-wide v6, v13

    iput-wide v4, v3, Lb0/e;->d:J

    iput-wide v6, v3, Lb0/e;->f:J

    iget-wide v8, v3, Lb0/e;->b:J

    iget-wide v10, v3, Lb0/e;->e:J

    iget-wide v12, v3, Lb0/e;->g:J

    iget-wide v14, v3, Lb0/e;->c:J

    move-wide/from16 v17, v4

    move-wide/from16 v21, v6

    move-wide/from16 v19, v10

    move-wide/from16 v23, v12

    move-wide/from16 v25, v14

    move-wide v15, v8

    invoke-static/range {v15 .. v26}, Lb0/e;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lb0/e;->h:J

    goto/16 :goto_0

    :cond_5
    iput-object v7, v0, LI0/y;->c:Lb0/e;

    invoke-interface {v10}, Lb0/h;->z()V

    invoke-static {v1, v8, v9, v2}, LI0/y;->c(Lb0/o;JLb0/r;)I

    move-result v1

    return v1

    :cond_6
    invoke-static {v1, v8, v9, v2}, LI0/y;->c(Lb0/o;JLb0/r;)I

    move-result v1

    return v1
.end method

.method public final d(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, LI0/y;->c:Lb0/e;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lb0/e;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lb0/e;

    iget-object v4, v0, LI0/y;->a:Lb0/d;

    iget-object v5, v4, Lb0/d;->a:Lb0/f;

    invoke-interface {v5, v2, v3}, Lb0/f;->n(J)J

    move-result-wide v5

    move-wide v8, v5

    iget-wide v6, v4, Lb0/d;->c:J

    move-wide v10, v8

    iget-wide v8, v4, Lb0/d;->d:J

    move-wide v12, v10

    iget-wide v10, v4, Lb0/d;->e:J

    iget-wide v4, v4, Lb0/d;->f:J

    move-wide v14, v12

    move-wide v12, v4

    move-wide v4, v14

    invoke-direct/range {v1 .. v13}, Lb0/e;-><init>(JJJJJJ)V

    iput-object v1, v0, LI0/y;->c:Lb0/e;

    return-void
.end method
