.class public final LG/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:LG/P;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LG/K;

.field public final c:LG/J;

.field public final d:LG/T;

.field public final e:LG/F;

.field public final f:LG/L;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LG/D;

    invoke-direct {v0}, LG/D;-><init>()V

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    new-instance v1, LG/I;

    invoke-direct {v1}, LG/I;-><init>()V

    sget-object v8, LG/L;->d:LG/L;

    new-instance v2, LG/P;

    new-instance v4, LG/F;

    invoke-direct {v4, v0}, LG/E;-><init>(LG/D;)V

    new-instance v6, LG/J;

    invoke-direct {v6, v1}, LG/J;-><init>(LG/I;)V

    sget-object v7, LG/T;->M:LG/T;

    const-string v3, ""

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    sput-object v2, LG/P;->g:LG/P;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/P;->h:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/P;->i:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/P;->j:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/P;->k:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/P;->l:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/P;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/P;->a:Ljava/lang/String;

    iput-object p3, p0, LG/P;->b:LG/K;

    iput-object p4, p0, LG/P;->c:LG/J;

    iput-object p5, p0, LG/P;->d:LG/T;

    iput-object p2, p0, LG/P;->e:LG/F;

    iput-object p6, p0, LG/P;->f:LG/L;

    return-void
.end method

