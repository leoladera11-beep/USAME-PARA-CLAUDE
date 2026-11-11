.class public final LG/o0;
.super LG/q0;
.source "SourceFile"


# instance fields
.field public final e:Lu1/C0;

.field public final f:Lu1/C0;

.field public final g:[I

.field public final h:[I

.field public final i:Lu1/T;


# direct methods
.method public constructor <init>(Lu1/C0;Lu1/C0;[I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v4, v1, Lu1/C0;->h:I

    iget v5, v1, Lu1/C0;->h:I

    array-length v6, v3

    const/4 v8, 0x1

    if-ne v4, v6, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, LF1/i;->g(Z)V

    iput-object v3, v0, LG/o0;->g:[I

    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, v0, LG/o0;->h:[I

    const/4 v4, 0x0

    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_1

    iget-object v6, v0, LG/o0;->h:[I

    aget v9, v3, v4

    aput v4, v6, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v4}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LG/p0;

    if-le v5, v8, :cond_2

    iget-object v9, v6, LG/p0;->a:Ljava/lang/Object;

    sget-object v10, LG/p0;->p:Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v10, LG/p0;

    invoke-direct {v10}, LG/p0;-><init>()V

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iget-object v12, v6, LG/p0;->c:LG/P;

    iget-wide v13, v6, LG/p0;->d:J

    iget-wide v7, v6, LG/p0;->e:J

    move-object/from16 p3, v10

    iget-wide v9, v6, LG/p0;->f:J

    iget-boolean v15, v6, LG/p0;->g:Z

    iget-boolean v1, v6, LG/p0;->h:Z

    move/from16 v20, v1

    iget-object v1, v6, LG/p0;->i:LG/J;

    move/from16 v31, v4

    move/from16 v30, v5

    iget-wide v4, v6, LG/p0;->k:J

    move-wide/from16 v22, v4

    iget-wide v4, v6, LG/p0;->l:J

    move-object/from16 v21, v1

    iget v1, v6, LG/p0;->m:I

    move/from16 v26, v1

    iget v1, v6, LG/p0;->n:I

    move-wide/from16 v24, v4

    iget-wide v4, v6, LG/p0;->o:J

    move/from16 v27, v1

    move-wide/from16 v28, v4

    move-wide/from16 v17, v9

    move/from16 v19, v15

    move-object/from16 v10, p3

    move-wide v15, v7

    invoke-virtual/range {v10 .. v29}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    iget-boolean v1, v6, LG/p0;->j:Z

    iput-boolean v1, v10, LG/p0;->j:Z

    iget-object v1, v6, LG/p0;->b:Ljava/lang/Object;

    iput-object v1, v10, LG/p0;->b:Ljava/lang/Object;

    move-object v6, v10

    goto :goto_3

    :cond_2
    move/from16 v31, v4

    move/from16 v30, v5

    :goto_3
    invoke-virtual {v3, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v31, 0x1

    move-object/from16 v1, p1

    move/from16 v5, v30

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    iput-object v1, v0, LG/o0;->e:Lu1/C0;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v1

    iget v3, v2, Lu1/C0;->h:I

    new-instance v4, Ljava/util/HashMap;

    invoke-static {v3}, Lu1/s;->b(I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_4
    iget v3, v2, Lu1/C0;->h:I

    if-ge v7, v3, :cond_6

    invoke-virtual {v2, v7}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/n0;

    iget-object v5, v3, LG/n0;->b:Ljava/lang/Object;

    if-nez v5, :cond_4

    new-instance v8, LG/n0;

    invoke-direct {v8}, LG/n0;-><init>()V

    iget-object v9, v3, LG/n0;->a:Ljava/lang/Object;

    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iget v11, v3, LG/n0;->c:I

    iget-wide v12, v3, LG/n0;->d:J

    iget-wide v14, v3, LG/n0;->e:J

    iget-object v5, v3, LG/n0;->g:LG/c;

    iget-boolean v3, v3, LG/n0;->f:Z

    move/from16 v17, v3

    move-object/from16 v16, v5

    invoke-virtual/range {v8 .. v17}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    move-object v3, v8

    :cond_4
    invoke-virtual {v1, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    iget-object v3, v3, LG/n0;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    iput-object v1, v0, LG/o0;->f:Lu1/C0;

    invoke-static {v4}, Lu1/T;->a(Ljava/util/Map;)Lu1/T;

    move-result-object v1

    iput-object v1, v0, LG/o0;->i:Lu1/T;

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 1

    invoke-virtual {p0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, LG/o0;->g:[I

    aget p1, p1, v0

    return p1

    :cond_1
    return v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LG/o0;->i:Lu1/T;

    invoke-virtual {v0, p1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final c(Z)I
    .locals 1

    invoke-virtual {p0}, LG/q0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, LG/o0;->e:Lu1/C0;

    if-eqz p1, :cond_1

    iget p1, v0, Lu1/C0;->h:I

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, LG/o0;->g:[I

    aget p1, v0, p1

    return p1

    :cond_1
    iget p1, v0, Lu1/C0;->h:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final e(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p3}, LG/o0;->c(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0, p3}, LG/o0;->a(Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, LG/o0;->h:[I

    aget p1, p2, p1

    add-int/2addr p1, v0

    iget-object p2, p0, LG/o0;->g:[I

    aget p1, p2, p1

    return p1

    :cond_3
    add-int/2addr p1, v0

    return p1
.end method

.method public final f(ILG/n0;Z)LG/n0;
    .locals 10

    iget-object p3, p0, LG/o0;->f:Lu1/C0;

    invoke-virtual {p3, p1}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/n0;

    iget-object v1, p1, LG/n0;->a:Ljava/lang/Object;

    iget-object v2, p1, LG/n0;->b:Ljava/lang/Object;

    iget v3, p1, LG/n0;->c:I

    iget-wide v4, p1, LG/n0;->d:J

    iget-wide v6, p1, LG/n0;->e:J

    iget-object v8, p1, LG/n0;->g:LG/c;

    iget-boolean v9, p1, LG/n0;->f:Z

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, LG/o0;->f:Lu1/C0;

    iget v0, v0, Lu1/C0;->h:I

    return v0
.end method

.method public final k(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0, p3}, LG/o0;->a(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    invoke-virtual {p0, p3}, LG/o0;->c(Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, LG/o0;->h:[I

    aget p1, p2, p1

    sub-int/2addr p1, v0

    iget-object p2, p0, LG/o0;->g:[I

    aget p1, p2, p1

    return p1

    :cond_3
    sub-int/2addr p1, v0

    return p1
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LG/o0;->f:Lu1/C0;

    invoke-virtual {v0, p1}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/n0;

    iget-object p1, p1, LG/n0;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final m(ILG/p0;J)LG/p0;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, LG/o0;->e:Lu1/C0;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/p0;

    iget-object v2, v1, LG/p0;->a:Ljava/lang/Object;

    move-object v3, v2

    iget-object v2, v1, LG/p0;->c:LG/P;

    move-object v5, v3

    iget-wide v3, v1, LG/p0;->d:J

    move-object v7, v5

    iget-wide v5, v1, LG/p0;->e:J

    move-object v9, v7

    iget-wide v7, v1, LG/p0;->f:J

    move-object v10, v9

    iget-boolean v9, v1, LG/p0;->g:Z

    move-object v11, v10

    iget-boolean v10, v1, LG/p0;->h:Z

    move-object v12, v11

    iget-object v11, v1, LG/p0;->i:LG/J;

    move-object v14, v12

    iget-wide v12, v1, LG/p0;->k:J

    move-object/from16 v16, v14

    iget-wide v14, v1, LG/p0;->l:J

    iget v0, v1, LG/p0;->m:I

    move/from16 v17, v0

    iget v0, v1, LG/p0;->n:I

    move-object/from16 v18, v2

    move-wide/from16 p3, v3

    iget-wide v2, v1, LG/p0;->o:J

    move-wide/from16 v21, v2

    move-object/from16 v2, v18

    move-wide/from16 v18, v21

    move-wide/from16 v3, p3

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v19}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    move-object/from16 v1, v20

    iget-boolean v1, v1, LG/p0;->j:Z

    iput-boolean v1, v0, LG/p0;->j:Z

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, LG/o0;->e:Lu1/C0;

    iget v0, v0, Lu1/C0;->h:I

    return v0
.end method
