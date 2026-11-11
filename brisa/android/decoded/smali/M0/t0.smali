.class public final LM0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/y;


# instance fields
.field public final a:Landroid/content/ContextWrapper;

.field public final b:LM0/z;

.field public final c:LM0/o2;

.field public final d:LJ/t;

.field public final e:LM0/q0;

.field public final f:LJ/d;

.field public final g:Landroid/os/Bundle;

.field public final h:J

.field public i:LN0/O;

.field public j:LN0/i;

.field public k:Z

.field public l:Z

.field public m:LM0/s0;

.field public n:LM0/s0;

.field public o:Z

.field public p:LM0/r0;

.field public q:J

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;LM0/z;LM0/o2;Landroid/os/Bundle;Landroid/os/Looper;LJ/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LM0/s0;

    invoke-direct {v0}, LM0/s0;-><init>()V

    iput-object v0, p0, LM0/t0;->m:LM0/s0;

    new-instance v0, LM0/s0;

    invoke-direct {v0}, LM0/s0;-><init>()V

    iput-object v0, p0, LM0/t0;->n:LM0/s0;

    new-instance v0, LM0/r0;

    invoke-direct {v0}, LM0/r0;-><init>()V

    iput-object v0, p0, LM0/t0;->p:LM0/r0;

    new-instance v0, LJ/t;

    new-instance v1, LG/v;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, LG/v;-><init>(LM0/y;I)V

    sget-object v2, LJ/M;->a:LJ/M;

    invoke-direct {v0, p5, v2, v1}, LJ/t;-><init>(Landroid/os/Looper;LJ/M;LJ/r;)V

    iput-object v0, p0, LM0/t0;->d:LJ/t;

    iput-object p1, p0, LM0/t0;->a:Landroid/content/ContextWrapper;

    iput-object p2, p0, LM0/t0;->b:LM0/z;

    new-instance p1, LM0/q0;

    invoke-direct {p1, p0, p5}, LM0/q0;-><init>(LM0/t0;Landroid/os/Looper;)V

    iput-object p1, p0, LM0/t0;->e:LM0/q0;

    iput-object p3, p0, LM0/t0;->c:LM0/o2;

    iput-object p4, p0, LM0/t0;->g:Landroid/os/Bundle;

    iput-object p6, p0, LM0/t0;->f:LJ/d;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, LM0/t0;->h:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LM0/t0;->q:J

    iput-wide p1, p0, LM0/t0;->r:J

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    return-void
.end method

.method public static W0(LM0/r0;)Z
    .locals 3

    iget-object v0, p0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget v1, v0, LM0/b2;->A:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v0, LG/c0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LG/c0;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, LM0/r0;->c:Ljava/lang/Object;

    check-cast p0, LM0/b2;

    iget-boolean p0, p0, LM0/b2;->v:Z

    if-eqz p0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static X0(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static Y0(LN0/U;)LN0/U;
    .locals 20

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, v0, LN0/U;->h:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const-string v1, "MCImplLegacy"

    const-string v2, "Adjusting playback speed to 1.0f because negative playback speed isn\'t supported."

    invoke-static {v1, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-wide v7, v0, LN0/U;->g:J

    iget-wide v10, v0, LN0/U;->i:J

    iget v12, v0, LN0/U;->j:I

    iget-object v13, v0, LN0/U;->k:Ljava/lang/CharSequence;

    iget-object v2, v0, LN0/U;->m:Ljava/util/AbstractCollection;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-wide v2, v0, LN0/U;->n:J

    iget-object v4, v0, LN0/U;->o:Landroid/os/Bundle;

    move-object/from16 v19, v4

    iget v4, v0, LN0/U;->e:I

    iget-wide v5, v0, LN0/U;->f:J

    iget-wide v14, v0, LN0/U;->l:J

    move-wide/from16 v17, v2

    new-instance v3, LN0/U;

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v19}, LN0/U;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    return-object v3

    :cond_2
    return-object v0
.end method

.method public static Z0(ILG/P;JZ)LG/f0;
    .locals 12

    new-instance v0, LG/f0;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v1

    :goto_0
    if-eqz p4, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v1

    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    move v5, p0

    move-wide v8, p2

    move v2, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v11}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, LM0/t0;->A0(II)V

    return-void
.end method

