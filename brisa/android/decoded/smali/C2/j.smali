.class public abstract LC2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Lu2/f;

.field public static f:Lu2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LC2/j;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 16

    const-string v1, "Could not get JavaScript base player\'s code"

    const-string v2, "https://www.youtube.com"

    const-string v3, "/"

    const-string v4, "https:"

    const-string v5, "//"

    sget-object v6, Lw2/c;->g:Lw2/c;

    sget-object v0, LC2/j;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, LC2/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v8, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v7, v6}, Lcom/brisa/local/j;->G(Ljava/lang/String;Ljava/util/Map;Lw2/c;)LI0/G;

    move-result-object v0

    iget-object v0, v0, LI0/G;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v8, Lu2/f;

    invoke-direct {v8, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string v0, "https://www.youtube.com/embed/"

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v7, v6}, Lcom/brisa/local/j;->G(Ljava/lang/String;Ljava/util/Map;Lw2/c;)LI0/G;

    move-result-object v0

    iget-object v0, v0, LI0/G;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    new-instance v8, Lp2/c;

    invoke-direct {v8}, Lp2/c;-><init>()V

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v10, Lp2/D;

    invoke-direct {v10, v8}, Lp2/D;-><init>(Lp2/c;)V

    new-instance v11, Lo2/g;

    iget-object v12, v10, Lp2/D;->e:Lp2/c;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11}, Lo2/g;-><init>()V

    iput-object v11, v8, Lp2/c;->d:Lo2/g;

    iput-object v10, v11, Lo2/g;->o:Lp2/D;

    iput-object v10, v8, Lp2/c;->a:Lp2/D;

    iget-object v11, v10, Lp2/D;->g:Lp2/C;

    iput-object v11, v8, Lp2/c;->g:Lp2/C;

    new-instance v11, Lp2/a;

    invoke-direct {v11, v9}, Lp2/a;-><init>(Ljava/io/StringReader;)V

    iput-object v11, v8, Lp2/c;->b:Lp2/a;

    iget-object v9, v10, Lp2/D;->f:Lp2/B;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v11, Lp2/a;->n:Ln2/a;

    iput-object v7, v8, Lp2/c;->k:Ln2/a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lp2/T;

    invoke-direct {v9, v8}, Lp2/T;-><init>(Lp2/c;)V

    iput-object v9, v8, Lp2/c;->c:Lp2/T;

    iget-object v9, v8, Lp2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/16 v11, 0x20

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v11, 0x0

    iput-boolean v11, v8, Lp2/c;->l:Z

    invoke-virtual {v10}, Lp2/D;->a()Lp2/G;

    move-result-object v10

    iput-object v10, v8, Lp2/c;->h:Lp2/G;

    new-instance v10, Lp2/N;

    const/4 v12, 0x2

    invoke-direct {v10, v12, v8}, Lp2/O;-><init>(ILp2/c;)V

    iput-object v10, v8, Lp2/c;->i:Lp2/N;

    iput-object v10, v8, Lp2/c;->f:Lp2/Q;

    sget-object v10, Lp2/A;->e:Lp2/n;

    iput-object v10, v8, Lp2/c;->m:Lp2/A;

    iput-object v7, v8, Lp2/c;->n:Lp2/A;

    iput-boolean v11, v8, Lp2/c;->o:Z

    iput-object v7, v8, Lp2/c;->p:Lo2/j;

    iput-object v7, v8, Lp2/c;->q:Lo2/m;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Lp2/c;->r:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Lp2/c;->s:Ljava/util/ArrayList;

    iput-object v7, v8, Lp2/c;->t:LW0/c;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Lp2/c;->u:Ljava/util/ArrayList;

    new-instance v10, Lp2/M;

    const/4 v12, 0x3

    invoke-direct {v10, v12, v8}, Lp2/O;-><init>(ILp2/c;)V

    iput-object v10, v8, Lp2/c;->v:Lp2/M;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lp2/c;->w:Z

    iput-boolean v11, v8, Lp2/c;->x:Z

    :goto_1
    iget-boolean v12, v8, Lp2/c;->l:Z

    if-eqz v12, :cond_b

    iget-object v12, v8, Lp2/c;->b:Lp2/a;

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    iget-object v12, v8, Lp2/c;->k:Ln2/a;

    if-eqz v12, :cond_4

    iget-object v14, v12, Ln2/a;->a:[I

    array-length v15, v14

    iget v13, v12, Ln2/a;->b:I

    if-eq v15, v13, :cond_4

    if-nez v13, :cond_3

    sget-object v13, Ln2/a;->c:[I

    goto :goto_2

    :cond_3
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    :goto_2
    iput-object v13, v12, Ln2/a;->a:[I

    :cond_4
    iget-object v12, v8, Lp2/c;->b:Lp2/a;

    invoke-virtual {v12}, Lp2/a;->close()V

    iput-object v7, v8, Lp2/c;->b:Lp2/a;

    iput-object v7, v8, Lp2/c;->k:Ln2/a;

    iput-object v7, v8, Lp2/c;->c:Lp2/T;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    :goto_3
    iget-object v8, v8, Lp2/c;->d:Lo2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "script"

    invoke-static {v9}, LS1/e;->p(Ljava/lang/String;)V

    invoke-static {v9}, Lq2/u;->x(Ljava/lang/String;)Lq2/o;

    move-result-object v9

    invoke-virtual {v9}, Lq2/o;->f()Z

    move-result v12

    const-class v13, Lo2/j;

    if-eqz v12, :cond_5

    invoke-virtual {v9}, Lq2/o;->e()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v13}, Lj1/a;->g(Lo2/j;Ljava/lang/Class;)Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, Lq2/e;

    invoke-direct {v13, v9, v8, v11}, Lq2/e;-><init>(Lq2/o;Lo2/j;I)V

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Lq2/o;->e()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v13}, Lj1/a;->g(Lo2/j;Ljava/lang/Class;)Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lq2/e;

    invoke-direct {v12, v9, v8, v10}, Lq2/e;-><init>(Lq2/o;Lo2/j;I)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    :goto_4
    new-instance v11, LD2/c;

    const/4 v12, 0x7

    invoke-direct {v11, v12}, LD2/c;-><init>(I)V

    invoke-static {v11}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq2/d;

    invoke-virtual {v9}, Lq2/o;->e()V

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo2/j;

    const-string v12, "name"

    const-string v13, "player/base"

    invoke-virtual {v11, v12, v13}, Lo2/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo2/j;

    const-string v11, "src"

    invoke-virtual {v9, v11}, Lo2/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "base.js"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_8
    :try_start_4
    sget-object v8, LC2/i;->b:Ljava/util/regex/Pattern;

    invoke-static {v8, v0, v10}, LJ2/a;->g(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9
    :try_end_4
    .catch LJ2/e; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    sget-object v0, LC2/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_9
    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_a
    :goto_7
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    sget-object v0, Landroid/support/v4/media/session/b;->a:Lcom/brisa/local/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7, v6}, Lcom/brisa/local/j;->G(Ljava/lang/String;Ljava/util/Map;Lw2/c;)LI0/G;

    move-result-object v0

    iget-object v0, v0, LI0/G;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_8
    sput-object v0, LC2/j;->b:Ljava/lang/String;

    return-void

    :catch_2
    move-exception v0

    new-instance v2, Lu2/f;

    invoke-direct {v2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "The extracted and built JavaScript URL is invalid"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Embedded watch page didn\'t provide JavaScript base player\'s URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    iget-object v12, v8, Lp2/c;->f:Lp2/Q;

    iget v12, v12, Lp2/Q;->a:I

    const/4 v13, 0x7

    if-ne v12, v13, :cond_d

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    iput-boolean v10, v8, Lp2/c;->l:Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v8}, Lp2/c;->E()Lo2/j;

    goto/16 :goto_1

    :cond_d
    iget-object v12, v8, Lp2/c;->c:Lp2/T;

    iget-object v13, v12, Lp2/T;->l:Lp2/I;

    :goto_9
    iget-boolean v14, v12, Lp2/T;->f:Z

    if-nez v14, :cond_e

    iget-object v14, v12, Lp2/T;->d:Lp2/l1;

    iget-object v15, v12, Lp2/T;->a:Lp2/a;

    invoke-virtual {v14, v12, v15}, Lp2/l1;->e(Lp2/T;Lp2/a;)V

    goto :goto_9

    :cond_e
    iget-object v14, v13, Lp2/I;->d:LW0/c;

    invoke-virtual {v14}, LW0/c;->u()Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_a

    :cond_f
    iput-boolean v11, v12, Lp2/T;->f:Z

    iget-object v13, v12, Lp2/T;->e:Lp2/Q;

    :goto_a
    iput-object v13, v8, Lp2/c;->f:Lp2/Q;

    invoke-virtual {v8, v13}, Lp2/c;->H(Lp2/Q;)Z

    invoke-virtual {v13}, Lp2/Q;->f()V

    goto/16 :goto_1

    :catch_5
    move-exception v0

    new-instance v1, Lu2/f;

    const-string v2, "Could not fetch embedded watch page"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    return-void
.end method
