.class public final Lv0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/z;


# instance fields
.field public final a:J

.field public final b:[Lv0/m;

.field public final c:I


# direct methods
.method public constructor <init>(J[Lv0/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lv0/l;->a:J

    iput-object p3, p0, Lv0/l;->b:[Lv0/m;

    iput p4, p0, Lv0/l;->c:I

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)Lb0/y;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lv0/l;->b:[Lv0/m;

    array-length v4, v3

    sget-object v5, Lb0/A;->c:Lb0/A;

    if-nez v4, :cond_0

    new-instance v1, Lb0/y;

    invoke-direct {v1, v5, v5}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v1

    :cond_0
    iget v4, v0, Lv0/l;->c:I

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    if-eq v4, v8, :cond_4

    aget-object v11, v3, v4

    iget-object v11, v11, Lv0/m;->b:Lv0/w;

    invoke-virtual {v11, v1, v2}, Lv0/w;->a(J)I

    move-result v12

    if-ne v12, v8, :cond_1

    invoke-virtual {v11, v1, v2}, Lv0/w;->b(J)I

    move-result v12

    :cond_1
    iget-object v13, v11, Lv0/w;->c:[J

    iget-object v14, v11, Lv0/w;->f:[J

    if-ne v12, v8, :cond_2

    new-instance v1, Lb0/y;

    invoke-direct {v1, v5, v5}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v1

    :cond_2
    aget-wide v15, v14, v12

    aget-wide v17, v13, v12

    cmp-long v5, v15, v1

    if-gez v5, :cond_3

    iget v5, v11, Lv0/w;->b:I

    add-int/lit8 v5, v5, -0x1

    if-ge v12, v5, :cond_3

    invoke-virtual {v11, v1, v2}, Lv0/w;->b(J)I

    move-result v1

    if-eq v1, v8, :cond_3

    if-eq v1, v12, :cond_3

    aget-wide v9, v14, v1

    aget-wide v1, v13, v1

    goto :goto_0

    :cond_3
    move-wide v1, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    move-wide v11, v1

    move-wide v1, v15

    goto :goto_1

    :cond_4
    const-wide v17, 0x7fffffffffffffffL

    move-wide v11, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    const/4 v5, 0x0

    move-wide/from16 v13, v17

    :goto_2
    array-length v15, v3

    if-ge v5, v15, :cond_b

    if-eq v5, v4, :cond_9

    aget-object v15, v3, v5

    iget-object v15, v15, Lv0/m;->b:Lv0/w;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v6, v15, Lv0/w;->c:[J

    invoke-virtual {v15, v1, v2}, Lv0/w;->a(J)I

    move-result v7

    if-ne v7, v8, :cond_5

    invoke-virtual {v15, v1, v2}, Lv0/w;->b(J)I

    move-result v7

    :cond_5
    if-ne v7, v8, :cond_6

    move-wide/from16 p1, v9

    goto :goto_3

    :cond_6
    move-wide/from16 p1, v9

    aget-wide v8, v6, v7

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :goto_3
    cmp-long v7, p1, v16

    if-eqz v7, :cond_a

    move-wide/from16 v9, p1

    invoke-virtual {v15, v9, v10}, Lv0/w;->a(J)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    invoke-virtual {v15, v9, v10}, Lv0/w;->b(J)I

    move-result v7

    :cond_7
    if-ne v7, v8, :cond_8

    move-wide/from16 p1, v9

    goto :goto_4

    :cond_8
    move-wide/from16 p1, v9

    aget-wide v8, v6, v7

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_4

    :cond_9
    move-wide/from16 p1, v9

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, p1

    const/4 v8, -0x1

    goto :goto_2

    :cond_b
    move-wide/from16 p1, v9

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v3, Lb0/A;

    invoke-direct {v3, v1, v2, v13, v14}, Lb0/A;-><init>(JJ)V

    cmp-long v1, p1, v16

    if-nez v1, :cond_c

    new-instance v1, Lb0/y;

    invoke-direct {v1, v3, v3}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v1

    :cond_c
    new-instance v1, Lb0/A;

    move-wide/from16 v9, p1

    invoke-direct {v1, v9, v10, v11, v12}, Lb0/A;-><init>(JJ)V

    new-instance v2, Lb0/y;

    invoke-direct {v2, v3, v1}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v2
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lv0/l;->a:J

    return-wide v0
.end method
