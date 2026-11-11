.class public final synthetic LM0/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LM0/I0;LM0/P0;Lu1/P;LM0/E;ZLi/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LM0/D0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/D0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/D0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/D0;->i:Ljava/lang/Object;

    iput-object p4, p0, LM0/D0;->j:Ljava/lang/Object;

    iput-boolean p5, p0, LM0/D0;->f:Z

    iput-object p6, p0, LM0/D0;->k:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LN/T;Landroid/util/Pair;LU/r;LU/w;Ljava/io/IOException;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LM0/D0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/D0;->g:Ljava/lang/Object;

    iput-object p2, p0, LM0/D0;->h:Ljava/lang/Object;

    iput-object p3, p0, LM0/D0;->i:Ljava/lang/Object;

    iput-object p4, p0, LM0/D0;->j:Ljava/lang/Object;

    iput-object p5, p0, LM0/D0;->k:Ljava/lang/Object;

    iput-boolean p6, p0, LM0/D0;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, LM0/D0;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/D0;->g:Ljava/lang/Object;

    check-cast v0, LN/T;

    iget-object v1, p0, LM0/D0;->h:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, LM0/D0;->i:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, LU/r;

    iget-object v2, p0, LM0/D0;->j:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, LU/w;

    iget-object v2, p0, LM0/D0;->k:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/io/IOException;

    iget-object v0, v0, LN/T;->f:LN/W;

    iget-object v3, v0, LN/W;->i:LO/d;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LU/A;

    iget-boolean v9, p0, LM0/D0;->f:Z

    invoke-virtual/range {v3 .. v9}, LO/d;->B(ILU/A;LU/r;LU/w;Ljava/io/IOException;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/D0;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LM0/I0;

    iget-object v0, p0, LM0/D0;->h:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LM0/P0;

    iget-object v0, p0, LM0/D0;->i:Ljava/lang/Object;

    check-cast v0, Lu1/P;

    iget-object v1, p0, LM0/D0;->j:Ljava/lang/Object;

    check-cast v1, LM0/E;

    iget-boolean v5, p0, LM0/D0;->f:Z

    iget-object v4, p0, LM0/D0;->k:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Li/j;

    :try_start_0
    iget-object v4, v2, LM0/I0;->m:LM0/A0;

    iget-object v7, v2, LM0/I0;->f:La1/g;

    check-cast v4, LM0/m;

    invoke-virtual {v4, v3, v0, v7, v1}, LM0/m;->a(LM0/P0;Lu1/P;La1/g;LM0/E;)LZ0/i;

    move-result-object v4

    iget-object v0, v2, LM0/I0;->i:LM0/A;

    new-instance v1, LM0/E0;

    invoke-direct/range {v1 .. v6}, LM0/E0;-><init>(LM0/I0;LM0/P0;LZ0/i;ZLi/j;)V

    invoke-virtual {v0, v1}, LM0/A;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, v6, Li/j;->d:Z

    iget-object v1, v6, Li/j;->b:Li/l;

    if-eqz v1, :cond_0

    iget-object v1, v1, Li/l;->f:Li/k;

    invoke-virtual {v1, v0}, Li/i;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v6, Li/j;->a:Ljava/io/Serializable;

    iput-object v0, v6, Li/j;->b:Li/l;

    iput-object v0, v6, Li/j;->c:Li/n;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
