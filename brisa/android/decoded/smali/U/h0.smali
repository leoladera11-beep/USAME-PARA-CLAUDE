.class public final LU/h0;
.super LU/a;
.source "SourceFile"


# instance fields
.field public final i:LL/n;

.field public final j:LL/g;

.field public final k:LG/x;

.field public final l:J

.field public final m:Lcom/brisa/local/j;

.field public final n:Z

.field public final o:LU/d0;

.field public final p:LG/P;

.field public q:LL/D;


# direct methods
.method public constructor <init>(LG/O;LN0/O;Lcom/brisa/local/j;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, LU/a;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, LU/h0;->j:LL/g;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, LU/h0;->l:J

    move-object/from16 v4, p3

    iput-object v4, v0, LU/h0;->m:Lcom/brisa/local/j;

    const/4 v4, 0x1

    iput-boolean v4, v0, LU/h0;->n:Z

    new-instance v5, LG/D;

    invoke-direct {v5}, LG/D;-><init>()V

    new-instance v6, LG/G;

    invoke-direct {v6}, LG/G;-><init>()V

    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lu1/C0;->i:Lu1/C0;

    new-instance v7, LG/I;

    invoke-direct {v7}, LG/I;-><init>()V

    sget-object v19, LG/L;->d:LG/L;

    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v9, v1, LG/O;->a:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v9

    invoke-static {v9}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v14

    iget-object v9, v6, LG/G;->b:Landroid/net/Uri;

    if-eqz v9, :cond_1

    iget-object v9, v6, LG/G;->a:Ljava/util/UUID;

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-static {v4}, LF1/i;->o(Z)V

    const/4 v4, 0x0

    if-eqz v8, :cond_3

    move-object v9, v7

    new-instance v7, LG/K;

    iget-object v10, v6, LG/G;->a:Ljava/util/UUID;

    if-eqz v10, :cond_2

    new-instance v10, LG/H;

    invoke-direct {v10, v6}, LG/H;-><init>(LG/G;)V

    :goto_1
    move-object v6, v9

    goto :goto_2

    :cond_2
    move-object v10, v4

    goto :goto_1

    :goto_2
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v16}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    move-object/from16 v16, v7

    goto :goto_3

    :cond_3
    move-object v6, v7

    move-object/from16 v16, v4

    :goto_3
    new-instance v13, LG/P;

    new-instance v15, LG/F;

    invoke-direct {v15, v5}, LG/E;-><init>(LG/D;)V

    new-instance v5, LG/J;

    invoke-direct {v5, v6}, LG/J;-><init>(LG/I;)V

    sget-object v18, LG/T;->M:LG/T;

    move-object/from16 v14, v17

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v19}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    iput-object v13, v0, LU/h0;->p:LG/P;

    new-instance v5, LG/w;

    invoke-direct {v5}, LG/w;-><init>()V

    iget-object v6, v1, LG/O;->b:Ljava/lang/String;

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    const-string v6, "text/x-unknown"

    :goto_4
    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, LG/w;->o:Ljava/lang/String;

    iget-object v6, v1, LG/O;->c:Ljava/lang/String;

    iput-object v6, v5, LG/w;->d:Ljava/lang/String;

    iget v6, v1, LG/O;->d:I

    iput v6, v5, LG/w;->e:I

    iget v6, v1, LG/O;->e:I

    iput v6, v5, LG/w;->f:I

    iget-object v6, v1, LG/O;->f:Ljava/lang/String;

    iput-object v6, v5, LG/w;->b:Ljava/lang/String;

    iget-object v6, v1, LG/O;->g:Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v4, v6

    :cond_5
    iput-object v4, v5, LG/w;->a:Ljava/lang/String;

    new-instance v4, LG/x;

    invoke-direct {v4, v5}, LG/x;-><init>(LG/w;)V

    iput-object v4, v0, LU/h0;->k:LG/x;

    sget-object v18, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v15, v1, LG/O;->a:Landroid/net/Uri;

    const-string v1, "The uri must be set."

    invoke-static {v15, v1}, LF1/i;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, LL/n;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-direct/range {v14 .. v24}, LL/n;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    iput-object v14, v0, LU/h0;->i:LL/n;

    new-instance v1, LU/d0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, LU/d0;-><init>(JZZLG/P;)V

    iput-object v1, v0, LU/h0;->o:LU/d0;

    return-void
.end method


# virtual methods
.method public final b(LU/A;LB/A;J)LU/y;
    .locals 11

    new-instance v0, LU/g0;

    iget-object v3, p0, LU/h0;->q:LL/D;

    new-instance v8, LC1/e;

    iget-object p2, p0, LU/a;->c:LC1/e;

    iget-object p2, p2, LC1/e;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p3, 0x0

    invoke-direct {v8, p2, p3, p1}, LC1/e;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILU/A;)V

    iget-boolean v9, p0, LU/h0;->n:Z

    const/4 v10, 0x0

    iget-object v1, p0, LU/h0;->i:LL/n;

    iget-object v2, p0, LU/h0;->j:LL/g;

    iget-object v4, p0, LU/h0;->k:LG/x;

    iget-wide v5, p0, LU/h0;->l:J

    iget-object v7, p0, LU/h0;->m:Lcom/brisa/local/j;

    invoke-direct/range {v0 .. v10}, LU/g0;-><init>(LL/n;LL/g;LL/D;LG/x;JLcom/brisa/local/j;LC1/e;ZLY/a;)V

    return-object v0
.end method

.method public final h()LG/P;
    .locals 1

    iget-object v0, p0, LU/h0;->p:LG/P;

    return-object v0
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final l(LL/D;)V
    .locals 0

    iput-object p1, p0, LU/h0;->q:LL/D;

    iget-object p1, p0, LU/h0;->o:LU/d0;

    invoke-virtual {p0, p1}, LU/a;->m(LG/q0;)V

    return-void
.end method

.method public final n(LU/y;)V
    .locals 2

    check-cast p1, LU/g0;

    iget-object p1, p1, LU/g0;->m:LX/m;

    iget-object v0, p1, LX/m;->a:LY/a;

    iget-object p1, p1, LX/m;->b:LX/i;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LX/i;->a(Z)V

    :cond_0
    iget-object p1, v0, LY/a;->g:Ljava/lang/Object;

    check-cast p1, LP/B;

    iget-object v0, v0, LY/a;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, LP/B;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method
