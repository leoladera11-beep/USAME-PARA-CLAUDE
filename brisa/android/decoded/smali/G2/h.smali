.class public final LG2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic t:I


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/ArrayList;

.field public k:LG2/l;

.field public l:J

.field public m:I

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG2/h;->j:Ljava/util/ArrayList;

    iput p1, p0, LG2/h;->e:I

    iput-object p2, p0, LG2/h;->f:Ljava/lang/String;

    iput-object p3, p0, LG2/h;->g:Ljava/lang/String;

    iput-object p4, p0, LG2/h;->h:Ljava/lang/String;

    iput-object p5, p0, LG2/h;->i:Ljava/lang/String;

    const-string p1, "Base Created {}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, LJ2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(LD2/k;)LG2/h;
    .locals 8

    iget-object v0, p0, LD2/k;->b:Lv2/a;

    iget-object v4, v0, Lv2/a;->f:Ljava/lang/String;

    invoke-virtual {p0}, LD2/k;->a()V

    iget-object v0, p0, LD2/k;->m:LG2/l;

    iget-object v1, p0, LD2/k;->b:Lv2/a;

    iget-object v3, v1, Lv2/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, LD2/k;->a()V

    iget-object v1, p0, LD2/k;->d:LC1/d;

    const-string v2, "videoDetails"

    invoke-virtual {v1, v2}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, "title"

    invoke-virtual {v1, v5, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LD2/k;->E()LC1/d;

    move-result-object v1

    invoke-virtual {v1, v5}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LC2/m;->j(LC1/d;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v6, v1

    goto :goto_0

    :cond_1
    new-instance p0, Lu2/f;

    const-string v0, "Could not get name"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    invoke-virtual {p0}, LD2/k;->c()I

    move-result v7

    sget-object v1, LG2/l;->e:LG2/l;

    if-eq v0, v1, :cond_2

    invoke-static {v4}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v3}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v6, :cond_2

    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    new-instance v1, LG2/h;

    iget-object v2, p0, LD2/k;->a:Lr2/i;

    iget v2, v2, Lr2/i;->a:I

    invoke-virtual {p0}, LD2/k;->o()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, LG2/h;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, LG2/h;->l:J

    iput-object p0, v1, LG2/h;->n:Ljava/util/List;

    iput-object p0, v1, LG2/h;->o:Ljava/util/List;

    iput-object p0, v1, LG2/h;->p:Ljava/util/List;

    const-string v2, ""

    iput-object v2, v1, LG2/h;->q:Ljava/lang/String;

    iput-object v2, v1, LG2/h;->r:Ljava/lang/String;

    iput-object p0, v1, LG2/h;->s:Ljava/util/List;

    iput-object v0, v1, LG2/h;->k:LG2/l;

    iput v7, v1, LG2/h;->m:I

    const-string p0, "Created {}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, LJ2/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    new-instance p0, Lu2/d;

    const-string v0, "Some important stream information was not given."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(LG2/h;LD2/k;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, LD2/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p1, LD2/k;->k:LC1/c;

    invoke-static {v0}, LC2/m;->h(LC1/c;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Lu2/f;

    const-string v1, "Could not get thumbnails"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_0
    :try_start_3
    invoke-virtual {p1}, LD2/k;->k()J

    move-result-wide v0

    iput-wide v0, p0, LG2/h;->l:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_1
    :try_start_4
    invoke-virtual {p1}, LD2/k;->a()V

    iget-object v0, p1, LD2/k;->d:LC1/d;

    const-string v1, "videoDetails"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "author"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lu2/f;

    const-string v1, "Could not get uploader name"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_2
    :try_start_5
    invoke-virtual {p1}, LD2/k;->C()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_3
    :try_start_6
    invoke-virtual {p1}, LD2/k;->A()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_4
    :try_start_7
    invoke-virtual {p1}, LD2/k;->H()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_5
    :try_start_8
    invoke-virtual {p1}, LD2/k;->B()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_6
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_7
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_8
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_9
    :try_start_c
    invoke-virtual {p1}, LD2/k;->d()LG2/d;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_a

    :catch_b
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_a
    :try_start_d
    invoke-virtual {p1}, LD2/k;->G()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_b

    :catch_c
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_b
    :try_start_e
    invoke-virtual {p1}, LD2/k;->w()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_c

    :catch_d
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_c
    :try_start_f
    invoke-virtual {p1}, LD2/k;->z()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_d

    :catch_e
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_d
    :try_start_10
    invoke-virtual {p1}, LD2/k;->y()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_e

    :catch_f
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_e
    :try_start_11
    invoke-virtual {p1}, LD2/k;->m()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_f

    :catch_10
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_f
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_10

    :catch_11
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_10
    :try_start_13
    invoke-virtual {p1}, LD2/k;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LG2/h;->s:Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_11

    :catch_12
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_11
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    goto :goto_12

    :catch_13
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_12
    :try_start_15
    iget-object v0, p1, LD2/k;->i:LC1/d;

    const-string v1, "isUnlisted"

    invoke-virtual {v0, v1}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LD2/k;->E()LC1/d;

    move-result-object v0

    const-string v1, "badges"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/a;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LC1/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    goto :goto_13

    :catch_14
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_13
    :try_start_16
    iget-object v0, p1, LD2/k;->i:LC1/d;

    const-string v1, "category"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    goto :goto_14

    :catch_15
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_14
    :try_start_17
    invoke-virtual {p1}, LD2/k;->l()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    goto :goto_15

    :catch_16
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_15
    :try_start_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    goto :goto_16

    :catch_17
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_16
    :try_start_19
    invoke-virtual {p1}, LD2/k;->v()Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    goto :goto_17

    :catch_18
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_17
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    goto :goto_18

    :catch_19
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_18
    :try_start_1b
    invoke-virtual {p1}, LD2/k;->q()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1a

    goto :goto_19

    :catch_1a
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_19
    :try_start_1c
    invoke-virtual {p1}, LD2/k;->n()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1b

    goto :goto_1a

    :catch_1b
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_1a
    :try_start_1d
    invoke-virtual {p1}, LD2/k;->f()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1c

    goto :goto_1b

    :catch_1c
    move-exception v0

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_1b
    :try_start_1e
    invoke-virtual {p1}, LD2/k;->p()LR0/v;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1d

    :catch_1d
    move-exception p1

    goto :goto_1c

    :cond_2
    invoke-virtual {p1}, LR0/v;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LG2/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, LR0/v;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1d

    goto :goto_1d

    :goto_1c
    invoke-virtual {p0, p1}, LG2/h;->a(Ljava/lang/Exception;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1d
    return-void
.end method

.method public static d(LG2/h;LD2/k;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    iput-object v0, p0, LG2/h;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lu2/d;

    const-string v2, "Couldn\'t get DASH manifest"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_0
    :try_start_1
    invoke-virtual {p1}, LD2/k;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG2/h;->r:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lu2/d;

    const-string v2, "Couldn\'t get HLS manifest"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_1
    :try_start_2
    invoke-virtual {p1}, LD2/k;->a()V

    const-string v0, "adaptiveFormats"

    new-instance v1, LD2/e;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, LD2/e;-><init>(Ljava/lang/Object;I)V

    const-string v2, "audio"

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0, v2, v1}, LD2/k;->i(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LG2/h;->o:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Lu2/d;

    const-string v2, "Couldn\'t get audio streams"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_2
    :try_start_3
    invoke-virtual {p1}, LD2/k;->a()V

    const-string v0, "formats"

    new-instance v1, LD2/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, LD2/g;-><init>(LD2/k;Z)V

    const-string v2, "video"

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0, v2, v1}, LD2/k;->i(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LG2/h;->n:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    new-instance v1, Lu2/d;

    const-string v2, "Couldn\'t get video streams"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_3
    :try_start_4
    invoke-virtual {p1}, LD2/k;->a()V

    const-string v0, "adaptiveFormats"

    new-instance v1, LD2/g;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, LD2/g;-><init>(LD2/k;Z)V

    const-string v2, "video-only"

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0, v2, v1}, LD2/k;->i(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, LG2/h;->p:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance v0, Lu2/d;

    const-string v1, "Couldn\'t get video only streams"

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LG2/h;->a(Ljava/lang/Exception;)V

    :goto_4
    iget-object p1, p0, LG2/h;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LG2/h;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LG2/h;->q:Ljava/lang/String;

    invoke-static {p1}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, LG2/h;->r:Ljava/lang/String;

    invoke-static {p0}, LJ2/g;->e(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_5

    :cond_0
    new-instance p0, LG2/g;

    const-string p1, "Could not get any stream. See error variable to get further details."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, LG2/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LG2/h;->k:LG2/l;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, LG2/h;->m:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[serviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LG2/h;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", url=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG2/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', originalUrl=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG2/h;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG2/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LG2/h;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', streamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ageLimit="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