.method public final A0(II)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, LF1/i;->g(Z)V

    invoke-virtual {p0}, LM0/t0;->p0()LG/q0;

    move-result-object v2

    invoke-virtual {v2}, LG/q0;->o()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v2, :cond_5

    if-ne p1, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, LM0/t0;->p:LM0/r0;

    iget-object v2, v2, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LM0/b2;

    iget-object v2, v2, LM0/b2;->j:LG/q0;

    check-cast v2, LM0/f2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lu1/M;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lu1/I;-><init>(I)V

    iget-object v4, v2, LM0/f2;->e:Lu1/P;

    invoke-virtual {v4, v1, p1}, Lu1/P;->s(II)Lu1/P;

    move-result-object v5

    invoke-virtual {v3, v5}, Lu1/I;->d(Ljava/lang/Iterable;)V

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lu1/P;->s(II)Lu1/P;

    move-result-object v4

    invoke-virtual {v3, v4}, Lu1/I;->d(Ljava/lang/Iterable;)V

    new-instance v4, LM0/f2;

    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v3

    iget-object v2, v2, LM0/f2;->f:LM0/e2;

    invoke-direct {v4, v3, v2}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    invoke-virtual {p0}, LM0/t0;->V()I

    move-result v2

    sub-int v3, p2, p1

    const/4 v5, -0x1

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v2, p2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    :goto_1
    if-ne v2, v5, :cond_4

    invoke-virtual {v4}, LM0/f2;->o()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1, v1, v2}, LJ/W;->g(III)I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Currently playing item is removed. Assumes item at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is the new current item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCImplLegacy"

    invoke-static {v1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    invoke-virtual {v0, v4, v2}, LM0/b2;->m(LM0/f2;I)LM0/b2;

    move-result-object v6

    new-instance v5, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v0, LM0/r0;->d:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, LM0/j2;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, LG/c0;

    iget-object v1, v0, LM0/r0;->b:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v0, p0, LM0/t0;->s:Z

    if-eqz v0, :cond_5

    :goto_2
    if-ge p1, p2, :cond_5

    iget-object v0, p0, LM0/t0;->m:LM0/s0;

    iget-object v0, v0, LM0/s0;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v1, p0, LM0/t0;->m:LM0/s0;

    iget-object v1, v1, LM0/s0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN0/M;

    iget-object v1, v1, LN0/M;->e:LN0/C;

    invoke-virtual {v0, v1}, LN0/O;->f0(LN0/C;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final B(Z)V
    .locals 8

    invoke-virtual {p0}, LM0/t0;->w0()Z

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v1, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    invoke-virtual {v0, p1}, LM0/b2;->k(Z)LM0/b2;

    move-result-object v2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, LM0/j2;

    iget-object v4, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    iget-object v5, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    sget-object v1, LM0/u;->a:Lu1/b0;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {v0, p1, v1}, LN0/i;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final B0(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LM0/t0;->c0(II)V

    return-void
.end method

.method public final C()V
    .locals 1

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    return-void
.end method

.method public final C0()V
    .locals 1

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    return-void
.end method

.method public final D(I)V
    .locals 9

    invoke-virtual {p0}, LM0/t0;->k()I

    move-result v0

    invoke-virtual {p0}, LM0/t0;->Y()LG/p;

    move-result-object v1

    iget v1, v1, LG/p;->b:I

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, LM0/t0;->r0()Z

    move-result v1

    new-instance v2, LM0/r0;

    iget-object v3, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v3, LM0/b2;

    invoke-virtual {v3, v0, v1}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v3

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v0, LM0/r0;->d:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, LM0/j2;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LG/c0;

    iget-object v1, v0, LM0/r0;->b:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/media/session/MediaController;->adjustVolume(II)V

    return-void
.end method

.method public final D0(LG/e;Z)V
    .locals 0

    const-string p1, "MCImplLegacy"

    const-string p2, "Legacy session doesn\'t support setting audio attributes remotely"

    invoke-static {p1, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final E()LG/y0;
    .locals 1

    sget-object v0, LG/y0;->b:LG/y0;

    return-object v0
.end method

.method public final E0()V
    .locals 1

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    return-void
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget v0, v0, LM0/l2;->f:I

    return v0
.end method

.method public final F0(Landroid/view/TextureView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting TextureView"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final G()J
    .locals 2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-wide v0, v0, LM0/b2;->E:J

    return-wide v0
.end method

.method public final G0(LG/P;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, LM0/t0;->Z(LG/P;J)V

    return-void
.end method

.method public final H()LG/T;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->m:LG/T;

    return-object v0
.end method

.method public final H0()V
    .locals 1

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    return-void
.end method

.method public final I()Z
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-boolean v0, v0, LM0/b2;->x:Z

    return v0
.end method

.method public final I0(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting SurfaceHolder"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final J()J
    .locals 2

    invoke-virtual {p0}, LM0/t0;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final J0(F)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting player volume"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final K()I
    .locals 1

    invoke-virtual {p0}, LM0/t0;->V()I

    move-result v0

    return v0
.end method

.method public final K0()LG/T;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    invoke-virtual {v0}, LM0/b2;->s()LG/P;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LG/T;->M:LG/T;

    return-object v0

    :cond_0
    iget-object v0, v0, LG/P;->d:LG/T;

    return-object v0
.end method

.method public final L()LI/c;
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting Cue"

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LI/c;->d:LI/c;

    return-object v0
.end method

.method public final L0(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1, v2}, LM0/t0;->i(Ljava/util/List;IJ)V

    return-void
.end method

.method public final M(Landroid/view/TextureView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support clearing TextureView"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final M0()V
    .locals 1

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    return-void
.end method

.method public final N()LG/C0;
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSize"

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LG/C0;->d:LG/C0;

    return-object v0
.end method

.method public final N0(LG/P;)V
    .locals 0

    invoke-virtual {p0, p1}, LM0/t0;->G0(LG/P;)V

    return-void
.end method

.method public final O(LG/e0;)V
    .locals 1

    iget-object v0, p0, LM0/t0;->d:LJ/t;

    invoke-virtual {v0, p1}, LJ/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final O0()J
    .locals 8

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LM0/b2;

    iget-wide v2, p0, LM0/t0;->q:J

    iget-wide v4, p0, LM0/t0;->r:J

    iget-object v0, p0, LM0/t0;->b:LM0/z;

    iget-wide v6, v0, LM0/z;->f:J

    invoke-static/range {v1 .. v7}, LM0/Y1;->j(LM0/b2;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, LM0/t0;->q:J

    return-wide v0
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    return-void
.end method

.method public final P0()J
    .locals 2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-wide v0, v0, LM0/b2;->C:J

    return-wide v0
.end method

.method public final Q()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LM0/t0;->l(Z)V

    return-void
.end method

.method public final Q0()LM0/j2;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v0, LM0/j2;

    return-object v0
.end method

.method public final R()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final R0()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, LM0/t0;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public final S()V
    .locals 3

    invoke-virtual {p0}, LM0/t0;->V()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, LM0/t0;->d1(IJ)V

    return-void
.end method

.method public final S0()Lu1/P;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v0, Lu1/P;

    return-object v0
.end method

.method public final T()LG/e;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->q:LG/e;

    return-object v0
.end method

.method public final T0()V
    .locals 4

    iget-object v0, p0, LM0/t0;->c:LM0/o2;

    iget-object v1, v0, LM0/o2;->a:LM0/n2;

    invoke-interface {v1}, LM0/n2;->b()I

    move-result v1

    iget-object v2, p0, LM0/t0;->b:LM0/z;

    if-nez v1, :cond_0

    iget-object v0, v0, LM0/o2;->a:LM0/n2;

    invoke-interface {v0}, LM0/n2;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, LN0/N;

    new-instance v1, LH/i;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v0, v3}, LH/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, LM0/z;->X0(Ljava/lang/Runnable;)V

    iget-object v0, v2, LM0/z;->e:Landroid/os/Handler;

    new-instance v1, LM0/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LM0/o0;-><init>(LM0/t0;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, LM0/o0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LM0/o0;-><init>(LM0/t0;I)V

    invoke-virtual {v2, v0}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final U0(LM0/i2;Landroid/os/Bundle;)Lz1/B;
    .locals 2

    iget-object v0, p1, LM0/i2;->c:Landroid/os/Bundle;

    iget-object v1, p0, LM0/t0;->i:LN0/O;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object p2, v1

    :goto_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget-object p1, p1, LM0/i2;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, LN0/i;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, LM0/m2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, LM0/m2;

    const/16 p2, -0x64

    invoke-direct {p1, p2}, LM0/m2;-><init>(I)V

    invoke-static {p1}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method

.method public final V()I
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-object v0, v0, LM0/l2;->a:LG/f0;

    iget v0, v0, LG/f0;->b:I

    return v0
.end method

.method public final V0(ILjava/util/List;)V
    .locals 8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v0, LM0/p0;

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, LM0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v7, p1, :cond_1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/P;

    iget-object p1, p1, LG/P;->d:LG/T;

    iget-object p1, p1, LG/T;->k:[B

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LM0/p0;->run()V

    goto :goto_1

    :cond_0
    iget-object p2, v1, LM0/t0;->f:LJ/d;

    invoke-interface {p2, p1}, LJ/d;->s([B)Lz1/B;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, v1, LM0/t0;->b:LM0/z;

    iget-object p2, p2, LM0/z;->e:Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LM0/A;

    const/4 v5, 0x6

    invoke-direct {v2, p2, v5}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0, v2}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final W(IZ)V
    .locals 8

    invoke-virtual {p0}, LM0/t0;->r0()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, LM0/t0;->k()I

    move-result v0

    new-instance v1, LM0/r0;

    iget-object v2, p0, LM0/t0;->p:LM0/r0;

    iget-object v2, v2, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LM0/b2;

    invoke-virtual {v2, v0, p2}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, LM0/j2;

    iget-object v4, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    iget-object v5, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, -0x64

    goto :goto_0

    :cond_1
    const/16 p2, 0x64

    :goto_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p1}, Landroid/media/session/MediaController;->adjustVolume(II)V

    return-void
.end method

.method public final X(LG/T;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting playlist metadata"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Y()LG/p;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->s:LG/p;

    return-object v0
.end method

.method public final Z(LG/P;J)V
    .locals 1

    invoke-static {p1}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, LM0/t0;->i(Ljava/util/List;IJ)V

    return-void
.end method

.method public final a()V
    .locals 5

    iget-boolean v0, p0, LM0/t0;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LM0/t0;->k:Z

    iget-object v0, p0, LM0/t0;->j:LN0/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, LN0/i;->a:Ljava/lang/Object;

    check-cast v0, LN0/f;

    iget-object v2, v0, LN0/f;->f:LN0/O;

    if-eqz v2, :cond_1

    iget-object v3, v0, LN0/f;->g:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    const/4 v4, 0x7

    :try_start_0
    invoke-virtual {v2, v4, v1, v3}, LN0/O;->h0(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "MediaBrowserCompat"

    const-string v3, "Remote error unregistering client messenger."

    invoke-static {v2, v3}, LJ/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, v0, LN0/f;->b:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    iput-object v1, p0, LM0/t0;->j:LN0/i;

    :cond_2
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    if-eqz v0, :cond_4

    iget-object v2, v0, LN0/O;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, LM0/t0;->e:LM0/q0;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "MediaControllerCompat"

    const-string v2, "the callback has never been registered"

    invoke-static {v0, v2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    invoke-virtual {v0, v3}, LN0/y;->b(LM0/q0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3, v1}, LM0/q0;->d(Landroid/os/Handler;)V

    :goto_1
    iget-object v0, v3, LM0/q0;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, LM0/t0;->i:LN0/O;

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v1}, LM0/q0;->d(Landroid/os/Handler;)V

    throw v0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, LM0/t0;->l:Z

    iget-object v0, p0, LM0/t0;->d:LJ/t;

    invoke-virtual {v0}, LJ/t;->d()V

    return-void
.end method

.method public final a0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LM0/t0;->D(I)V

    return-void
.end method

.method public final a1(ZLM0/s0;)V
    .locals 84

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    iget-boolean v1, v0, LM0/t0;->k:Z

    if-nez v1, :cond_7e

    iget-boolean v1, v0, LM0/t0;->l:Z

    if-nez v1, :cond_0

    goto/16 :goto_5a

    :cond_0
    iget-object v1, v0, LM0/t0;->m:LM0/s0;

    iget-object v3, v0, LM0/t0;->p:LM0/r0;

    iget-object v4, v0, LM0/t0;->i:LN0/O;

    iget-object v4, v4, LN0/O;->f:Ljava/lang/Object;

    check-cast v4, LN0/y;

    iget-object v4, v4, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, LM0/t0;->i:LN0/O;

    iget-object v5, v5, LN0/O;->f:Ljava/lang/Object;

    check-cast v5, LN0/y;

    iget-object v5, v5, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v5

    iget-object v7, v0, LM0/t0;->i:LN0/O;

    iget-object v7, v7, LN0/O;->f:Ljava/lang/Object;

    check-cast v7, LN0/y;

    iget-object v7, v7, LN0/y;->e:LN0/N;

    invoke-virtual {v7}, LN0/N;->a()LN0/d;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iget-object v10, v0, LM0/t0;->i:LN0/O;

    iget-object v10, v10, LN0/O;->f:Ljava/lang/Object;

    check-cast v10, LN0/y;

    iget-object v10, v10, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v10}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v10

    iget-object v11, v0, LM0/t0;->b:LM0/z;

    iget-wide v12, v11, LM0/z;->f:J

    iget-boolean v14, v0, LM0/t0;->o:Z

    iget-object v15, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v15, LN0/D;

    const/16 v16, 0x1

    iget-object v8, v1, LM0/s0;->d:Ljava/lang/Object;

    check-cast v8, LN0/U;

    iget-object v9, v1, LM0/s0;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    move-wide/from16 v18, v5

    if-eqz v15, :cond_5

    iget-object v5, v2, LM0/s0;->e:Ljava/lang/Object;

    check-cast v5, LN0/D;

    if-eqz v5, :cond_5

    iget-object v6, v15, LN0/D;->g:[B

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, LN0/D;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v20, v7

    invoke-virtual {v15}, LN0/D;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, v15, LN0/D;->g:[B

    iput-object v6, v5, LN0/D;->g:[B

    goto :goto_2

    :cond_5
    :goto_1
    move/from16 v20, v7

    :cond_6
    :goto_2
    iget-object v5, v2, LM0/s0;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v2, LM0/s0;->h:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    iget-object v7, v2, LM0/s0;->d:Ljava/lang/Object;

    check-cast v7, LN0/U;

    iget-object v15, v2, LM0/s0;->e:Ljava/lang/Object;

    check-cast v15, LN0/D;

    move/from16 v21, v14

    iget-object v14, v2, LM0/s0;->c:Ljava/lang/Object;

    check-cast v14, LN0/A;

    if-eq v9, v5, :cond_c

    move-object/from16 v22, v11

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v23, v4

    move-wide/from16 v24, v12

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_8

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/M;

    iget-object v13, v12, LN0/M;->e:LN0/C;

    iget-object v13, v13, LN0/C;->i:Landroid/graphics/Bitmap;

    move-object/from16 v26, v14

    if-eqz v13, :cond_7

    iget-wide v13, v12, LN0/M;->f:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v14, v26

    goto :goto_3

    :cond_8
    move-object/from16 v26, v14

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_d

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/M;

    iget-object v13, v12, LN0/M;->e:LN0/C;

    iget-object v13, v13, LN0/C;->i:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_b

    iget-wide v13, v12, LN0/M;->f:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LN0/M;

    if-eqz v13, :cond_b

    iget-object v12, v12, LN0/M;->e:LN0/C;

    iget-object v13, v13, LN0/M;->e:LN0/C;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, LN0/C;->j:[B

    if-eqz v14, :cond_b

    iget-object v14, v12, LN0/C;->i:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_b

    move/from16 v27, v4

    iget-object v4, v13, LN0/C;->i:Landroid/graphics/Bitmap;

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v14, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    iget-object v4, v13, LN0/C;->j:[B

    iput-object v4, v12, LN0/C;->j:[B

    goto :goto_5

    :cond_b
    move/from16 v27, v4

    :goto_5
    add-int/lit8 v4, v27, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v23, v4

    move-object/from16 v22, v11

    move-wide/from16 v24, v12

    move-object/from16 v26, v14

    :cond_d
    if-eq v9, v5, :cond_e

    move/from16 v4, v16

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    const/4 v9, 0x4

    const-string v12, "initialCapacity"

    if-eqz v4, :cond_13

    sget-object v13, LM0/f2;->g:LM0/f2;

    invoke-static {v9, v12}, Lu1/s;->e(ILjava/lang/String;)V

    new-array v13, v9, [Ljava/lang/Object;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move/from16 v29, v4

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v9, v4, :cond_12

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/M;

    sget-object v30, LM0/u;->a:Lu1/b0;

    move/from16 v30, v9

    iget-object v9, v4, LN0/M;->e:LN0/C;

    invoke-static {v9}, LM0/u;->g(LN0/C;)LG/P;

    move-result-object v32

    move/from16 v38, v10

    iget-wide v9, v4, LN0/M;->f:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_8
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    add-int/lit8 v31, v4, 0x1

    move-object/from16 v39, v6

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_10

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_9
    move-object/from16 v35, v0

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :goto_a
    new-instance v31, LM0/e2;

    const-wide v36, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v33, v9

    invoke-direct/range {v31 .. v37}, LM0/e2;-><init>(LG/P;JLjava/lang/String;J)V

    array-length v0, v13

    add-int/lit8 v4, v11, 0x1

    invoke-static {v0, v4}, Lu1/J;->b(II)I

    move-result v0

    array-length v6, v13

    if-gt v0, v6, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    :goto_b
    aput-object v31, v13, v11

    add-int/lit8 v9, v30, 0x1

    move-object/from16 v0, p0

    move v11, v4

    move/from16 v10, v38

    move-object/from16 v6, v39

    goto/16 :goto_7

    :cond_12
    move-object/from16 v39, v6

    move/from16 v38, v10

    new-instance v0, LM0/f2;

    invoke-static {v11, v13}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    goto :goto_c

    :cond_13
    move/from16 v29, v4

    move-object/from16 v39, v6

    move/from16 v38, v10

    iget-object v0, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    check-cast v0, LM0/f2;

    new-instance v4, LM0/f2;

    iget-object v6, v0, LM0/f2;->e:Lu1/P;

    iget-object v0, v0, LM0/f2;->f:LM0/e2;

    invoke-direct {v4, v6, v0}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    move-object v0, v4

    :goto_c
    iget-object v4, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v4, LN0/D;

    if-ne v4, v15, :cond_15

    if-eqz p1, :cond_14

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    move/from16 v4, v16

    :goto_e
    if-nez v8, :cond_16

    const-wide/16 v13, -0x1

    goto :goto_f

    :cond_16
    iget-wide v13, v8, LN0/U;->n:J

    :goto_f
    if-nez v7, :cond_17

    const-wide/16 v9, -0x1

    const-wide/16 v30, -0x1

    goto :goto_10

    :cond_17
    const-wide/16 v30, -0x1

    iget-wide v9, v7, LN0/U;->n:J

    :goto_10
    cmp-long v6, v13, v9

    if-nez v6, :cond_19

    if-eqz p1, :cond_18

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    goto :goto_12

    :cond_19
    :goto_11
    move/from16 v6, v16

    :goto_12
    invoke-static {v15}, LM0/u;->c(LN0/D;)J

    move-result-wide v45

    const-string v11, "MCImplLegacy"

    if-nez v4, :cond_1b

    if-nez v6, :cond_1b

    if-eqz v29, :cond_1a

    goto :goto_13

    :cond_1a
    iget-object v4, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v4, LM0/b2;

    iget-object v5, v4, LM0/b2;->c:LM0/l2;

    iget-object v5, v5, LM0/l2;->a:LG/f0;

    iget v5, v5, LG/f0;->b:I

    iget-object v4, v4, LM0/b2;->B:LG/T;

    move-object/from16 v75, v4

    goto/16 :goto_1f

    :cond_1b
    :goto_13
    if-eqz v5, :cond_1e

    cmp-long v14, v9, v30

    if-nez v14, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v14, 0x0

    :goto_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v14, v13, :cond_1e

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LN0/M;

    move-wide/from16 v30, v9

    iget-wide v9, v13, LN0/M;->f:J

    cmp-long v9, v9, v30

    if-nez v9, :cond_1d

    goto :goto_16

    :cond_1d
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v9, v30

    goto :goto_14

    :cond_1e
    :goto_15
    const/4 v14, -0x1

    :goto_16
    if-eqz v15, :cond_1f

    move/from16 v9, v16

    goto :goto_17

    :cond_1f
    const/4 v9, 0x0

    :goto_17
    if-eqz v9, :cond_20

    if-eqz v4, :cond_20

    move/from16 v10, v38

    invoke-static {v15, v10}, LM0/u;->j(LN0/D;I)LG/T;

    move-result-object v5

    goto :goto_18

    :cond_20
    move/from16 v10, v38

    if-nez v9, :cond_22

    if-eqz v6, :cond_22

    const/4 v6, -0x1

    if-ne v14, v6, :cond_21

    sget-object v5, LG/T;->M:LG/T;

    goto :goto_18

    :cond_21
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN0/M;

    iget-object v5, v5, LN0/M;->e:LN0/C;

    invoke-static {v5, v10}, LM0/u;->i(LN0/C;I)LG/T;

    move-result-object v5

    goto :goto_18

    :cond_22
    iget-object v5, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v5, LM0/b2;

    iget-object v5, v5, LM0/b2;->B:LG/T;

    :goto_18
    iget-object v6, v0, LM0/f2;->e:Lu1/P;

    const/4 v13, -0x1

    if-ne v14, v13, :cond_27

    if-eqz v4, :cond_26

    if-eqz v9, :cond_24

    const-string v0, "Adding a fake MediaItem at the end of the list because there\'s no QueueItem with the active queue id and current Timeline should have currently playing MediaItem."

    invoke-static {v11, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.media.metadata.MEDIA_ID"

    iget-object v4, v15, LN0/D;->e:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_23
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0, v15, v10}, LM0/u;->h(Ljava/lang/String;LN0/D;I)LG/P;

    move-result-object v41

    new-instance v0, LM0/f2;

    new-instance v40, LM0/e2;

    const-wide/16 v42, -0x2

    const-string v44, "fake"

    invoke-direct/range {v40 .. v46}, LM0/e2;-><init>(LG/P;JLjava/lang/String;J)V

    move-object/from16 v4, v40

    invoke-direct {v0, v6, v4}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    invoke-virtual {v0}, LM0/f2;->o()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v10, v4

    goto/16 :goto_1e

    :cond_24
    new-instance v0, LM0/f2;

    const/4 v4, 0x0

    invoke-direct {v0, v6, v4}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_1e

    :cond_26
    const/4 v13, -0x1

    :cond_27
    const/4 v4, 0x0

    if-eq v14, v13, :cond_25

    new-instance v0, LM0/f2;

    invoke-direct {v0, v6, v4}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    if-eqz v9, :cond_2c

    invoke-virtual {v0}, LM0/f2;->o()I

    move-result v4

    if-lt v14, v4, :cond_28

    const/4 v6, 0x0

    goto :goto_1a

    :cond_28
    invoke-virtual {v0, v14}, LM0/f2;->s(I)LM0/e2;

    move-result-object v4

    iget-object v6, v4, LM0/e2;->a:LG/P;

    :goto_1a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v6, LG/P;->a:Ljava/lang/String;

    invoke-static {v4, v15, v10}, LM0/u;->h(Ljava/lang/String;LN0/D;I)LG/P;

    move-result-object v41

    iget-object v4, v0, LM0/f2;->e:Lu1/P;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    iget-object v0, v0, LM0/f2;->f:LM0/e2;

    if-lt v14, v6, :cond_2a

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ne v14, v6, :cond_29

    if-eqz v0, :cond_29

    goto :goto_1b

    :cond_29
    const/4 v6, 0x0

    goto :goto_1c

    :cond_2a
    :goto_1b
    move/from16 v6, v16

    :goto_1c
    invoke-static {v6}, LF1/i;->g(Z)V

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ne v14, v6, :cond_2b

    new-instance v6, LM0/f2;

    new-instance v40, LM0/e2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LM0/e2;->c:Ljava/lang/String;

    const-wide/16 v42, -0x1

    move-object/from16 v44, v0

    invoke-direct/range {v40 .. v46}, LM0/e2;-><init>(LG/P;JLjava/lang/String;J)V

    move-object/from16 v0, v40

    invoke-direct {v6, v4, v0}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    move-object v0, v6

    goto :goto_1d

    :cond_2b
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM0/e2;

    new-instance v9, Lu1/M;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lu1/I;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10, v14}, Lu1/P;->s(II)Lu1/P;

    move-result-object v13

    invoke-virtual {v9, v13}, Lu1/I;->d(Ljava/lang/Iterable;)V

    new-instance v40, LM0/e2;

    move v10, v14

    iget-wide v13, v6, LM0/e2;->b:J

    iget-object v6, v6, LM0/e2;->c:Ljava/lang/String;

    move-object/from16 v44, v6

    move-wide/from16 v42, v13

    invoke-direct/range {v40 .. v46}, LM0/e2;-><init>(LG/P;JLjava/lang/String;J)V

    move-object/from16 v6, v40

    invoke-virtual {v9, v6}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    invoke-virtual {v4, v14, v6}, Lu1/P;->s(II)Lu1/P;

    move-result-object v4

    invoke-virtual {v9, v4}, Lu1/I;->d(Ljava/lang/Iterable;)V

    new-instance v4, LM0/f2;

    invoke-virtual {v9}, Lu1/M;->f()Lu1/C0;

    move-result-object v6

    invoke-direct {v4, v6, v0}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    move-object v0, v4

    goto :goto_1e

    :cond_2c
    :goto_1d
    move v10, v14

    :goto_1e
    move-object/from16 v75, v5

    move v5, v10

    :goto_1f
    if-eqz v26, :cond_2d

    move-object/from16 v14, v26

    iget v4, v14, LN0/A;->b:I

    goto :goto_20

    :cond_2d
    move-object/from16 v14, v26

    const/4 v4, 0x0

    :goto_20
    new-instance v6, LG/b0;

    invoke-direct {v6}, LG/b0;-><init>()V

    if-nez v7, :cond_2e

    const-wide/16 v9, 0x0

    const-wide/16 v30, 0x0

    goto :goto_21

    :cond_2e
    const-wide/16 v30, 0x0

    iget-wide v9, v7, LN0/U;->i:J

    :goto_21
    if-nez v7, :cond_2f

    :goto_22
    move-object/from16 v26, v14

    const/16 v32, 0x0

    goto :goto_23

    :cond_2f
    iget v13, v7, LN0/U;->e:I

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto :goto_22

    :pswitch_1
    move-object/from16 v26, v14

    move/from16 v32, v16

    :goto_23
    const-wide/16 v13, 0x4

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v33

    if-eqz v33, :cond_30

    if-eqz v32, :cond_31

    :cond_30
    move-wide/from16 v33, v13

    goto :goto_25

    :cond_31
    move-wide/from16 v33, v13

    :cond_32
    :goto_24
    move/from16 v13, v16

    goto :goto_26

    :goto_25
    const-wide/16 v13, 0x2

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v13

    if-eqz v13, :cond_33

    if-nez v32, :cond_32

    :cond_33
    const-wide/16 v13, 0x200

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v13

    if-eqz v13, :cond_34

    goto :goto_24

    :goto_26
    invoke-virtual {v6, v13}, LG/b0;->a(I)V

    :cond_34
    const-wide/16 v13, 0x400

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v13

    if-nez v13, :cond_35

    const-wide/16 v13, 0x800

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v13

    if-nez v13, :cond_35

    const-wide/16 v13, 0x2000

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v13

    if-eqz v13, :cond_36

    :cond_35
    const/16 v13, 0x1f

    invoke-virtual {v6, v13}, LG/b0;->a(I)V

    :cond_36
    const-wide/16 v13, 0x4000

    invoke-static {v9, v10, v13, v14}, LM0/u;->v(JJ)Z

    move-result v13

    if-nez v13, :cond_38

    move-object v13, v15

    const-wide/32 v14, 0x8000

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    if-nez v14, :cond_37

    const-wide/32 v14, 0x10000

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    if-nez v14, :cond_37

    const-wide/32 v14, 0x20000

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    if-eqz v14, :cond_39

    :cond_37
    :goto_27
    const/4 v14, 0x2

    goto :goto_28

    :cond_38
    move-object v13, v15

    goto :goto_27

    :goto_28
    invoke-virtual {v6, v14}, LG/b0;->a(I)V

    :cond_39
    const-wide/16 v14, 0x8

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    if-eqz v14, :cond_3a

    const/16 v14, 0xb

    invoke-virtual {v6, v14}, LG/b0;->a(I)V

    :cond_3a
    const-wide/16 v14, 0x40

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    if-eqz v14, :cond_3b

    const/16 v14, 0xc

    invoke-virtual {v6, v14}, LG/b0;->a(I)V

    :cond_3b
    const-wide/16 v14, 0x100

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    const/4 v15, 0x5

    move-object/from16 v35, v13

    iget-object v13, v6, LG/b0;->a:LE/b;

    move-object/from16 v58, v0

    if-eqz v14, :cond_3c

    const/4 v14, 0x4

    filled-new-array {v15, v14}, [I

    move-result-object v0

    invoke-virtual {v13, v0}, LE/b;->c([I)V

    :cond_3c
    move v0, v15

    const-wide/16 v14, 0x20

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    if-eqz v14, :cond_3d

    const/16 v14, 0x9

    const/16 v15, 0x8

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-virtual {v13, v14}, LE/b;->c([I)V

    :cond_3d
    const-wide/16 v14, 0x10

    invoke-static {v9, v10, v14, v15}, LM0/u;->v(JJ)Z

    move-result v14

    const/4 v15, 0x6

    move/from16 v36, v0

    const/4 v0, 0x7

    if-eqz v14, :cond_3e

    filled-new-array {v0, v15}, [I

    move-result-object v14

    invoke-virtual {v13, v14}, LE/b;->c([I)V

    :cond_3e
    move-object v14, v1

    const-wide/32 v0, 0x400000

    invoke-static {v9, v10, v0, v1}, LM0/u;->v(JJ)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0xd

    invoke-virtual {v6, v0}, LG/b0;->a(I)V

    :cond_3f
    const-wide/16 v0, 0x1

    invoke-static {v9, v10, v0, v1}, LM0/u;->v(JJ)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_40

    invoke-virtual {v6, v1}, LG/b0;->a(I)V

    :cond_40
    const/16 v0, 0x22

    const/16 v1, 0x1a

    const/4 v15, 0x1

    if-ne v4, v15, :cond_42

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {v13, v0}, LE/b;->c([I)V

    :cond_41
    :goto_29
    const/4 v0, 0x6

    goto :goto_2a

    :cond_42
    const/4 v15, 0x2

    if-ne v4, v15, :cond_41

    const/16 v4, 0x19

    const/16 v15, 0x21

    filled-new-array {v1, v0, v4, v15}, [I

    move-result-object v0

    invoke-virtual {v13, v0}, LE/b;->c([I)V

    goto :goto_29

    :goto_2a
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v13, v0}, LE/b;->c([I)V

    and-long v0, v18, v33

    cmp-long v0, v0, v30

    if-eqz v0, :cond_43

    const/16 v0, 0x14

    invoke-virtual {v6, v0}, LG/b0;->a(I)V

    :cond_43
    const-wide/16 v0, 0x1000

    invoke-static {v9, v10, v0, v1}, LM0/u;->v(JJ)Z

    move-result v0

    if-eqz v0, :cond_44

    const/16 v0, 0xa

    invoke-virtual {v6, v0}, LG/b0;->a(I)V

    :cond_44
    if-eqz v20, :cond_46

    const-wide/32 v0, 0x40000

    invoke-static {v9, v10, v0, v1}, LM0/u;->v(JJ)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v0, 0xf

    invoke-virtual {v6, v0}, LG/b0;->a(I)V

    :cond_45
    const-wide/32 v0, 0x200000

    invoke-static {v9, v10, v0, v1}, LM0/u;->v(JJ)Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0xe

    invoke-virtual {v6, v0}, LG/b0;->a(I)V

    :cond_46
    invoke-virtual {v6}, LG/b0;->c()LG/c0;

    move-result-object v0

    iget-object v1, v14, LM0/s0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v4, v2, LM0/s0;->g:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    if-ne v1, v4, :cond_47

    iget-object v1, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget-object v1, v1, LM0/b2;->m:LG/T;

    :goto_2b
    move-object/from16 v60, v1

    goto :goto_2c

    :cond_47
    if-nez v4, :cond_48

    sget-object v1, LG/T;->M:LG/T;

    goto :goto_2b

    :cond_48
    new-instance v1, LG/S;

    invoke-direct {v1}, LG/S;-><init>()V

    iput-object v4, v1, LG/S;->a:Ljava/lang/CharSequence;

    new-instance v4, LG/T;

    invoke-direct {v4, v1}, LG/T;-><init>(LG/S;)V

    move-object v1, v4

    goto :goto_2b

    :goto_2c
    iget v1, v2, LM0/s0;->a:I

    invoke-static {v1}, LM0/u;->p(I)I

    move-result v1

    iget v4, v2, LM0/s0;->b:I

    invoke-static {v4}, LM0/u;->r(I)Z

    move-result v4

    if-ne v8, v7, :cond_4a

    if-eqz v21, :cond_49

    goto :goto_2e

    :cond_49
    iget-object v6, v3, LM0/r0;->d:Ljava/lang/Object;

    check-cast v6, LM0/j2;

    iget-object v8, v3, LM0/r0;->b:Ljava/lang/Object;

    check-cast v8, Lu1/P;

    move/from16 v18, v1

    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_2d
    move-object v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_39

    :cond_4a
    :goto_2e
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sget-object v8, LM0/i2;->d:Lu1/C0;

    const/4 v9, 0x0

    :goto_2f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4b

    new-instance v10, LM0/i2;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v10, v13}, LM0/i2;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_4b
    sget-object v8, LM0/i2;->e:Lu1/C0;

    const/4 v9, 0x0

    :goto_30
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4c

    new-instance v10, LM0/i2;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v10, v13}, LM0/i2;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_4c
    if-nez v20, :cond_4e

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LM0/i2;

    iget v10, v9, LM0/i2;->a:I

    const v13, 0x9c4a

    if-ne v10, v13, :cond_4d

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4e
    if-eqz v7, :cond_50

    iget-object v8, v7, LN0/U;->m:Ljava/util/AbstractCollection;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LN0/T;

    iget-object v10, v9, LN0/T;->e:Ljava/lang/String;

    iget-object v9, v9, LN0/T;->h:Landroid/os/Bundle;

    new-instance v13, LM0/i2;

    if-nez v9, :cond_4f

    sget-object v9, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_4f
    invoke-direct {v13, v10, v9}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_50
    new-instance v8, LM0/j2;

    invoke-direct {v8, v6}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    if-nez v7, :cond_51

    sget-object v6, Lu1/P;->f:Lu1/N;

    sget-object v6, Lu1/C0;->i:Lu1/C0;

    move/from16 v18, v1

    move/from16 v19, v4

    move-object v1, v6

    const/4 v4, 0x0

    goto/16 :goto_38

    :cond_51
    iget-object v6, v7, LN0/U;->m:Ljava/util/AbstractCollection;

    const/4 v14, 0x4

    invoke-static {v14, v12}, Lu1/s;->e(ILjava/lang/String;)V

    new-array v9, v14, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x0

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LN0/T;

    iget-object v13, v12, LN0/T;->e:Ljava/lang/String;

    iget-object v14, v12, LN0/T;->h:Landroid/os/Bundle;

    if-eqz v14, :cond_52

    const-string v15, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    move/from16 v18, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v15, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    goto :goto_33

    :cond_52
    move/from16 v18, v1

    const/4 v15, 0x0

    :goto_33
    new-instance v1, LG2/a;

    move/from16 v19, v4

    iget v4, v12, LN0/T;->g:I

    invoke-direct {v1, v15, v4}, LG2/a;-><init>(II)V

    new-instance v4, LM0/i2;

    if-nez v14, :cond_53

    sget-object v15, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_34

    :cond_53
    move-object v15, v14

    :goto_34
    invoke-direct {v4, v13, v15}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v13, v1, LG2/a;->b:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_54

    const/4 v13, 0x1

    goto :goto_35

    :cond_54
    const/4 v13, 0x0

    :goto_35
    const-string v15, "playerCommands is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v15, v13}, LF1/i;->f(Ljava/lang/String;Z)V

    iput-object v4, v1, LG2/a;->e:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v1, LG2/a;->j:Ljava/lang/Object;

    iget-object v12, v12, LN0/T;->f:Ljava/lang/CharSequence;

    iput-object v12, v1, LG2/a;->g:Ljava/lang/CharSequence;

    const/4 v13, 0x1

    iput-boolean v13, v1, LG2/a;->d:Z

    if-eqz v14, :cond_55

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v12, v1, LG2/a;->h:Ljava/lang/Object;

    :cond_55
    if-eqz v14, :cond_56

    const-string v12, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT"

    invoke-virtual {v14, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_36

    :cond_56
    move-object v12, v4

    :goto_36
    if-eqz v12, :cond_58

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    const-string v14, "content"

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_57

    const-string v14, "android.resource"

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58

    :cond_57
    invoke-virtual {v1, v12}, LG2/a;->b(Landroid/net/Uri;)V

    :cond_58
    invoke-virtual {v1}, LG2/a;->a()LM0/c;

    move-result-object v1

    array-length v12, v9

    add-int/lit8 v13, v10, 0x1

    invoke-static {v12, v13}, Lu1/J;->b(II)I

    move-result v12

    array-length v14, v9

    if-gt v12, v14, :cond_59

    goto :goto_37

    :cond_59
    invoke-static {v9, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    :goto_37
    aput-object v1, v9, v10

    move v10, v13

    move/from16 v1, v18

    move/from16 v4, v19

    goto/16 :goto_32

    :cond_5a
    move/from16 v18, v1

    move/from16 v19, v4

    const/4 v4, 0x0

    invoke-static {v10, v9}, Lu1/P;->i(I[Ljava/lang/Object;)Lu1/C0;

    move-result-object v1

    move-object/from16 v6, v39

    invoke-static {v1, v0, v6}, LM0/c;->k(Ljava/util/List;LG/c0;Landroid/os/Bundle;)Lu1/C0;

    move-result-object v1

    :goto_38
    move-object v6, v8

    move-object v8, v1

    goto/16 :goto_2d

    :goto_39
    iget-object v9, v0, LM0/t0;->a:Landroid/content/ContextWrapper;

    invoke-static {v7, v9}, LM0/u;->l(LN0/U;Landroid/content/ContextWrapper;)LG/Z;

    move-result-object v10

    if-nez v7, :cond_5b

    move-object v14, v8

    :goto_3a
    move-wide/from16 v12, v24

    move-object/from16 v15, v35

    goto :goto_3e

    :cond_5b
    iget v12, v7, LN0/U;->e:I

    iget v13, v7, LN0/U;->j:I

    iget-object v14, v7, LN0/U;->k:Ljava/lang/CharSequence;

    iget-object v15, v7, LN0/U;->o:Landroid/os/Bundle;

    const/4 v4, 0x7

    if-eq v12, v4, :cond_5f

    if-nez v13, :cond_5c

    goto :goto_3d

    :cond_5c
    invoke-static {v13}, LM0/u;->q(I)I

    move-result v4

    new-instance v12, LM0/k2;

    if-eqz v14, :cond_5d

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3b

    :cond_5d
    invoke-static {v4, v9}, LM0/u;->u(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :goto_3b
    if-eqz v15, :cond_5e

    goto :goto_3c

    :cond_5e
    sget-object v15, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_3c
    invoke-direct {v12, v9, v4, v15}, LM0/k2;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    move-object v14, v8

    move-object v4, v12

    goto :goto_3a

    :cond_5f
    :goto_3d
    move-object v14, v8

    move-wide/from16 v12, v24

    move-object/from16 v15, v35

    const/4 v4, 0x0

    :goto_3e
    invoke-static {v7, v15, v12, v13}, LM0/u;->b(LN0/U;LN0/D;J)J

    move-result-wide v8

    invoke-static {v7, v15, v12, v13}, LM0/u;->a(LN0/U;LN0/D;J)J

    move-result-wide v47

    move-object/from16 v20, v1

    invoke-static {v7, v15, v12, v13}, LM0/u;->a(LN0/U;LN0/D;J)J

    move-result-wide v0

    move-wide/from16 v24, v8

    invoke-static {v15}, LM0/u;->c(LN0/D;)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, LM0/Y1;->f(JJ)I

    move-result v49

    invoke-static {v7, v15, v12, v13}, LM0/u;->a(LN0/U;LN0/D;J)J

    move-result-wide v0

    invoke-static {v7, v15, v12, v13}, LM0/u;->b(LN0/U;LN0/D;J)J

    move-result-wide v8

    sub-long v50, v0, v8

    if-nez v15, :cond_61

    :cond_60
    const/4 v0, 0x0

    goto :goto_3f

    :cond_61
    const-string v0, "android.media.metadata.ADVERTISEMENT"

    invoke-virtual {v15, v0}, LN0/D;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v30

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    :goto_3f
    if-nez v7, :cond_62

    sget-object v1, LG/a0;->d:LG/a0;

    goto :goto_40

    :cond_62
    new-instance v1, LG/a0;

    iget v8, v7, LN0/U;->h:F

    invoke-direct {v1, v8}, LG/a0;-><init>(F)V

    :goto_40
    if-nez v26, :cond_63

    sget-object v8, LG/e;->i:LG/e;

    move-object/from16 v63, v8

    move-object/from16 v8, v26

    goto :goto_41

    :cond_63
    move-object/from16 v8, v26

    iget-object v9, v8, LN0/A;->e:Ljava/lang/Object;

    check-cast v9, LG/e;

    move-object/from16 v63, v9

    :goto_41
    if-nez v7, :cond_64

    :goto_42
    const/16 v69, 0x0

    goto :goto_43

    :cond_64
    iget v9, v7, LN0/U;->e:I

    packed-switch v9, :pswitch_data_1

    :pswitch_2
    goto :goto_42

    :pswitch_3
    const/16 v69, 0x1

    :goto_43
    if-nez v7, :cond_66

    :pswitch_4
    move-object/from16 v21, v1

    :cond_65
    const/4 v1, 0x1

    goto :goto_46

    :cond_66
    :try_start_0
    iget v9, v7, LN0/U;->e:I

    invoke-static {v15}, LM0/u;->c(LN0/D;)J

    move-result-wide v33

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v21, v33, v39

    if-nez v21, :cond_68

    :cond_67
    const/4 v12, 0x0

    goto :goto_44

    :cond_68
    invoke-static {v7, v15, v12, v13}, LM0/u;->b(LN0/U;LN0/D;J)J

    move-result-wide v12

    cmp-long v12, v12, v33

    if-ltz v12, :cond_67

    const/4 v12, 0x1

    :goto_44
    packed-switch v9, :pswitch_data_2

    new-instance v12, LM0/t;

    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_0
    .catch LM0/t; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v1

    :try_start_1
    const-string v1, "Invalid state of PlaybackStateCompat: "

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch LM0/t; {:try_start_1 .. :try_end_1} :catch_1

    :pswitch_5
    move-object/from16 v21, v1

    const/4 v1, 0x2

    goto :goto_46

    :pswitch_6
    move-object/from16 v21, v1

    :cond_69
    const/4 v1, 0x3

    goto :goto_46

    :pswitch_7
    move-object/from16 v21, v1

    if-eqz v12, :cond_69

    :goto_45
    const/4 v1, 0x4

    goto :goto_46

    :pswitch_8
    move-object/from16 v21, v1

    if-eqz v12, :cond_65

    goto :goto_45

    :goto_46
    move/from16 v72, v1

    goto :goto_47

    :catch_0
    move-object/from16 v21, v1

    :catch_1
    iget v1, v7, LN0/U;->e:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Received invalid playback state "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from package "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Keeping the previous state."

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, LJ/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget v1, v1, LM0/b2;->A:I

    goto :goto_46

    :goto_47
    if-nez v7, :cond_6b

    :cond_6a
    const/16 v73, 0x0

    goto :goto_48

    :cond_6b
    iget v1, v7, LN0/U;->e:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_6a

    const/16 v73, 0x1

    :goto_48
    if-nez v8, :cond_6c

    sget-object v1, LG/p;->e:LG/p;

    :goto_49
    move-object/from16 v66, v1

    goto :goto_4d

    :cond_6c
    new-instance v1, Lh/i;

    iget v9, v8, LN0/A;->a:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_6d

    const/4 v9, 0x1

    goto :goto_4a

    :cond_6d
    const/4 v9, 0x0

    :goto_4a
    invoke-direct {v1, v9}, Lh/i;-><init>(I)V

    iget v11, v8, LN0/A;->c:I

    iput v11, v1, Lh/i;->d:I

    iget-object v11, v8, LN0/A;->f:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    if-nez v9, :cond_6f

    if-nez v11, :cond_6e

    goto :goto_4b

    :cond_6e
    const/4 v9, 0x0

    goto :goto_4c

    :cond_6f
    :goto_4b
    const/4 v9, 0x1

    :goto_4c
    invoke-static {v9}, LF1/i;->g(Z)V

    iput-object v11, v1, Lh/i;->e:Ljava/io/Serializable;

    invoke-virtual {v1}, Lh/i;->a()LG/p;

    move-result-object v1

    goto :goto_49

    :goto_4d
    if-nez v8, :cond_70

    const/16 v67, 0x0

    goto :goto_4e

    :cond_70
    iget v1, v8, LN0/A;->d:I

    move/from16 v67, v1

    :goto_4e
    if-nez v8, :cond_72

    :cond_71
    const/16 v68, 0x0

    goto :goto_4f

    :cond_72
    iget v1, v8, LN0/A;->d:I

    if-nez v1, :cond_71

    const/16 v68, 0x1

    :goto_4f
    iget-object v1, v3, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget-wide v8, v1, LM0/b2;->C:J

    iget-wide v11, v1, LM0/b2;->D:J

    move-object v13, v4

    iget-wide v3, v1, LM0/b2;->E:J

    iget-object v1, v2, LM0/s0;->h:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object/from16 v23, v1

    invoke-virtual/range {v58 .. v58}, LM0/f2;->o()I

    move-result v1

    if-lt v5, v1, :cond_73

    move-object/from16 v1, v58

    const/4 v2, 0x0

    :goto_50
    move-wide/from16 v80, v3

    move-wide/from16 v3, v24

    goto :goto_51

    :cond_73
    move-object/from16 v1, v58

    invoke-virtual {v1, v5}, LM0/f2;->s(I)LM0/e2;

    move-result-object v2

    iget-object v2, v2, LM0/e2;->a:LG/P;

    goto :goto_50

    :goto_51
    invoke-static {v5, v2, v3, v4, v0}, LM0/t0;->Z0(ILG/P;JZ)LG/f0;

    move-result-object v41

    new-instance v40, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v43

    const-wide v52, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v54, v45

    move-wide/from16 v56, v47

    move/from16 v42, v0

    invoke-direct/range {v40 .. v57}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object/from16 v50, v40

    new-instance v47, LM0/b2;

    sget-object v51, LM0/l2;->k:LG/f0;

    sget-object v57, LG/C0;->d:LG/C0;

    sget-object v65, LI/c;->d:LI/c;

    sget-object v82, LG/y0;->b:LG/y0;

    sget-object v83, LG/w0;->J:LG/w0;

    const/16 v49, 0x0

    const/16 v53, 0x0

    const/16 v59, 0x0

    const/high16 v61, 0x3f800000    # 1.0f

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v64, 0x0

    const/16 v70, 0x1

    const/16 v71, 0x0

    const/16 v74, 0x0

    move-object/from16 v52, v51

    move-object/from16 v58, v1

    move-wide/from16 v76, v8

    move-object/from16 v48, v10

    move-wide/from16 v78, v11

    move/from16 v55, v18

    move/from16 v56, v19

    move-object/from16 v54, v21

    invoke-direct/range {v47 .. v83}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move/from16 v0, v55

    new-instance v4, LM0/r0;

    move-object/from16 v49, v6

    move-object/from16 v53, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v20

    move-object/from16 v52, v23

    move-object/from16 v48, v47

    move-object/from16 v47, v4

    invoke-direct/range {v47 .. v53}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    move-object/from16 v2, p0

    move-object/from16 v47, v48

    iget-object v3, v2, LM0/t0;->m:LM0/s0;

    iget-object v5, v2, LM0/t0;->p:LM0/r0;

    move-object/from16 v8, v22

    iget-wide v9, v8, LM0/z;->f:J

    const/16 v38, 0x3

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v5, LM0/r0;->c:Ljava/lang/Object;

    check-cast v12, LM0/b2;

    iget-object v12, v12, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v12

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v13

    if-eqz v12, :cond_74

    if-eqz v13, :cond_74

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_52
    const/16 v16, 0x1

    goto/16 :goto_58

    :cond_74
    if-eqz v12, :cond_75

    if-nez v13, :cond_75

    goto :goto_52

    :cond_75
    iget-object v5, v5, LM0/r0;->c:Ljava/lang/Object;

    check-cast v5, LM0/b2;

    invoke-virtual {v5}, LM0/b2;->s()LG/P;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v1, LM0/f2;->f:LM0/e2;

    if-eqz v12, :cond_76

    iget-object v12, v12, LM0/e2;->a:LG/P;

    invoke-virtual {v5, v12}, LG/P;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_76

    goto :goto_54

    :cond_76
    const/4 v12, 0x0

    :goto_53
    iget-object v13, v1, LM0/f2;->e:Lu1/P;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v14

    if-ge v12, v14, :cond_78

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LM0/e2;

    iget-object v13, v13, LM0/e2;->a:LG/P;

    invoke-virtual {v5, v13}, LG/P;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_77

    :goto_54
    const/4 v1, 0x1

    goto :goto_55

    :cond_77
    add-int/lit8 v12, v12, 0x1

    goto :goto_53

    :cond_78
    const/4 v1, 0x0

    :goto_55
    if-nez v1, :cond_79

    const/16 v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_52

    :cond_79
    invoke-virtual/range {v47 .. v47}, LM0/b2;->s()LG/P;

    move-result-object v1

    invoke-virtual {v5, v1}, LG/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, v3, LM0/s0;->d:Ljava/lang/Object;

    check-cast v1, LN0/U;

    iget-object v3, v3, LM0/s0;->e:Ljava/lang/Object;

    check-cast v3, LN0/D;

    invoke-static {v1, v3, v9, v10}, LM0/u;->b(LN0/U;LN0/D;J)J

    move-result-wide v5

    invoke-static {v7, v15, v9, v10}, LM0/u;->b(LN0/U;LN0/D;J)J

    move-result-wide v9

    cmp-long v1, v9, v30

    if-nez v1, :cond_7a

    const/4 v13, 0x1

    if-ne v0, v13, :cond_7a

    move-object/from16 v28, v11

    goto :goto_57

    :cond_7a
    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v5, 0x64

    cmp-long v0, v0, v5

    if-lez v0, :cond_7b

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v0

    :goto_56
    const/16 v28, 0x0

    goto :goto_57

    :cond_7b
    const/4 v11, 0x0

    goto :goto_56

    :goto_57
    move-object/from16 v6, v28

    goto/16 :goto_52

    :cond_7c
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    :goto_58
    invoke-static {v11, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    const/4 v3, 0x1

    move/from16 v1, p1

    move-object v0, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, LM0/t0;->e1(ZLM0/s0;ZLM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v1, v0, LM0/t0;->o:Z

    if-eqz v1, :cond_7e

    const/4 v1, 0x0

    iput-boolean v1, v0, LM0/t0;->o:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v8, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_7d

    goto :goto_59

    :cond_7d
    move/from16 v16, v1

    :goto_59
    invoke-static/range {v16 .. v16}, LF1/i;->o(Z)V

    iget-object v1, v8, LM0/z;->d:LM0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7e
    :goto_5a
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0x17
        0x11
        0x12
        0x10
        0x15
        0x20
    .end array-data
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b0(I)V
    .locals 8

    invoke-virtual {p0}, LM0/t0;->f()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v1, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    invoke-virtual {v0, p1}, LM0/b2;->i(I)LM0/b2;

    move-result-object v2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, LM0/j2;

    iget-object v4, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    iget-object v5, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    invoke-static {p1}, LM0/u;->m(I)I

    move-result p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {v0, p1, v1}, LN0/i;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b1()V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, LM0/t0;->s:Z

    new-instance v0, LG/p0;

    invoke-direct {v0}, LG/p0;-><init>()V

    iget-object v1, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget-object v2, v1, LM0/b2;->j:LG/q0;

    check-cast v2, LM0/f2;

    iget-object v1, v1, LM0/b2;->c:LM0/l2;

    iget-object v1, v1, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, LM0/f2;->m(ILG/p0;J)LG/p0;

    iget-object v5, v0, LG/p0;->c:LG/P;

    invoke-virtual {v2, v1}, LM0/f2;->r(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-object v5, p0, LM0/t0;->p:LM0/r0;

    iget-object v5, v5, LM0/r0;->c:Ljava/lang/Object;

    check-cast v5, LM0/b2;

    iget-boolean v5, v5, LM0/b2;->v:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    goto/16 :goto_0

    :cond_1
    iget-object v6, v5, LG/P;->f:LG/L;

    iget-object v5, v5, LG/P;->a:Ljava/lang/String;

    iget-object v7, v6, LG/L;->a:Landroid/net/Uri;

    if-eqz v7, :cond_5

    iget-object v5, p0, LM0/t0;->p:LM0/r0;

    iget-object v5, v5, LM0/r0;->c:Ljava/lang/Object;

    check-cast v5, LM0/b2;

    iget-boolean v5, v5, LM0/b2;->v:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v7, v6, LG/L;->a:Landroid/net/Uri;

    iget-object v6, v6, LG/L;->c:Landroid/os/Bundle;

    if-nez v6, :cond_2

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2
    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5, v7, v6}, Landroid/media/session/MediaController$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v7, v6, LG/L;->a:Landroid/net/Uri;

    iget-object v6, v6, LG/L;->c:Landroid/os/Bundle;

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_4
    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5, v7, v6}, Landroid/media/session/MediaController$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    iget-object v7, v6, LG/L;->b:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v5, p0, LM0/t0;->p:LM0/r0;

    iget-object v5, v5, LM0/r0;->c:Ljava/lang/Object;

    check-cast v5, LM0/b2;

    iget-boolean v5, v5, LM0/b2;->v:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v7, v6, LG/L;->b:Ljava/lang/String;

    iget-object v6, v6, LG/L;->c:Landroid/os/Bundle;

    if-nez v6, :cond_6

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_6
    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5, v7, v6}, Landroid/media/session/MediaController$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v7, v6, LG/L;->b:Ljava/lang/String;

    iget-object v6, v6, LG/L;->c:Landroid/os/Bundle;

    if-nez v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_8
    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5, v7, v6}, Landroid/media/session/MediaController$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    iget-object v7, p0, LM0/t0;->p:LM0/r0;

    iget-object v7, v7, LM0/r0;->c:Ljava/lang/Object;

    check-cast v7, LM0/b2;

    iget-boolean v7, v7, LM0/b2;->v:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v7}, LN0/O;->U()LN0/i;

    move-result-object v7

    iget-object v6, v6, LG/L;->c:Landroid/os/Bundle;

    if-nez v6, :cond_a

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_a
    iget-object v7, v7, LN0/i;->a:Ljava/lang/Object;

    check-cast v7, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v7, v5, v6}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_b
    iget-object v7, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v7}, LN0/O;->U()LN0/i;

    move-result-object v7

    iget-object v6, v6, LG/L;->c:Landroid/os/Bundle;

    if-nez v6, :cond_c

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_c
    iget-object v7, v7, LN0/i;->a:Ljava/lang/Object;

    check-cast v7, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v7, v5, v6}, Landroid/media/session/MediaController$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    iget-object v5, p0, LM0/t0;->p:LM0/r0;

    iget-object v5, v5, LM0/r0;->c:Ljava/lang/Object;

    check-cast v5, LM0/b2;

    iget-object v5, v5, LM0/b2;->c:LM0/l2;

    iget-object v5, v5, LM0/l2;->a:LG/f0;

    iget-wide v5, v5, LG/f0;->f:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_d

    iget-object v5, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v5}, LN0/O;->U()LN0/i;

    move-result-object v5

    iget-object v6, p0, LM0/t0;->p:LM0/r0;

    iget-object v6, v6, LM0/r0;->c:Ljava/lang/Object;

    check-cast v6, LM0/b2;

    iget-object v6, v6, LM0/b2;->c:LM0/l2;

    iget-object v6, v6, LM0/l2;->a:LG/f0;

    iget-wide v6, v6, LG/f0;->f:J

    iget-object v5, v5, LN0/i;->a:Ljava/lang/Object;

    check-cast v5, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v5, v6, v7}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_d
    iget-object v5, p0, LM0/t0;->p:LM0/r0;

    iget-object v5, v5, LM0/r0;->e:Ljava/lang/Object;

    check-cast v5, LG/c0;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, LG/c0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-virtual {v2}, LM0/f2;->o()I

    move-result v10

    if-ge v7, v10, :cond_10

    if-eq v7, v1, :cond_f

    invoke-virtual {v2, v7}, LM0/f2;->r(I)J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v2, v7, v0, v3, v4}, LM0/f2;->m(ILG/p0;J)LG/p0;

    iget-object v10, v0, LG/p0;->c:LG/P;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_10
    invoke-virtual {p0, v6, v5}, LM0/t0;->V0(ILjava/util/List;)V

    :cond_11
    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget v0, v0, LM0/b2;->A:I

    return v0
.end method

.method public final c0(II)V
    .locals 8

    invoke-virtual {p0}, LM0/t0;->Y()LG/p;

    move-result-object v0

    iget v1, v0, LG/p;->b:I

    iget v0, v0, LG/p;->c:I

    if-gt v1, p1, :cond_1

    if-eqz v0, :cond_0

    if-gt p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LM0/t0;->r0()Z

    move-result v0

    new-instance v1, LM0/r0;

    iget-object v2, p0, LM0/t0;->p:LM0/r0;

    iget-object v2, v2, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LM0/b2;

    invoke-virtual {v2, p1, v0}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, LM0/j2;

    iget-object v4, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    iget-object v5, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    return-void
.end method

.method public final c1()V
    .locals 13

    iget-boolean v0, p0, LM0/t0;->k:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, LM0/t0;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LM0/t0;->l:Z

    new-instance v2, LM0/s0;

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->Q()LN0/A;

    move-result-object v3

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->R()LN0/U;

    move-result-object v0

    invoke-static {v0}, LM0/t0;->Y0(LN0/U;)LN0/U;

    move-result-object v4

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    sget-object v6, LN0/D;->h:Lh/e;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v7, LN0/D;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LN0/D;

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    iput-object v0, v7, LN0/D;->f:Landroid/media/MediaMetadata;

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, LN0/M;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    :cond_2
    invoke-static {v5}, LM0/t0;->X0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->e:LN0/N;

    invoke-virtual {v0}, LN0/N;->a()LN0/d;

    move-result-object v0

    const/4 v8, -0x1

    const-string v9, "MediaControllerCompat"

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, LN0/d;->f()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v8

    move v8, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v10, "Dead object in getRepeatMode."

    invoke-static {v9, v10, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move v10, v8

    :goto_2
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->e:LN0/N;

    invoke-virtual {v0}, LN0/N;->a()LN0/d;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, LN0/d;->z()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move v9, v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    const-string v11, "Dead object in getShuffleMode."

    invoke-static {v9, v11, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v9, v10

    :goto_4
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    move-object v12, v7

    move-object v7, v5

    move-object v5, v12

    invoke-direct/range {v2 .. v10}, LM0/s0;-><init>(LN0/A;LN0/U;LN0/D;Ljava/util/List;Ljava/lang/CharSequence;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v1, v2}, LM0/t0;->a1(ZLM0/s0;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public final d(LG/a0;)V
    .locals 8

    invoke-virtual {p0}, LM0/t0;->g()LG/a0;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    invoke-virtual {v0, p1}, LM0/b2;->e(LG/a0;)LM0/b2;

    move-result-object v2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, LM0/j2;

    iget-object v4, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    iget-object v5, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    iget p1, p1, LG/a0;->a:F

    invoke-virtual {v0, p1}, LN0/i;->f(F)V

    return-void
.end method

.method public final d0(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LM0/t0;->W(IZ)V

    return-void
.end method

.method public final d1(IJ)V
    .locals 37

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-static {v6}, LF1/i;->g(Z)V

    invoke-virtual {v0}, LM0/t0;->V()I

    move-result v6

    iget-object v7, v0, LM0/t0;->p:LM0/r0;

    iget-object v7, v7, LM0/r0;->c:Ljava/lang/Object;

    check-cast v7, LM0/b2;

    iget-object v7, v7, LM0/b2;->j:LG/q0;

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, LG/q0;->o()I

    move-result v8

    if-ge v1, v8, :cond_2

    :cond_1
    invoke-virtual {v0}, LM0/t0;->m()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x2

    if-eq v1, v6, :cond_5

    iget-object v10, v0, LM0/t0;->p:LM0/r0;

    iget-object v10, v10, LM0/r0;->c:Ljava/lang/Object;

    check-cast v10, LM0/b2;

    iget-object v10, v10, LM0/b2;->j:LG/q0;

    check-cast v10, LM0/f2;

    invoke-virtual {v10, v1}, LM0/f2;->r(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_4

    const-wide/16 v12, -0x2

    cmp-long v12, v10, v12

    if-eqz v12, :cond_4

    iget-object v6, v0, LM0/t0;->i:LN0/O;

    invoke-virtual {v6}, LN0/O;->U()LN0/i;

    move-result-object v6

    iget-object v6, v6, LN0/i;->a:Ljava/lang/Object;

    check-cast v6, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v6, v10, v11}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v10, "MCImplLegacy"

    const-string v11, "Cannot seek to new media item due to the missing queue Id at media item, mediaItemIndex="

    invoke-static {v11, v10, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    move v1, v6

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, LM0/t0;->O0()J

    move-result-wide v10

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v2, v12

    if-nez v14, :cond_6

    move-wide v2, v10

    const/4 v14, 0x0

    :goto_2
    move-wide v15, v12

    goto :goto_3

    :cond_6
    iget-object v14, v0, LM0/t0;->i:LN0/O;

    invoke-virtual {v14}, LN0/O;->U()LN0/i;

    move-result-object v14

    iget-object v14, v14, LN0/i;->a:Ljava/lang/Object;

    check-cast v14, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v14, v2, v3}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_2

    :goto_3
    const-wide/16 v12, 0x0

    if-nez v6, :cond_9

    invoke-virtual {v0}, LM0/t0;->y()J

    move-result-wide v8

    invoke-virtual {v0}, LM0/t0;->getDuration()J

    move-result-wide v17

    cmp-long v10, v2, v10

    if-gez v10, :cond_7

    move-wide v8, v2

    goto :goto_4

    :cond_7
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :goto_4
    cmp-long v10, v17, v15

    if-nez v10, :cond_8

    move v10, v5

    goto :goto_5

    :cond_8
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v8

    div-long v10, v10, v17

    long-to-int v10, v10

    :goto_5
    sub-long v15, v8, v2

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-wide/from16 v29, v15

    move-wide/from16 v24, v17

    goto :goto_6

    :cond_9
    move/from16 v28, v5

    move-wide/from16 v26, v12

    move-wide/from16 v29, v26

    move-wide/from16 v24, v15

    :goto_6
    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v8

    if-nez v8, :cond_a

    new-instance v8, LG/p0;

    invoke-direct {v8}, LG/p0;-><init>()V

    invoke-virtual {v7, v1, v8, v12, v13}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v7

    iget-object v7, v7, LG/p0;->c:LG/P;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    invoke-static {v1, v7, v2, v3, v5}, LM0/t0;->Z0(ILG/P;JZ)LG/f0;

    move-result-object v20

    iget-object v1, v0, LM0/t0;->p:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    new-instance v19, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x0

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    invoke-direct/range {v19 .. v36}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, LM0/b2;->j(LM0/l2;)LM0/b2;

    move-result-object v1

    iget v2, v1, LM0/b2;->A:I

    if-eq v2, v4, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v1

    :cond_b
    move-object v8, v1

    new-instance v7, LM0/r0;

    iget-object v1, v0, LM0/t0;->p:LM0/r0;

    iget-object v2, v1, LM0/r0;->d:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, LM0/j2;

    iget-object v2, v1, LM0/r0;->e:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, LG/c0;

    iget-object v2, v1, LM0/r0;->b:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Lu1/P;

    iget-object v1, v1, LM0/r0;->f:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    invoke-virtual {v0, v7, v14, v6}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget v1, v0, LM0/b2;->A:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, LM0/r0;

    iget-object v1, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v4

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v0, LM0/r0;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LM0/j2;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LG/c0;

    iget-object v1, v0, LM0/r0;->b:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    invoke-virtual {p0, v3, v2, v2}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    invoke-static {v0}, LM0/t0;->W0(LM0/r0;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LM0/t0;->b1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final e0(I)V
    .locals 10

    invoke-virtual {p0}, LM0/t0;->k()I

    move-result v0

    invoke-virtual {p0}, LM0/t0;->Y()LG/p;

    move-result-object v1

    iget v1, v1, LG/p;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    if-gt v3, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, LM0/t0;->r0()Z

    move-result v1

    new-instance v3, LM0/r0;

    iget-object v4, p0, LM0/t0;->p:LM0/r0;

    iget-object v4, v4, LM0/r0;->c:Ljava/lang/Object;

    check-cast v4, LM0/b2;

    add-int/2addr v0, v2

    invoke-virtual {v4, v0, v1}, LM0/b2;->c(IZ)LM0/b2;

    move-result-object v4

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v0, LM0/r0;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LM0/j2;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LG/c0;

    iget-object v1, v0, LM0/r0;->b:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    iget-object v0, v0, LN0/O;->f:Ljava/lang/Object;

    check-cast v0, LN0/y;

    iget-object v0, v0, LN0/y;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0, v2, p1}, Landroid/media/session/MediaController;->adjustVolume(II)V

    return-void
.end method

.method public final e1(ZLM0/s0;ZLM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    iget-object v5, v2, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v6, v0, LM0/t0;->m:LM0/s0;

    iget-object v7, v0, LM0/t0;->p:LM0/r0;

    const/4 v8, 0x1

    if-eqz p3, :cond_0

    iput-object v1, v0, LM0/t0;->m:LM0/s0;

    iput-object v1, v0, LM0/t0;->n:LM0/s0;

    invoke-static {v2}, LM0/t0;->W0(LM0/r0;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-boolean v8, v0, LM0/t0;->s:Z

    :cond_0
    iput-object v2, v0, LM0/t0;->p:LM0/r0;

    iget-object v9, v0, LM0/t0;->b:LM0/z;

    if-eqz p1, :cond_2

    invoke-virtual {v9}, LM0/z;->a()V

    iget-object v1, v7, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Lu1/P;

    invoke-virtual {v1, v5}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v9, LM0/z;->e:Landroid/os/Handler;

    new-instance v3, LM0/o0;

    invoke-direct {v3, v0, v2}, LM0/o0;-><init>(LM0/t0;LM0/r0;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v10, v7, LM0/r0;->c:Ljava/lang/Object;

    check-cast v10, LM0/b2;

    iget-object v11, v10, LM0/b2;->j:LG/q0;

    iget-object v12, v2, LM0/r0;->c:Ljava/lang/Object;

    check-cast v12, LM0/b2;

    iget-object v13, v2, LM0/r0;->g:Ljava/lang/Object;

    check-cast v13, LM0/k2;

    iget-object v14, v12, LM0/b2;->j:LG/q0;

    invoke-virtual {v11, v14}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v14, 0x4

    const/4 v15, 0x0

    iget-object v8, v0, LM0/t0;->d:LJ/t;

    if-nez v11, :cond_3

    new-instance v11, LM0/m0;

    invoke-direct {v11, v2, v14}, LM0/m0;-><init>(LM0/r0;I)V

    invoke-virtual {v8, v15, v11}, LJ/t;->c(ILJ/q;)V

    :cond_3
    iget-object v11, v6, LM0/s0;->g:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget-object v14, v1, LM0/s0;->g:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    iget-object v15, v1, LM0/s0;->d:Ljava/lang/Object;

    check-cast v15, LN0/U;

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v14, 0x5

    if-nez v11, :cond_4

    new-instance v11, LM0/m0;

    invoke-direct {v11, v2, v14}, LM0/m0;-><init>(LM0/r0;I)V

    const/16 v14, 0xf

    invoke-virtual {v8, v14, v11}, LJ/t;->c(ILJ/q;)V

    :cond_4
    const/16 v11, 0xb

    if-eqz v3, :cond_5

    new-instance v14, LM0/n0;

    move-object/from16 v16, v13

    const/4 v13, 0x0

    invoke-direct {v14, v13, v7, v2, v3}, LM0/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11, v14}, LJ/t;->c(ILJ/q;)V

    goto :goto_0

    :cond_5
    move-object/from16 v16, v13

    :goto_0
    if-eqz v4, :cond_6

    new-instance v3, LM0/K;

    const/4 v13, 0x5

    invoke-direct {v3, v2, v4, v13}, LM0/K;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v4, 0x1

    invoke-virtual {v8, v4, v3}, LJ/t;->c(ILJ/q;)V

    :cond_6
    iget-object v3, v6, LM0/s0;->d:Ljava/lang/Object;

    check-cast v3, LN0/U;

    const/4 v4, 0x7

    if-eqz v3, :cond_7

    iget v13, v3, LN0/U;->e:I

    if-ne v13, v4, :cond_7

    const/4 v13, 0x1

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    if-eqz v15, :cond_8

    iget v14, v15, LN0/U;->e:I

    if-ne v14, v4, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    const/4 v4, 0x2

    const/16 v11, 0xa

    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    sget-object v13, LJ/W;->a:Ljava/lang/String;

    iget v13, v3, LN0/U;->j:I

    iget v14, v15, LN0/U;->j:I

    if-ne v13, v14, :cond_a

    iget-object v3, v3, LN0/U;->k:Ljava/lang/CharSequence;

    iget-object v13, v15, LN0/U;->k:Ljava/lang/CharSequence;

    invoke-static {v3, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    if-ne v13, v14, :cond_a

    goto :goto_3

    :cond_a
    iget-object v3, v0, LM0/t0;->a:Landroid/content/ContextWrapper;

    invoke-static {v15, v3}, LM0/u;->l(LN0/U;Landroid/content/ContextWrapper;)LG/Z;

    move-result-object v3

    new-instance v13, LM0/T;

    invoke-direct {v13, v4, v3}, LM0/T;-><init>(ILG/Z;)V

    invoke-virtual {v8, v11, v13}, LJ/t;->c(ILJ/q;)V

    if-eqz v3, :cond_b

    new-instance v13, LM0/T;

    const/4 v14, 0x3

    invoke-direct {v13, v14, v3}, LM0/T;-><init>(ILG/Z;)V

    invoke-virtual {v8, v11, v13}, LJ/t;->c(ILJ/q;)V

    :cond_b
    :goto_3
    iget-object v3, v6, LM0/s0;->e:Ljava/lang/Object;

    check-cast v3, LN0/D;

    iget-object v1, v1, LM0/s0;->e:Ljava/lang/Object;

    check-cast v1, LN0/D;

    if-eq v3, v1, :cond_c

    new-instance v1, LI0/E;

    invoke-direct {v1, v0, v4}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 v3, 0xe

    invoke-virtual {v8, v3, v1}, LJ/t;->c(ILJ/q;)V

    :cond_c
    iget v1, v10, LM0/b2;->A:I

    iget v3, v12, LM0/b2;->A:I

    if-eq v1, v3, :cond_d

    new-instance v1, LM0/m0;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, LM0/m0;-><init>(LM0/r0;I)V

    const/4 v3, 0x4

    invoke-virtual {v8, v3, v1}, LJ/t;->c(ILJ/q;)V

    :cond_d
    iget-boolean v1, v10, LM0/b2;->v:Z

    iget-boolean v3, v12, LM0/b2;->v:Z

    if-eq v1, v3, :cond_e

    new-instance v1, LM0/m0;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, LM0/m0;-><init>(LM0/r0;I)V

    const/4 v13, 0x5

    invoke-virtual {v8, v13, v1}, LJ/t;->c(ILJ/q;)V

    goto :goto_4

    :cond_e
    const/4 v3, 0x7

    :goto_4
    iget-boolean v1, v10, LM0/b2;->x:Z

    iget-boolean v6, v12, LM0/b2;->x:Z

    const/16 v13, 0x8

    if-eq v1, v6, :cond_f

    new-instance v1, LM0/m0;

    invoke-direct {v1, v2, v13}, LM0/m0;-><init>(LM0/r0;I)V

    invoke-virtual {v8, v3, v1}, LJ/t;->c(ILJ/q;)V

    :cond_f
    iget-object v1, v10, LM0/b2;->g:LG/a0;

    iget-object v3, v12, LM0/b2;->g:LG/a0;

    invoke-virtual {v1, v3}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x9

    const/16 v6, 0xc

    if-nez v1, :cond_10

    new-instance v1, LM0/m0;

    invoke-direct {v1, v2, v3}, LM0/m0;-><init>(LM0/r0;I)V

    invoke-virtual {v8, v6, v1}, LJ/t;->c(ILJ/q;)V

    :cond_10
    iget v1, v10, LM0/b2;->h:I

    iget v14, v12, LM0/b2;->h:I

    if-eq v1, v14, :cond_11

    new-instance v1, LM0/m0;

    invoke-direct {v1, v2, v11}, LM0/m0;-><init>(LM0/r0;I)V

    invoke-virtual {v8, v13, v1}, LJ/t;->c(ILJ/q;)V

    :cond_11
    iget-boolean v1, v10, LM0/b2;->i:Z

    iget-boolean v11, v12, LM0/b2;->i:Z

    if-eq v1, v11, :cond_12

    new-instance v1, LM0/m0;

    const/16 v11, 0xb

    invoke-direct {v1, v2, v11}, LM0/m0;-><init>(LM0/r0;I)V

    invoke-virtual {v8, v3, v1}, LJ/t;->c(ILJ/q;)V

    :cond_12
    iget-object v1, v10, LM0/b2;->q:LG/e;

    iget-object v3, v12, LM0/b2;->q:LG/e;

    invoke-virtual {v1, v3}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, LM0/m0;

    invoke-direct {v1, v2, v6}, LM0/m0;-><init>(LM0/r0;I)V

    const/16 v3, 0x14

    invoke-virtual {v8, v3, v1}, LJ/t;->c(ILJ/q;)V

    :cond_13
    iget v1, v10, LM0/b2;->p:I

    iget v3, v12, LM0/b2;->p:I

    if-eq v1, v3, :cond_14

    new-instance v1, LM0/m0;

    const/4 v13, 0x0

    invoke-direct {v1, v2, v13}, LM0/m0;-><init>(LM0/r0;I)V

    const/16 v3, 0x15

    invoke-virtual {v8, v3, v1}, LJ/t;->c(ILJ/q;)V

    goto :goto_5

    :cond_14
    const/4 v13, 0x0

    :goto_5
    iget-object v1, v10, LM0/b2;->s:LG/p;

    iget-object v3, v12, LM0/b2;->s:LG/p;

    invoke-virtual {v1, v3}, LG/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, LM0/m0;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LM0/m0;-><init>(LM0/r0;I)V

    const/16 v6, 0x1d

    invoke-virtual {v8, v6, v1}, LJ/t;->c(ILJ/q;)V

    goto :goto_6

    :cond_15
    const/4 v3, 0x1

    :goto_6
    iget v1, v10, LM0/b2;->t:I

    iget v6, v12, LM0/b2;->t:I

    if-ne v1, v6, :cond_16

    iget-boolean v1, v10, LM0/b2;->u:Z

    iget-boolean v6, v12, LM0/b2;->u:Z

    if-eq v1, v6, :cond_17

    :cond_16
    new-instance v1, LM0/m0;

    invoke-direct {v1, v2, v4}, LM0/m0;-><init>(LM0/r0;I)V

    const/16 v4, 0x1e

    invoke-virtual {v8, v4, v1}, LJ/t;->c(ILJ/q;)V

    :cond_17
    iget-object v1, v7, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LG/c0;

    iget-object v4, v2, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    invoke-virtual {v1, v4}, LG/c0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, LM0/m0;

    const/4 v14, 0x3

    invoke-direct {v1, v2, v14}, LM0/m0;-><init>(LM0/r0;I)V

    const/16 v4, 0xd

    invoke-virtual {v8, v4, v1}, LJ/t;->c(ILJ/q;)V

    :cond_18
    iget-object v1, v7, LM0/r0;->d:Ljava/lang/Object;

    check-cast v1, LM0/j2;

    iget-object v2, v2, LM0/r0;->d:Ljava/lang/Object;

    check-cast v2, LM0/j2;

    invoke-virtual {v1, v2}, LM0/j2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v9, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_19

    move v1, v3

    goto :goto_7

    :cond_19
    move v1, v13

    :goto_7
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v1, v9, LM0/z;->d:LM0/x;

    invoke-interface {v1}, LM0/x;->A()V

    :cond_1a
    iget-object v1, v7, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Lu1/P;

    invoke-virtual {v1, v5}, Lu1/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v9, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1b

    move v1, v3

    goto :goto_8

    :cond_1b
    move v1, v13

    :goto_8
    invoke-static {v1}, LF1/i;->o(Z)V

    iget-object v1, v9, LM0/z;->d:LM0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LM0/m2;

    const/4 v4, -0x6

    invoke-direct {v2, v4}, LM0/m2;-><init>(I)V

    invoke-static {v2}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-interface {v1}, LM0/x;->s()V

    :cond_1c
    if-eqz v16, :cond_1e

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v9, LM0/z;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1d

    move v13, v3

    :cond_1d
    invoke-static {v13}, LF1/i;->o(Z)V

    iget-object v1, v9, LM0/z;->d:LM0/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1e
    invoke-virtual {v8}, LJ/t;->b()V

    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget v0, v0, LM0/b2;->h:I

    return v0
.end method

.method public final f0()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v2, p0, LM0/t0;->m:LM0/s0;

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, LM0/t0;->e1(ZLM0/s0;ZLM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final g()LG/a0;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->g:LG/a0;

    return-object v0
.end method

.method public final g0(Landroid/view/SurfaceView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support setting SurfaceView"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getDuration()J
    .locals 2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->d:J

    return-wide v0
.end method

.method public final h(F)V
    .locals 8

    invoke-virtual {p0}, LM0/t0;->g()LG/a0;

    move-result-object v0

    iget v0, v0, LG/a0;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v1, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    new-instance v2, LG/a0;

    invoke-direct {v2, p1}, LG/a0;-><init>(F)V

    invoke-virtual {v0, v2}, LM0/b2;->e(LG/a0;)LM0/b2;

    move-result-object v2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v3, v0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v3, LM0/j2;

    iget-object v4, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v4, LG/c0;

    iget-object v5, v0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v5, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {v0}, LN0/O;->U()LN0/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LN0/i;->f(F)V

    return-void
.end method

.method public final h0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LM0/t0;->l(Z)V

    return-void
.end method

.method public final i(Ljava/util/List;IJ)V
    .locals 25

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LM0/t0;->A()V

    return-void

    :cond_0
    sget-object v1, LM0/f2;->g:LM0/f2;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, LM0/f2;->q(ILjava/util/List;)LM0/f2;

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p3, v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p3

    :goto_0
    iget-object v6, v0, LM0/t0;->p:LM0/r0;

    iget-object v6, v6, LM0/r0;->c:Ljava/lang/Object;

    check-cast v6, LM0/b2;

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG/P;

    move/from16 v7, p2

    invoke-static {v7, v3, v4, v5, v2}, LM0/t0;->Z0(ILG/P;JZ)LG/f0;

    move-result-object v8

    new-instance v7, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v12

    move-wide/from16 v23, v14

    invoke-direct/range {v7 .. v24}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    invoke-virtual {v6, v1, v7, v2}, LM0/b2;->n(LG/q0;LM0/l2;I)LM0/b2;

    move-result-object v9

    new-instance v8, LM0/r0;

    iget-object v1, v0, LM0/t0;->p:LM0/r0;

    iget-object v2, v1, LM0/r0;->d:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, LM0/j2;

    iget-object v2, v1, LM0/r0;->e:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, LG/c0;

    iget-object v2, v1, LM0/r0;->b:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lu1/P;

    iget-object v1, v1, LM0/r0;->f:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Landroid/os/Bundle;

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1, v1}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v1, v0, LM0/t0;->p:LM0/r0;

    invoke-static {v1}, LM0/t0;->W0(LM0/r0;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LM0/t0;->b1()V

    :cond_2
    return-void
.end method

.method public final i0(Landroid/view/SurfaceView;)V
    .locals 1

    const-string p1, "MCImplLegacy"

    const-string v0, "Session doesn\'t support clearing SurfaceView"

    invoke-static {p1, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j()LG/Z;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->a:LG/Z;

    return-object v0
.end method

.method public final j0(II)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM0/t0;->k0(III)V

    return-void
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v1, v0, LM0/b2;->s:LG/p;

    iget v1, v1, LG/p;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v0, v0, LM0/b2;->t:I

    return v0

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LN0/O;->Q()LN0/A;

    move-result-object v0

    sget-object v2, LM0/u;->a:Lu1/b0;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, v0, LN0/A;->d:I

    return v0

    :cond_2
    return v1
.end method

.method public final k0(III)V
    .locals 11

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    iget-object v1, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget-object v1, v1, LM0/b2;->j:LG/q0;

    check-cast v1, LM0/f2;

    invoke-virtual {v1}, LM0/f2;->o()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v3, p2, p1

    sub-int v4, v2, v3

    add-int/lit8 v5, v4, -0x1

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p1, v2, :cond_7

    if-eq p1, p2, :cond_7

    if-ne p1, p3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, LM0/t0;->V()I

    move-result v2

    const/4 v4, -0x1

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v2, p2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    sub-int/2addr v2, v3

    :goto_1
    if-ne v2, v4, :cond_4

    invoke-static {p1, v0, v5}, LJ/W;->g(III)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Currently playing item will be removed and added back to mimic move. Assumes item at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " would be the new current item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MCImplLegacy"

    invoke-static {v5, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-ge v2, p3, :cond_5

    goto :goto_2

    :cond_5
    add-int/2addr v2, v3

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, LM0/f2;->e:Lu1/P;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, p1, p2, p3}, LJ/W;->F(Ljava/util/ArrayList;III)V

    new-instance p2, LM0/f2;

    invoke-static {v4}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v4

    iget-object v1, v1, LM0/f2;->f:LM0/e2;

    invoke-direct {p2, v4, v1}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    iget-object v1, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    invoke-virtual {v1, p2, v2}, LM0/b2;->m(LM0/f2;I)LM0/b2;

    move-result-object v5

    new-instance v4, LM0/r0;

    iget-object p2, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, p2, LM0/r0;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LM0/j2;

    iget-object v1, p2, LM0/r0;->e:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, LG/c0;

    iget-object v1, p2, LM0/r0;->b:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lu1/P;

    iget-object p2, p2, LM0/r0;->f:Ljava/lang/Object;

    move-object v9, p2

    check-cast v9, Landroid/os/Bundle;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v4, p2, p2}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean p2, p0, LM0/t0;->s:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_6

    iget-object v2, p0, LM0/t0;->m:LM0/s0;

    iget-object v2, v2, LM0/s0;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN0/M;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, LM0/t0;->i:LN0/O;

    iget-object v4, p0, LM0/t0;->m:LM0/s0;

    iget-object v4, v4, LM0/s0;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN0/M;

    iget-object v4, v4, LN0/M;->e:LN0/C;

    invoke-virtual {v2, v4}, LN0/O;->f0(LN0/C;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN0/M;

    iget-object v1, p0, LM0/t0;->i:LN0/O;

    iget-object p1, p1, LN0/M;->e:LN0/C;

    add-int v2, v0, p3

    invoke-virtual {v1, p1, v2}, LN0/O;->F(LN0/C;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final l(Z)V
    .locals 9

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LM0/b2;

    iget-boolean v0, v1, LM0/b2;->v:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LM0/t0;->q:J

    iget-wide v4, p0, LM0/t0;->r:J

    iget-object v0, p0, LM0/t0;->b:LM0/z;

    iget-wide v6, v0, LM0/z;->f:J

    invoke-static/range {v1 .. v7}, LM0/Y1;->j(LM0/b2;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, LM0/t0;->q:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LM0/t0;->r:J

    new-instance v2, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, LM0/b2;->d(IIZ)LM0/b2;

    move-result-object v3

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v0, LM0/r0;->d:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, LM0/j2;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LG/c0;

    iget-object v1, v0, LM0/r0;->b:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v0, p0, LM0/t0;->s:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {p1}, LN0/O;->U()LN0/i;

    move-result-object p1

    iget-object p1, p1, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->play()V

    return-void

    :cond_1
    iget-object p1, p0, LM0/t0;->i:LN0/O;

    invoke-virtual {p1}, LN0/O;->U()LN0/i;

    move-result-object p1

    iget-object p1, p1, LN0/i;->a:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    return-void

    :cond_2
    iget-object p1, p0, LM0/t0;->p:LM0/r0;

    invoke-static {p1}, LM0/t0;->W0(LM0/r0;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LM0/t0;->b1()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final l0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-boolean v0, v0, LM0/l2;->b:Z

    return v0
.end method

.method public final m0(Ljava/util/List;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, LM0/t0;->v(ILjava/util/List;)V

    return-void
.end method

.method public final n(I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LM0/t0;->d1(IJ)V

    return-void
.end method

.method public final n0(LG/w0;)V
    .locals 0

    return-void
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-wide v0, v0, LM0/b2;->D:J

    return-wide v0
.end method

.method public final o0(LG/e0;)V
    .locals 1

    iget-object v0, p0, LM0/t0;->d:LJ/t;

    invoke-virtual {v0, p1}, LJ/t;->e(LG/e0;)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, LM0/t0;->l:Z

    return v0
.end method

.method public final p0()LG/q0;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    return-object v0
.end method

.method public final q()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final q0(ILjava/util/List;I)V
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->j:LG/q0;

    check-cast v0, LM0/f2;

    invoke-virtual {v0}, LM0/f2;->o()I

    move-result v0

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p3, p2}, LM0/t0;->v(ILjava/util/List;)V

    invoke-virtual {p0, p1, p3}, LM0/t0;->A0(II)V

    return-void
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, LM0/t0;->O0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final r0()Z
    .locals 3

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v1, v0, LM0/b2;->s:LG/p;

    iget v1, v1, LG/p;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, LM0/b2;->u:Z

    return v0

    :cond_0
    iget-object v0, p0, LM0/t0;->i:LN0/O;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LN0/O;->Q()LN0/A;

    move-result-object v0

    sget-object v1, LM0/u;->a:Lu1/b0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, LN0/A;->d:I

    if-nez v0, :cond_2

    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->g:J

    return-wide v0
.end method

.method public final s0(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, LM0/t0;->A0(II)V

    return-void
.end method

.method public final t(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LM0/t0;->d1(IJ)V

    return-void
.end method

.method public final t0()V
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support muting the player"

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, LM0/t0;->p:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget v2, v1, LM0/b2;->A:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, LM0/b2;->c:LM0/l2;

    iget-object v5, v2, LM0/l2;->a:LG/f0;

    iget-boolean v6, v2, LM0/l2;->b:Z

    iget-wide v9, v2, LM0/l2;->d:J

    iget-wide v11, v5, LG/f0;->f:J

    invoke-static {v11, v12, v9, v10}, LM0/Y1;->f(JJ)I

    move-result v13

    new-instance v4, LM0/l2;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    invoke-direct/range {v4 .. v21}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    invoke-virtual {v1, v4}, LM0/b2;->j(LM0/l2;)LM0/b2;

    move-result-object v1

    iget-object v2, v0, LM0/t0;->p:LM0/r0;

    iget-object v2, v2, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LM0/b2;

    iget v4, v2, LM0/b2;->A:I

    if-eq v4, v3, :cond_1

    iget-object v2, v2, LM0/b2;->a:LG/Z;

    invoke-virtual {v1, v3, v2}, LM0/b2;->f(ILG/Z;)LM0/b2;

    move-result-object v1

    :cond_1
    move-object v3, v1

    new-instance v2, LM0/r0;

    iget-object v1, v0, LM0/t0;->p:LM0/r0;

    iget-object v4, v1, LM0/r0;->d:Ljava/lang/Object;

    check-cast v4, LM0/j2;

    iget-object v5, v1, LM0/r0;->e:Ljava/lang/Object;

    check-cast v5, LG/c0;

    iget-object v6, v1, LM0/r0;->b:Ljava/lang/Object;

    check-cast v6, Lu1/P;

    iget-object v1, v1, LM0/r0;->f:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, LM0/t0;->s:Z

    iget-object v1, v0, LM0/t0;->i:LN0/O;

    invoke-virtual {v1}, LN0/O;->U()LN0/i;

    move-result-object v1

    iget-object v1, v1, LN0/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->stop()V

    return-void
.end method

.method public final u0(ILG/P;)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, LM0/t0;->q0(ILjava/util/List;I)V

    return-void
.end method

.method public final v(ILjava/util/List;)V
    .locals 10

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v1, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LM0/b2;

    iget-object v1, v1, LM0/b2;->j:LG/q0;

    check-cast v1, LM0/f2;

    invoke-virtual {v1}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p2, v0, v1, v2}, LM0/t0;->i(Ljava/util/List;IJ)V

    return-void

    :cond_2
    invoke-virtual {p0}, LM0/t0;->p0()LG/q0;

    move-result-object v0

    invoke-virtual {v0}, LG/q0;->o()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, p1, p2}, LM0/f2;->q(ILjava/util/List;)LM0/f2;

    move-result-object v0

    invoke-virtual {p0}, LM0/t0;->V()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v1, v2

    :goto_1
    iget-object v2, p0, LM0/t0;->p:LM0/r0;

    iget-object v2, v2, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LM0/b2;

    invoke-virtual {v2, v0, v1}, LM0/b2;->m(LM0/f2;I)LM0/b2;

    move-result-object v4

    new-instance v3, LM0/r0;

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v1, v0, LM0/r0;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, LM0/j2;

    iget-object v1, v0, LM0/r0;->e:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LG/c0;

    iget-object v1, v0, LM0/r0;->b:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lu1/P;

    iget-object v0, v0, LM0/r0;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, LM0/r0;-><init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v0}, LM0/t0;->f1(LM0/r0;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v0, p0, LM0/t0;->s:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, LM0/t0;->V0(ILjava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final v0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LM0/t0;->e0(I)V

    return-void
.end method

.method public final w()LG/c0;
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v0, LG/c0;

    return-object v0
.end method

.method public final w0()Z
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-boolean v0, v0, LM0/b2;->i:Z

    return v0
.end method

.method public final x()V
    .locals 2

    const-string v0, "MCImplLegacy"

    const-string v1, "Session doesn\'t support unmuting the player"

    invoke-static {v0, v1}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final x0()LG/w0;
    .locals 1

    sget-object v0, LG/w0;->J:LG/w0;

    return-object v0
.end method

.method public final y()J
    .locals 2

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-object v0, v0, LM0/b2;->c:LM0/l2;

    iget-wide v0, v0, LM0/l2;->e:J

    return-wide v0
.end method

.method public final y0(J)V
    .locals 1

    invoke-virtual {p0}, LM0/t0;->V()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, LM0/t0;->d1(IJ)V

    return-void
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, LM0/t0;->p:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v0, LM0/b2;

    iget-boolean v0, v0, LM0/b2;->v:Z

    return v0
.end method

.method public final z0()J
    .locals 2

    invoke-virtual {p0}, LM0/t0;->y()J

    move-result-wide v0

    return-wide v0
.end method
