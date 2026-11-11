.class public final synthetic LM0/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/x0;
.implements LM0/W0;


# instance fields
.field public final synthetic e:LG/c0;


# direct methods
.method public synthetic constructor <init>(LG/c0;)V
    .locals 0

    iput-object p1, p0, LM0/v0;->e:LG/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LM0/l0;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, LM0/l0;->a:LM0/z;

    invoke-virtual {v0}, LM0/l0;->p()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v3, p0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, LM0/l0;->y:LG/c0;

    move-object/from16 v3, p0

    iget-object v4, v3, LM0/v0;->e:LG/c0;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-object v4, v0, LM0/l0;->y:LG/c0;

    iget-object v2, v0, LM0/l0;->z:LG/c0;

    iget-object v5, v0, LM0/l0;->x:LG/c0;

    invoke-virtual {v0, v5, v4}, LM0/l0;->Y0(LG/c0;LG/c0;)LG/c0;

    move-result-object v4

    iput-object v4, v0, LM0/l0;->z:LG/c0;

    invoke-virtual {v4, v2}, LG/c0;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, LM0/l0;->u:Lu1/C0;

    iget-object v6, v0, LM0/l0;->v:Lu1/C0;

    iget-object v7, v0, LM0/l0;->t:Lu1/P;

    iget-object v8, v0, LM0/l0;->s:Lu1/P;

    iget-object v9, v0, LM0/l0;->w:LM0/j2;

    iget-object v10, v0, LM0/l0;->z:LG/c0;

    iget-object v11, v0, LM0/l0;->J:Landroid/os/Bundle;

    invoke-static {v7, v8, v9, v10, v11}, LM0/l0;->w1(Ljava/util/List;Ljava/util/List;LM0/j2;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v12

    iput-object v12, v0, LM0/l0;->u:Lu1/C0;

    iget-object v13, v0, LM0/l0;->s:Lu1/P;

    iget-object v14, v0, LM0/l0;->J:Landroid/os/Bundle;

    iget-object v15, v0, LM0/l0;->w:LM0/j2;

    iget-object v7, v0, LM0/l0;->z:LG/c0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v17

    move-object/from16 v16, v7

    invoke-static/range {v12 .. v17}, LM0/l0;->v1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;LM0/j2;LG/c0;I)Lu1/C0;

    move-result-object v7

    iput-object v7, v0, LM0/l0;->v:Lu1/C0;

    iget-object v7, v0, LM0/l0;->u:Lu1/C0;

    invoke-virtual {v7, v2}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    iget-object v7, v0, LM0/l0;->v:Lu1/C0;

    invoke-virtual {v7, v6}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v4

    iget-object v7, v0, LM0/l0;->i:LJ/t;

    new-instance v8, LM0/C;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v9}, LM0/C;-><init>(LM0/l0;I)V

    const/16 v0, 0xd

    invoke-virtual {v7, v0, v8}, LJ/t;->f(ILJ/q;)V

    goto :goto_0

    :cond_2
    move v2, v5

    move v6, v2

    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v6, v1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v0, v6, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object v0, v1, LM0/z;->d:LM0/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    invoke-static {v4}, LF1/i;->o(Z)V

    iget-object v0, v1, LM0/z;->d:LM0/x;

    invoke-interface {v0}, LM0/x;->s()V

    :cond_6
    :goto_3
    return-void
.end method

.method public e(LM0/M0;I)V
    .locals 1

    iget-object v0, p0, LM0/v0;->e:LG/c0;

    invoke-interface {p1, p2, v0}, LM0/M0;->h(ILG/c0;)V

    return-void
.end method