.method public static a(ILandroid/os/Bundle;)LG/P;
    .locals 20

    move-object/from16 v0, p1

    sget-object v1, LG/P;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LG/P;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, LG/J;->f:LG/J;

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, LG/J;->b(Landroid/os/Bundle;)LG/J;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget-object v1, LG/P;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, LG/T;->M:LG/T;

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_1
    move/from16 v2, p0

    invoke-static {v2, v1}, LG/T;->b(ILandroid/os/Bundle;)LG/T;

    move-result-object v1

    goto :goto_2

    :goto_3
    sget-object v1, LG/P;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, LG/F;->r:LG/F;

    :goto_4
    move-object v5, v1

    goto/16 :goto_a

    :cond_2
    new-instance v3, LG/D;

    invoke-direct {v3}, LG/D;-><init>()V

    sget-object v5, LG/E;->j:Ljava/lang/String;

    sget-object v6, LG/E;->i:LG/E;

    iget-wide v9, v6, LG/E;->a:J

    iget-wide v11, v6, LG/E;->d:J

    iget-wide v13, v6, LG/E;->b:J

    invoke-virtual {v1, v5, v9, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, LJ/W;->G(J)J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v5, v9, v15

    const/16 v17, 0x1

    if-ltz v5, :cond_3

    move/from16 v5, v17

    goto :goto_5

    :cond_3
    move v5, v2

    :goto_5
    invoke-static {v5}, LF1/i;->g(Z)V

    iput-wide v9, v3, LG/D;->a:J

    sget-object v5, LG/E;->k:Ljava/lang/String;

    iget-wide v9, v6, LG/E;->c:J

    invoke-virtual {v1, v5, v9, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, LJ/W;->G(J)J

    move-result-wide v9

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v5, v9, v18

    if-eqz v5, :cond_5

    cmp-long v5, v9, v15

    if-ltz v5, :cond_4

    goto :goto_6

    :cond_4
    move v5, v2

    goto :goto_7

    :cond_5
    :goto_6
    move/from16 v5, v17

    :goto_7
    invoke-static {v5}, LF1/i;->g(Z)V

    iput-wide v9, v3, LG/D;->b:J

    sget-object v5, LG/E;->l:Ljava/lang/String;

    iget-boolean v9, v6, LG/E;->e:Z

    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, LG/D;->c:Z

    sget-object v5, LG/E;->m:Ljava/lang/String;

    iget-boolean v9, v6, LG/E;->f:Z

    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, LG/D;->d:Z

    sget-object v5, LG/E;->n:Ljava/lang/String;

    iget-boolean v9, v6, LG/E;->g:Z

    invoke-virtual {v1, v5, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, LG/D;->e:Z

    sget-object v5, LG/E;->q:Ljava/lang/String;

    iget-boolean v6, v6, LG/E;->h:Z

    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, LG/D;->f:Z

    sget-object v5, LG/E;->o:Ljava/lang/String;

    invoke-virtual {v1, v5, v13, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v9, v5, v13

    if-eqz v9, :cond_7

    cmp-long v9, v5, v15

    if-ltz v9, :cond_6

    move/from16 v9, v17

    goto :goto_8

    :cond_6
    move v9, v2

    :goto_8
    invoke-static {v9}, LF1/i;->g(Z)V

    iput-wide v5, v3, LG/D;->a:J

    :cond_7
    sget-object v5, LG/E;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v11, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v11

    if-eqz v1, :cond_a

    cmp-long v1, v5, v18

    if-eqz v1, :cond_9

    cmp-long v1, v5, v15

    if-ltz v1, :cond_8

    goto :goto_9

    :cond_8
    move/from16 v17, v2

    :cond_9
    :goto_9
    invoke-static/range {v17 .. v17}, LF1/i;->g(Z)V

    iput-wide v5, v3, LG/D;->b:J

    :cond_a
    new-instance v1, LG/F;

    invoke-direct {v1, v3}, LG/E;-><init>(LG/D;)V

    goto/16 :goto_4

    :goto_a
    sget-object v1, LG/P;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_b

    sget-object v1, LG/L;->d:LG/L;

    :goto_b
    move-object v9, v1

    goto :goto_c

    :cond_b
    new-instance v3, LB/A;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v2}, LB/A;-><init>(IZ)V

    sget-object v6, LG/L;->e:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, v3, LB/A;->f:Ljava/lang/Object;

    sget-object v6, LG/L;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, LB/A;->g:Ljava/lang/Object;

    sget-object v6, LG/L;->g:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v3, LB/A;->h:Ljava/lang/Object;

    new-instance v1, LG/L;

    invoke-direct {v1, v3}, LG/L;-><init>(LB/A;)V

    goto :goto_b

    :goto_c
    sget-object v1, LG/P;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v6, 0x0

    goto/16 :goto_19

    :cond_c
    sget-object v3, LG/K;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_d

    const/4 v13, 0x0

    goto/16 :goto_12

    :cond_d
    sget-object v6, LG/H;->i:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    sget-object v10, LG/H;->j:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    sget-object v11, LG/H;->k:Ljava/lang/String;

    sget-object v12, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_e

    goto :goto_d

    :cond_e
    move-object v11, v12

    :goto_d
    if-ne v11, v12, :cond_f

    sget-object v11, Lu1/H0;->k:Lu1/H0;

    goto :goto_10

    :cond_f
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    if-ne v11, v12, :cond_10

    goto :goto_f

    :cond_10
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_11
    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_12
    :goto_f
    invoke-static {v13}, Lu1/T;->a(Ljava/util/Map;)Lu1/T;

    move-result-object v11

    :goto_10
    sget-object v12, LG/H;->l:Ljava/lang/String;

    invoke-virtual {v3, v12, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v13, LG/H;->m:Ljava/lang/String;

    invoke-virtual {v3, v13, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    sget-object v14, LG/H;->n:Ljava/lang/String;

    invoke-virtual {v3, v14, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    sget-object v15, LG/H;->o:Ljava/lang/String;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_13

    move-object/from16 v16, v15

    :cond_13
    invoke-static/range {v16 .. v16}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v15

    sget-object v1, LG/H;->p:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, LG/G;

    invoke-direct {v3}, LG/G;-><init>()V

    iput-object v6, v3, LG/G;->a:Ljava/util/UUID;

    iput-object v10, v3, LG/G;->b:Landroid/net/Uri;

    invoke-static {v11}, Lu1/T;->a(Ljava/util/Map;)Lu1/T;

    move-result-object v6

    iput-object v6, v3, LG/G;->c:Lu1/T;

    iput-boolean v12, v3, LG/G;->d:Z

    iput-boolean v14, v3, LG/G;->f:Z

    iput-boolean v13, v3, LG/G;->e:Z

    invoke-static {v15}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v6

    iput-object v6, v3, LG/G;->g:Lu1/P;

    if-eqz v1, :cond_14

    array-length v6, v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    :goto_11
    iput-object v1, v3, LG/G;->h:[B

    new-instance v1, LG/H;

    invoke-direct {v1, v3}, LG/H;-><init>(LG/G;)V

    move-object v13, v1

    :goto_12
    sget-object v1, LG/K;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v14, 0x0

    goto :goto_13

    :cond_15
    sget-object v3, LG/C;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LZ0/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, LZ0/i;->e:Ljava/lang/Object;

    new-instance v1, LG/C;

    invoke-direct {v1, v3}, LG/C;-><init>(LZ0/i;)V

    move-object v14, v1

    :goto_13
    sget-object v1, LG/K;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_16

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    :goto_14
    move-object v15, v1

    goto :goto_16

    :cond_16
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v3

    move v6, v2

    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_17

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, LG/j0;

    sget-object v12, LG/j0;->h:Ljava/lang/String;

    invoke-virtual {v10, v12, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v15, LG/j0;->i:Ljava/lang/String;

    invoke-virtual {v10, v15, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 p0, v1

    sget-object v1, LG/j0;->j:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v11, v12, v15, v1}, LG/j0;-><init>(III)V

    invoke-virtual {v3, v11}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto :goto_15

    :cond_17
    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v1

    goto :goto_14

    :goto_16
    sget-object v1, LG/K;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_18

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    :goto_17
    move-object/from16 v17, v1

    goto :goto_18

    :cond_18
    new-instance v2, LG/v;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, LG/v;-><init>(I)V

    invoke-static {v1, v2}, LJ/e;->d(Ljava/util/List;Lt1/j;)Lu1/C0;

    move-result-object v1

    goto :goto_17

    :goto_18
    sget-object v1, LG/K;->p:Ljava/lang/String;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    new-instance v10, LG/K;

    sget-object v1, LG/K;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LG/K;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v1, LG/K;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v10 .. v19}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    move-object v6, v10

    :goto_19
    new-instance v3, LG/P;

    invoke-direct/range {v3 .. v9}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    return-object v3
.end method


# virtual methods
.method public final b(IZ)Landroid/os/Bundle;
    .locals 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ""

    iget-object v2, p0, LG/P;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LG/P;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, LG/J;->f:LG/J;

    iget-object v2, p0, LG/P;->c:LG/J;

    invoke-virtual {v2, v1}, LG/J;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, LG/P;->i:Ljava/lang/String;

    invoke-virtual {v2}, LG/J;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    sget-object v1, LG/T;->M:LG/T;

    iget-object v2, p0, LG/P;->d:LG/T;

    invoke-virtual {v2, v1}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, LG/P;->j:Ljava/lang/String;

    invoke-virtual {v2, p1}, LG/T;->c(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    sget-object p1, LG/E;->i:LG/E;

    iget-object v1, p0, LG/P;->e:LG/F;

    invoke-virtual {v1, p1}, LG/E;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-wide v3, v1, LG/E;->a:J

    iget-wide v5, p1, LG/E;->a:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    sget-object v5, LG/E;->j:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    iget-wide v3, v1, LG/E;->c:J

    iget-wide v5, p1, LG/E;->c:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    sget-object v5, LG/E;->k:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-wide v3, v1, LG/E;->b:J

    iget-wide v5, p1, LG/E;->b:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_5

    sget-object v5, LG/E;->o:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget-wide v3, v1, LG/E;->d:J

    iget-wide v5, p1, LG/E;->d:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_6

    sget-object v5, LG/E;->p:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    iget-boolean v3, v1, LG/E;->e:Z

    iget-boolean v4, p1, LG/E;->e:Z

    if-eq v3, v4, :cond_7

    sget-object v4, LG/E;->l:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-boolean v3, v1, LG/E;->f:Z

    iget-boolean v4, p1, LG/E;->f:Z

    if-eq v3, v4, :cond_8

    sget-object v4, LG/E;->m:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-boolean v3, v1, LG/E;->g:Z

    iget-boolean v4, p1, LG/E;->g:Z

    if-eq v3, v4, :cond_9

    sget-object v4, LG/E;->n:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    iget-boolean v1, v1, LG/E;->h:Z

    iget-boolean p1, p1, LG/E;->h:Z

    if-eq v1, p1, :cond_a

    sget-object p1, LG/E;->q:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    sget-object p1, LG/P;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b
    sget-object p1, LG/L;->d:LG/L;

    iget-object v1, p0, LG/P;->f:LG/L;

    invoke-virtual {v1, p1}, LG/L;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, LG/L;->a:Landroid/net/Uri;

    if-eqz v2, :cond_c

    sget-object v3, LG/L;->e:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    iget-object v2, v1, LG/L;->b:Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v3, LG/L;->f:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v1, v1, LG/L;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_e

    sget-object v2, LG/L;->g:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_e
    sget-object v1, LG/P;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    if-eqz p2, :cond_1f

    iget-object p1, p0, LG/P;->b:LG/K;

    if-eqz p1, :cond_1f

    iget-object p2, p1, LG/K;->g:Lu1/P;

    iget-object v1, p1, LG/K;->e:Ljava/util/List;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, LG/K;->i:Ljava/lang/String;

    iget-object v4, p1, LG/K;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p1, LG/K;->b:Ljava/lang/String;

    if-eqz v3, :cond_10

    sget-object v4, LG/K;->j:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v3, p1, LG/K;->c:LG/H;

    if-eqz v3, :cond_19

    sget-object v4, LG/K;->k:Ljava/lang/String;

    iget-object v5, v3, LG/H;->g:Lu1/P;

    iget-object v6, v3, LG/H;->c:Lu1/T;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v8, LG/H;->i:Ljava/lang/String;

    iget-object v9, v3, LG/H;->a:Ljava/util/UUID;

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v3, LG/H;->b:Landroid/net/Uri;

    if-eqz v8, :cond_11

    sget-object v9, LG/H;->j:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_11
    invoke-virtual {v6}, Lu1/T;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    sget-object v8, LG/H;->k:Ljava/lang/String;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6}, Lu1/T;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_13
    iget-boolean v6, v3, LG/H;->d:Z

    if-eqz v6, :cond_14

    sget-object v8, LG/H;->l:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-boolean v6, v3, LG/H;->e:Z

    if-eqz v6, :cond_15

    sget-object v8, LG/H;->m:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-boolean v6, v3, LG/H;->f:Z

    if-eqz v6, :cond_16

    sget-object v8, LG/H;->n:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    sget-object v6, LG/H;->o:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_17
    iget-object v3, v3, LG/H;->h:[B

    if-eqz v3, :cond_18

    sget-object v5, LG/H;->p:Ljava/lang/String;

    invoke-virtual {v7, v5, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_18
    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_19
    iget-object v3, p1, LG/K;->d:LG/C;

    if-eqz v3, :cond_1a

    sget-object v4, LG/K;->l:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v6, LG/C;->b:Ljava/lang/String;

    iget-object v3, v3, LG/C;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, LG/K;->m:Ljava/lang/String;

    new-instance v4, LG/v;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, LG/v;-><init>(I)V

    invoke-static {v1, v4}, LJ/e;->i(Ljava/util/Collection;Lt1/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1b
    iget-object v1, p1, LG/K;->f:Ljava/lang/String;

    if-eqz v1, :cond_1c

    sget-object v3, LG/K;->n:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, LG/K;->o:Ljava/lang/String;

    new-instance v3, LG/v;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, LG/v;-><init>(I)V

    invoke-static {p2, v3}, LJ/e;->i(Ljava/util/Collection;Lt1/j;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1d
    iget-wide p1, p1, LG/K;->h:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p1, v3

    if-eqz v1, :cond_1e

    sget-object v1, LG/K;->p:Ljava/lang/String;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    sget-object p1, LG/P;->m:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1f
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, LG/P;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, LG/P;

    iget-object v0, p0, LG/P;->a:Ljava/lang/String;

    iget-object v1, p1, LG/P;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/P;->e:LG/F;

    iget-object v1, p1, LG/P;->e:LG/F;

    invoke-virtual {v0, v1}, LG/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/P;->b:LG/K;

    iget-object v1, p1, LG/P;->b:LG/K;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/P;->c:LG/J;

    iget-object v1, p1, LG/P;->c:LG/J;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/P;->d:LG/T;

    iget-object v1, p1, LG/P;->d:LG/T;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/P;->f:LG/L;

    iget-object p1, p1, LG/P;->f:LG/L;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LG/P;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/P;->b:LG/K;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LG/K;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/P;->c:LG/J;

    invoke-virtual {v1}, LG/J;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LG/P;->e:LG/F;

    invoke-virtual {v0}, LG/E;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/P;->d:LG/T;

    invoke-virtual {v1}, LG/T;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LG/P;->f:LG/L;

    invoke-virtual {v0}, LG/L;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
