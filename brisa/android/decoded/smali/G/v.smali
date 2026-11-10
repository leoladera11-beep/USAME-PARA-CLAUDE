.class public final synthetic LG/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/j;
.implements Lb0/q;
.implements LJ/r;
.implements LJ/q;
.implements LM0/x0;
.implements LM0/W0;
.implements LM0/T1;
.implements LJ/k;


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LG/v;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LM0/y;I)V
    .locals 0

    .line 2
    iput p2, p0, LG/v;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LM0/d2;

    invoke-virtual {p1}, LM0/d2;->t0()V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, LG/v;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lcom/brisa/local/VideoPlaybackService;->o:Lcom/brisa/local/VideoPlaybackService;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_0
    check-cast p1, LI/b;

    iget p1, p1, LI/b;->r:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/os/Bundle;

    sget-object v0, LG/x0;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LG/r0;->a(Landroid/os/Bundle;)LG/r0;

    move-result-object v0

    sget-object v2, LG/x0;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iget v3, v0, LG/r0;->a:I

    new-array v4, v3, [I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    sget-object v4, LG/x0;->h:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v4

    new-array v3, v3, [Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    sget-object v3, LG/x0;->i:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v1, LG/x0;

    invoke-direct {v1, v0, p1, v2, v4}, LG/x0;-><init>(LG/r0;Z[I[Z)V

    return-object v1

    :pswitch_2
    check-cast p1, LG/x0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LG/x0;->f:Ljava/lang/String;

    iget-object v2, p1, LG/x0;->b:LG/r0;

    invoke-virtual {v2}, LG/r0;->c()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, LG/x0;->g:Ljava/lang/String;

    iget-object v2, p1, LG/x0;->d:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v1, LG/x0;->h:Ljava/lang/String;

    iget-object v2, p1, LG/x0;->e:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    sget-object v1, LG/x0;->i:Ljava/lang/String;

    iget-boolean p1, p1, LG/x0;->c:Z

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_3
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    sget-object v2, LG/x;->V:LG/x;

    new-instance v3, LG/w;

    invoke-direct {v3}, LG/w;-><init>()V

    if-eqz v0, :cond_2

    const-class p1, LJ/e;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    sget-object v4, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    sget-object p1, LG/x;->W:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v4

    :goto_2
    iput-object p1, v3, LG/w;->a:Ljava/lang/String;

    sget-object p1, LG/x;->X:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v4

    :goto_3
    iput-object p1, v3, LG/w;->b:Ljava/lang/String;

    sget-object p1, LG/x;->B0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    goto :goto_5

    :cond_5
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v4

    move v5, v1

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, LG/B;

    sget-object v8, LG/B;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LG/B;->d:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v8, v6}, LG/B;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p1

    iput-object p1, v3, LG/w;->c:Lu1/P;

    sget-object p1, LG/x;->Y:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->d:Ljava/lang/String;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move-object p1, v4

    :goto_6
    iput-object p1, v3, LG/w;->d:Ljava/lang/String;

    sget-object p1, LG/x;->Z:Ljava/lang/String;

    iget v4, v2, LG/x;->e:I

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->e:I

    sget-object p1, LG/x;->a0:Ljava/lang/String;

    iget v4, v2, LG/x;->f:I

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->f:I

    sget-object p1, LG/x;->K0:Ljava/lang/String;

    iget v4, v2, LG/x;->g:F

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, v3, LG/w;->g:F

    sget-object p1, LG/x;->C0:Ljava/lang/String;

    iget v4, v2, LG/x;->h:I

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->h:I

    sget-object p1, LG/x;->b0:Ljava/lang/String;

    iget v4, v2, LG/x;->i:I

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->i:I

    sget-object p1, LG/x;->c0:Ljava/lang/String;

    iget v4, v2, LG/x;->j:I

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->j:I

    sget-object p1, LG/x;->d0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->l:Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move-object p1, v4

    :goto_7
    iput-object p1, v3, LG/w;->k:Ljava/lang/String;

    sget-object p1, LG/x;->G0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->n:Ljava/lang/String;

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    move-object p1, v4

    :goto_8
    iput-object p1, v3, LG/w;->m:Ljava/lang/String;

    sget-object p1, LG/x;->e0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->o:Ljava/lang/String;

    if-eqz p1, :cond_a

    goto :goto_9

    :cond_a
    move-object p1, v4

    :goto_9
    invoke-static {p1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, LG/w;->n:Ljava/lang/String;

    sget-object p1, LG/x;->f0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v2, LG/x;->p:Ljava/lang/String;

    if-eqz p1, :cond_b

    goto :goto_a

    :cond_b
    move-object p1, v4

    :goto_a
    invoke-static {p1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, LG/w;->o:Ljava/lang/String;

    sget-object p1, LG/x;->g0:Ljava/lang/String;

    iget v4, v2, LG/x;->q:I

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->p:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move p1, v1

    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LG/x;->h0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x24

    invoke-static {p1, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_10

    sget-object p1, LG/x;->m0:Ljava/lang/String;

    iget v5, v2, LG/x;->B:F

    invoke-virtual {v0, p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    const/4 v5, 0x0

    cmpg-float v6, p1, v5

    const/high16 v7, -0x40800000    # -1.0f

    if-gtz v6, :cond_c

    move p1, v7

    :cond_c
    iput-object v4, v3, LG/w;->r:Ljava/util/List;

    sget-object v4, LG/x;->i0:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, LG/s;

    iput-object v4, v3, LG/w;->s:LG/s;

    sget-object v4, LG/x;->j0:Ljava/lang/String;

    iget-wide v8, v2, LG/x;->u:J

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v3, LG/w;->t:J

    sget-object v4, LG/x;->k0:Ljava/lang/String;

    iget v6, v2, LG/x;->w:I

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, LG/w;->v:I

    sget-object v4, LG/x;->l0:Ljava/lang/String;

    iget v6, v2, LG/x;->x:I

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, LG/w;->w:I

    sget-object v4, LG/x;->J0:Ljava/lang/String;

    iget v6, v2, LG/x;->y:I

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, LG/w;->x:I

    sget-object v4, LG/x;->E0:Ljava/lang/String;

    iget v6, v2, LG/x;->z:I

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, LG/w;->y:I

    sget-object v4, LG/x;->F0:Ljava/lang/String;

    iget v6, v2, LG/x;->A:I

    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, LG/w;->z:I

    cmpl-float v4, p1, v7

    if-eqz v4, :cond_d

    cmpl-float v4, p1, v5

    if-lez v4, :cond_e

    :cond_d
    const/4 v1, 0x1

    :cond_e
    invoke-static {v1}, LF1/i;->g(Z)V

    iput p1, v3, LG/w;->A:F

    sget-object p1, LG/x;->n0:Ljava/lang/String;

    iget v1, v2, LG/x;->C:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->B:I

    sget-object p1, LG/x;->I0:Ljava/lang/String;

    iget-boolean v1, v2, LG/x;->D:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v3, LG/w;->C:Z

    sget-object p1, LG/x;->o0:Ljava/lang/String;

    iget v1, v2, LG/x;->E:F

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, v3, LG/w;->D:F

    sget-object p1, LG/x;->p0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v3, LG/w;->E:[B

    sget-object p1, LG/x;->q0:Ljava/lang/String;

    iget v1, v2, LG/x;->G:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->F:I

    sget-object p1, LG/x;->D0:Ljava/lang/String;

    iget v1, v2, LG/x;->I:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->H:I

    sget-object p1, LG/x;->r0:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_f

    new-instance v4, LG/n;

    sget-object v1, LG/n;->i:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {p1, v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v6, LG/n;->j:Ljava/lang/String;

    invoke-virtual {p1, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sget-object v7, LG/n;->k:Ljava/lang/String;

    invoke-virtual {p1, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget-object v8, LG/n;->l:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    sget-object v9, LG/n;->m:Ljava/lang/String;

    invoke-virtual {p1, v9, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    sget-object v10, LG/n;->n:Ljava/lang/String;

    invoke-virtual {p1, v10, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    move v5, v1

    invoke-direct/range {v4 .. v10}, LG/n;-><init>(III[BII)V

    iput-object v4, v3, LG/w;->G:LG/n;

    :cond_f
    sget-object p1, LG/x;->s0:Ljava/lang/String;

    iget v1, v2, LG/x;->J:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->I:I

    sget-object p1, LG/x;->H0:Ljava/lang/String;

    iget v1, v2, LG/x;->K:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->J:I

    sget-object p1, LG/x;->t0:Ljava/lang/String;

    iget v1, v2, LG/x;->L:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->K:I

    sget-object p1, LG/x;->u0:Ljava/lang/String;

    iget v1, v2, LG/x;->M:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->L:I

    sget-object p1, LG/x;->v0:Ljava/lang/String;

    iget v1, v2, LG/x;->N:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->M:I

    sget-object p1, LG/x;->w0:Ljava/lang/String;

    iget v1, v2, LG/x;->O:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->N:I

    sget-object p1, LG/x;->x0:Ljava/lang/String;

    iget v1, v2, LG/x;->P:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->O:I

    sget-object p1, LG/x;->z0:Ljava/lang/String;

    iget v1, v2, LG/x;->R:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->Q:I

    sget-object p1, LG/x;->A0:Ljava/lang/String;

    iget v1, v2, LG/x;->S:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->R:I

    sget-object p1, LG/x;->y0:Ljava/lang/String;

    iget v1, v2, LG/x;->T:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v3, LG/w;->S:I

    new-instance p1, LG/x;

    invoke-direct {p1, v3}, LG/x;-><init>(LG/w;)V

    return-object p1

    :cond_10
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_b

    :pswitch_4
    check-cast p1, Landroid/os/Bundle;

    sget-object v0, LG/O;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LG/O;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LG/O;->j:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LG/O;->k:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, LG/O;->l:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v5, LG/O;->m:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LG/O;->n:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v6, LG/N;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, LG/N;->a:Landroid/net/Uri;

    invoke-static {v2}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, LG/N;->b:Ljava/lang/String;

    iput-object v3, v6, LG/N;->c:Ljava/lang/String;

    iput v4, v6, LG/N;->d:I

    iput v1, v6, LG/N;->e:I

    iput-object v5, v6, LG/N;->f:Ljava/lang/String;

    iput-object p1, v6, LG/N;->g:Ljava/lang/String;

    new-instance p1, LG/O;

    invoke-direct {p1, v6}, LG/O;-><init>(LG/N;)V

    return-object p1

    :pswitch_5
    check-cast p1, LG/O;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LG/O;->h:Ljava/lang/String;

    iget-object v2, p1, LG/O;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p1, LG/O;->b:Ljava/lang/String;

    if-eqz v1, :cond_11

    sget-object v2, LG/O;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v1, p1, LG/O;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v2, LG/O;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget v1, p1, LG/O;->d:I

    if-eqz v1, :cond_13

    sget-object v2, LG/O;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_13
    iget v1, p1, LG/O;->e:I

    if-eqz v1, :cond_14

    sget-object v2, LG/O;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_14
    iget-object v1, p1, LG/O;->f:Ljava/lang/String;

    if-eqz v1, :cond_15

    sget-object v2, LG/O;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object p1, p1, LG/O;->g:Ljava/lang/String;

    if-eqz p1, :cond_16

    sget-object v1, LG/O;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-object v0

    :pswitch_6
    check-cast p1, LG/j0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, LG/j0;->e:I

    if-eqz v1, :cond_17

    sget-object v2, LG/j0;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    iget v1, p1, LG/j0;->f:I

    if-eqz v1, :cond_18

    sget-object v2, LG/j0;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget p1, p1, LG/j0;->g:I

    if-eqz p1, :cond_19

    sget-object v1, LG/j0;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    return-object v0

    :pswitch_7
    check-cast p1, LG/B;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, LG/B;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LG/B;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(LM0/l0;)V
    .locals 2

    iget v0, p0, LG/v;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_0
    iget-object p1, p1, LM0/l0;->a:LM0/z;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LH/a;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object p1, p1, LM0/l0;->i:LJ/t;

    new-instance v0, LM0/E1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LM0/E1;-><init>(I)V

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v0}, LJ/t;->f(ILJ/q;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, LM0/l0;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, LM0/l0;->a:LM0/z;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p1, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-object p1, p1, LM0/z;->d:LM0/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;LG/u;)V
    .locals 1

    iget v0, p0, LG/v;->e:I

    check-cast p1, LG/e0;

    packed-switch v0, :pswitch_data_0

    new-instance v0, LG/d0;

    invoke-direct {v0, p2}, LG/d0;-><init>(LG/u;)V

    invoke-interface {p1, v0}, LG/e0;->S(LG/d0;)V

    return-void

    :pswitch_0
    new-instance v0, LG/d0;

    invoke-direct {v0, p2}, LG/d0;-><init>(LG/u;)V

    invoke-interface {p1, v0}, LG/e0;->S(LG/d0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public d()[Lb0/n;
    .locals 6

    iget v0, p0, LG/v;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, LJ0/d;

    invoke-direct {v0}, LJ0/d;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_0
    new-instance v0, LI0/H;

    new-instance v3, LJ/S;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, LJ/S;-><init>(J)V

    new-instance v4, LZ0/i;

    sget-object v5, Lu1/P;->f:Lu1/N;

    sget-object v5, Lu1/C0;->i:Lu1/C0;

    invoke-direct {v4, v5}, LZ0/i;-><init>(Ljava/lang/Object;)V

    sget-object v5, Ly0/k;->a:Ld1/m;

    invoke-direct {v0, v2, v5, v3, v4}, LI0/H;-><init>(ILy0/k;LJ/S;LZ0/i;)V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_1
    new-instance v0, LI0/B;

    invoke-direct {v0}, LI0/B;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_2
    new-instance v0, LI0/d;

    invoke-direct {v0}, LI0/d;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_3
    new-instance v0, LI0/c;

    invoke-direct {v0}, LI0/c;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    :pswitch_4
    new-instance v0, LI0/a;

    invoke-direct {v0}, LI0/a;-><init>()V

    new-array v2, v2, [Lb0/n;

    aput-object v0, v2, v1

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(LM0/M0;I)V
    .locals 1

    iget v0, p0, LG/v;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1, p2}, LM0/M0;->e(I)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 0

    iget p2, p0, LG/v;->e:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LG/v;->e:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    check-cast p1, LG/e0;

    invoke-interface {p1, v0}, LG/e0;->x(F)V

    return-void

    :pswitch_0
    check-cast p1, LG/e0;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, LG/e0;->E(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
