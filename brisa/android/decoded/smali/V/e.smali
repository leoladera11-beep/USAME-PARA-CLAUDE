.class public final LV/e;
.super LN/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final A:LV/d;

.field public B:Z

.field public C:I

.field public D:Ly0/e;

.field public E:Ly0/i;

.field public F:Ly0/c;

.field public G:Ly0/c;

.field public H:I

.field public final I:Landroid/os/Handler;

.field public final J:LN/s;

.field public final K:LN0/O;

.field public L:Z

.field public M:Z

.field public N:LG/x;

.field public O:J

.field public P:J

.field public final x:Ld1/m;

.field public final y:LM/f;

.field public z:LV/a;


# direct methods
.method public constructor <init>(LN/s;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, LV/d;->b:LZ0/i;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, LN/a;-><init>(I)V

    iput-object p1, p0, LV/e;->J:LN/s;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, LJ/W;->a:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, LV/e;->I:Landroid/os/Handler;

    iput-object v0, p0, LV/e;->A:LV/d;

    new-instance p1, Ld1/m;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Ld1/m;-><init>(I)V

    iput-object p1, p0, LV/e;->x:Ld1/m;

    new-instance p1, LM/f;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LM/f;-><init>(I)V

    iput-object p1, p0, LV/e;->y:LM/f;

    new-instance p1, LN0/O;

    const/16 p2, 0x10

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, LN0/O;-><init>(IZ)V

    iput-object p1, p0, LV/e;->K:LN0/O;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LV/e;->P:J

    iput-wide p1, p0, LV/e;->O:J

    return-void
.end method


# virtual methods
.method public final D(LG/x;)I
    .locals 3

    iget-object v0, p1, LG/x;->p:Ljava/lang/String;

    const-string v1, "application/x-media3-cues"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, LG/x;->p:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, LV/e;->A:LV/d;

    check-cast v0, LZ0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LZ0/i;->e:Ljava/lang/Object;

    check-cast v0, Ld1/m;

    invoke-virtual {v0, p1}, Ld1/m;->a(LG/x;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/cea-608"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-mp4-cea-608"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/cea-708"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, LG/W;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1, v2, v2, v2}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v2, v2, v2, v2}, LN/a;->e(IIII)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    iget p1, p1, LG/x;->T:I

    if-nez p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :goto_1
    invoke-static {p1, v2, v2, v2}, LN/a;->e(IIII)I

    move-result p1

    return p1
.end method

.method public final H()V
    .locals 3

    iget-object v0, p0, LV/e;->N:LG/x;

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LV/e;->N:LG/x;

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LV/e;->N:LG/x;

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v1, "application/cea-708"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, LV/e;->N:LG/x;

    iget-object v1, v1, LG/x;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "application/x-media3-cues"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Legacy decoding is disabled, can\'t handle %s samples (expected %s)."

    invoke-static {v2, v1}, Lj1/a;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I()J
    .locals 4

    iget v0, p0, LV/e;->H:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, LV/e;->F:Ly0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LV/e;->H:I

    iget-object v1, p0, LV/e;->F:Ly0/c;

    invoke-virtual {v1}, Ly0/c;->g()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, LV/e;->F:Ly0/c;

    iget v1, p0, LV/e;->H:I

    invoke-virtual {v0, v1}, Ly0/c;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final J(J)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget-wide v0, p0, LN/a;->o:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final K()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, LV/e;->B:Z

    iget-object v1, p0, LV/e;->N:LG/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LV/e;->A:LV/d;

    check-cast v2, LZ0/i;

    iget-object v2, v2, LZ0/i;->e:Ljava/lang/Object;

    check-cast v2, Ld1/m;

    iget-object v3, v1, LG/x;->p:Ljava/lang/String;

    iget v4, v1, LG/x;->P:I

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v0, v6

    goto :goto_1

    :sswitch_0
    const-string v0, "application/cea-708"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "application/cea-608"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v0, "application/x-mp4-cea-608"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v0, Lz0/f;

    iget-object v1, v1, LG/x;->s:Ljava/util/List;

    invoke-direct {v0, v4, v1}, Lz0/f;-><init>(ILjava/util/List;)V

    goto :goto_3

    :pswitch_1
    new-instance v0, Lz0/c;

    invoke-direct {v0, v3, v4}, Lz0/c;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v2, v1}, Ld1/m;->a(LG/x;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v1}, Ld1/m;->c(LG/x;)Ly0/m;

    move-result-object v0

    new-instance v1, LV/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Decoder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v1, v0}, LV/b;-><init>(Ly0/m;)V

    move-object v0, v1

    :goto_3
    iput-object v0, p0, LV/e;->D:Ly0/e;

    iget-wide v1, p0, LN/a;->p:J

    invoke-interface {v0, v1, v2}, LM/c;->c(J)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v1, v3}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L(LI/c;)V
    .locals 5

    iget-object v0, p1, LI/c;->a:Lu1/C0;

    iget-object v1, p0, LV/e;->J:LN/s;

    iget-object v2, v1, LN/s;->a:LN/x;

    iget-object v2, v2, LN/x;->m:LJ/t;

    new-instance v3, LI0/E;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v4}, LI0/E;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x1b

    invoke-virtual {v2, v0, v3}, LJ/t;->f(ILJ/q;)V

    iget-object v1, v1, LN/s;->a:LN/x;

    iput-object p1, v1, LN/x;->f0:LI/c;

    iget-object v1, v1, LN/x;->m:LJ/t;

    new-instance v2, LI0/E;

    const/16 v3, 0xd

    invoke-direct {v2, p1, v3}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, LJ/t;->f(ILJ/q;)V

    return-void
.end method

.method public final M()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LV/e;->E:Ly0/i;

    const/4 v1, -0x1

    iput v1, p0, LV/e;->H:I

    iget-object v1, p0, LV/e;->F:Ly0/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LM/g;->i()V

    iput-object v0, p0, LV/e;->F:Ly0/c;

    :cond_0
    iget-object v1, p0, LV/e;->G:Ly0/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LM/g;->i()V

    iput-object v0, p0, LV/e;->G:Ly0/c;

    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LI/c;

    invoke-virtual {p0, p1}, LV/e;->L(LI/c;)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, LV/e;->M:Z

    return v0
.end method

.method public final o()Z
    .locals 6

    iget-object v0, p0, LV/e;->N:LG/x;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LV/e;->z:LV/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p0, LV/e;->O:J

    invoke-interface {v0, v2, v3}, LV/a;->c(J)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, LN/a;->m:LU/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LU/a0;->x()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    iget-boolean v0, p0, LV/e;->M:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, LV/e;->L:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, LV/e;->F:Ly0/c;

    iget-wide v2, p0, LV/e;->O:J

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ly0/c;->g()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Ly0/c;->g()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ly0/c;->c(I)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, LV/e;->G:Ly0/c;

    iget-wide v2, p0, LV/e;->O:J

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ly0/c;->g()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0}, Ly0/c;->g()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ly0/c;->c(I)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, LV/e;->E:Ly0/i;

    if-nez v0, :cond_6

    :cond_5
    :goto_0
    return v1

    :catch_0
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, LV/e;->N:LG/x;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, LV/e;->P:J

    new-instance v3, LI/c;

    sget-object v4, Lu1/C0;->i:Lu1/C0;

    iget-wide v5, p0, LV/e;->O:J

    invoke-virtual {p0, v5, v6}, LV/e;->J(J)J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, LI/c;-><init>(Ljava/util/List;J)V

    iget-object v4, p0, LV/e;->I:Landroid/os/Handler;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, LV/e;->L(LI/c;)V

    :goto_0
    iput-wide v1, p0, LV/e;->O:J

    iget-object v1, p0, LV/e;->D:Ly0/e;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LV/e;->M()V

    iget-object v1, p0, LV/e;->D:Ly0/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, LM/c;->a()V

    iput-object v0, p0, LV/e;->D:Ly0/e;

    const/4 v0, 0x0

    iput v0, p0, LV/e;->C:I

    :cond_1
    return-void
.end method

.method public final r(JZZ)V
    .locals 0

    iput-wide p1, p0, LV/e;->O:J

    iget-object p1, p0, LV/e;->z:LV/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LV/a;->clear()V

    :cond_0
    new-instance p1, LI/c;

    sget-object p2, Lu1/C0;->i:Lu1/C0;

    iget-wide p3, p0, LV/e;->O:J

    invoke-virtual {p0, p3, p4}, LV/e;->J(J)J

    move-result-wide p3

    invoke-direct {p1, p2, p3, p4}, LI/c;-><init>(Ljava/util/List;J)V

    iget-object p2, p0, LV/e;->I:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LV/e;->L(LI/c;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LV/e;->L:Z

    iput-boolean p1, p0, LV/e;->M:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, LV/e;->P:J

    iget-object p2, p0, LV/e;->N:LG/x;

    if-eqz p2, :cond_3

    iget-object p2, p2, LG/x;->p:Ljava/lang/String;

    const-string p3, "application/x-media3-cues"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p0, LV/e;->C:I

    if-eqz p2, :cond_2

    invoke-virtual {p0}, LV/e;->M()V

    iget-object p2, p0, LV/e;->D:Ly0/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, LM/c;->a()V

    const/4 p2, 0x0

    iput-object p2, p0, LV/e;->D:Ly0/e;

    iput p1, p0, LV/e;->C:I

    invoke-virtual {p0}, LV/e;->K()V

    return-void

    :cond_2
    invoke-virtual {p0}, LV/e;->M()V

    iget-object p1, p0, LV/e;->D:Ly0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LM/c;->flush()V

    iget-wide p2, p0, LN/a;->p:J

    invoke-interface {p1, p2, p3}, LM/c;->c(J)V

    :cond_3
    return-void
.end method

.method public final w([LG/x;JJLU/A;)V
    .locals 0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, LV/e;->N:LG/x;

    iget-object p1, p1, LG/x;->p:Ljava/lang/String;

    const-string p2, "application/x-media3-cues"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LV/e;->H()V

    iget-object p1, p0, LV/e;->D:Ly0/e;

    if-eqz p1, :cond_0

    iput p2, p0, LV/e;->C:I

    return-void

    :cond_0
    invoke-virtual {p0}, LV/e;->K()V

    return-void

    :cond_1
    iget-object p1, p0, LV/e;->N:LG/x;

    iget p1, p1, LG/x;->Q:I

    if-ne p1, p2, :cond_2

    new-instance p1, LV/c;

    invoke-direct {p1}, LV/c;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, La1/g;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, La1/g;-><init>(I)V

    :goto_0
    iput-object p1, p0, LV/e;->z:LV/a;

    return-void
.end method

.method public final z(JJ)V
    .locals 23

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-boolean v0, v1, LN/a;->r:Z

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v7, v1, LV/e;->P:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_0

    cmp-long v0, v2, v7

    if-ltz v0, :cond_0

    invoke-virtual {v1}, LV/e;->M()V

    iput-boolean v4, v1, LV/e;->M:Z

    :cond_0
    iget-boolean v0, v1, LV/e;->M:Z

    if-eqz v0, :cond_1

    goto/16 :goto_11

    :cond_1
    iget-object v0, v1, LV/e;->N:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LG/x;->p:Ljava/lang/String;

    const-string v7, "application/x-media3-cues"

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v7, v1, LV/e;->I:Landroid/os/Handler;

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, -0x4

    iget-object v12, v1, LV/e;->K:LN0/O;

    const/4 v13, -0x3

    const-wide/32 v14, 0xf4240

    if-eqz v0, :cond_f

    iget-object v0, v1, LV/e;->z:LV/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, LV/e;->L:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, v1, LV/e;->y:LM/f;

    invoke-virtual {v1, v12, v0, v8}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v8

    if-ne v8, v13, :cond_3

    invoke-virtual {v0, v10}, LK/f;->f(I)Z

    move-result v16

    if-nez v16, :cond_3

    goto/16 :goto_1

    :cond_3
    if-ne v8, v11, :cond_4

    invoke-virtual {v0, v10}, LK/f;->f(I)Z

    move-result v16

    if-nez v16, :cond_4

    iget-wide v5, v0, LM/f;->k:J

    sub-long/2addr v5, v14

    cmp-long v5, v2, v5

    if-gez v5, :cond_6

    goto/16 :goto_1

    :cond_4
    if-eq v8, v11, :cond_5

    if-ne v8, v13, :cond_6

    :cond_5
    move-wide/from16 p3, v5

    iget-wide v5, v1, LN/a;->v:J

    move-wide/from16 v16, v14

    iget-wide v14, v1, LN/a;->o:J

    sub-long v13, v2, v14

    cmp-long v8, v5, p3

    if-eqz v8, :cond_a

    sub-long v5, v5, v16

    cmp-long v5, v13, v5

    if-gez v5, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1, v12, v0, v9}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v5

    if-eq v5, v11, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0, v10}, LK/f;->f(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iput-boolean v4, v1, LV/e;->L:Z

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, LM/f;->k()V

    iget-object v5, v0, LM/f;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v11, v0, LM/f;->k:J

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v5

    iget-object v10, v1, LV/e;->x:Ld1/m;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    invoke-virtual {v10, v6, v8, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    const-string v6, "c"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ly0/a;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v8

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, LI/b;->b(Landroid/os/Bundle;)LI/b;

    move-result-object v13

    invoke-virtual {v8, v13}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v8}, Lu1/M;->f()Lu1/C0;

    move-result-object v15

    const-string v6, "d"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-direct/range {v10 .. v15}, Ly0/a;-><init>(JJLjava/util/List;)V

    invoke-virtual {v0}, LM/f;->h()V

    iget-object v0, v1, LV/e;->z:LV/a;

    invoke-interface {v0, v10, v2, v3}, LV/a;->k(Ly0/a;J)Z

    move-result v9

    :cond_a
    :goto_1
    iget-object v0, v1, LV/e;->z:LV/a;

    iget-wide v5, v1, LV/e;->O:J

    invoke-interface {v0, v5, v6}, LV/a;->c(J)J

    move-result-wide v5

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v0, v5, v10

    if-nez v0, :cond_b

    iget-boolean v8, v1, LV/e;->L:Z

    if-eqz v8, :cond_b

    if-nez v9, :cond_b

    iput-boolean v4, v1, LV/e;->M:Z

    :cond_b
    if-eqz v0, :cond_c

    cmp-long v0, v5, v2

    if-gtz v0, :cond_c

    move v9, v4

    :cond_c
    if-eqz v9, :cond_e

    iget-object v0, v1, LV/e;->z:LV/a;

    invoke-interface {v0, v2, v3}, LV/a;->a(J)Lu1/P;

    move-result-object v0

    iget-object v5, v1, LV/e;->z:LV/a;

    invoke-interface {v5, v2, v3}, LV/a;->n(J)J

    move-result-wide v5

    new-instance v8, LI/c;

    invoke-virtual {v1, v5, v6}, LV/e;->J(J)J

    move-result-wide v9

    invoke-direct {v8, v0, v9, v10}, LI/c;-><init>(Ljava/util/List;J)V

    if-eqz v7, :cond_d

    invoke-virtual {v7, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_d
    invoke-virtual {v1, v8}, LV/e;->L(LI/c;)V

    :goto_2
    iget-object v0, v1, LV/e;->z:LV/a;

    invoke-interface {v0, v5, v6}, LV/a;->r(J)V

    :cond_e
    iput-wide v2, v1, LV/e;->O:J

    return-void

    :cond_f
    move-wide/from16 p3, v5

    move-wide/from16 v16, v14

    invoke-virtual {v1}, LV/e;->H()V

    iput-wide v2, v1, LV/e;->O:J

    iget-object v0, v1, LV/e;->G:Ly0/c;

    const-string v5, "Subtitle decoding failed. streamFormat="

    const-string v6, "TextRenderer"

    const/4 v14, 0x0

    if-nez v0, :cond_11

    iget-object v0, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2, v3}, Ly0/e;->d(J)V

    :try_start_0
    iget-object v0, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LM/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/c;

    iput-object v0, v1, LV/e;->G:Ly0/c;
    :try_end_0
    .catch Ly0/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LV/e;->N:LG/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, LI/c;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    iget-wide v5, v1, LV/e;->O:J

    invoke-virtual {v1, v5, v6}, LV/e;->J(J)J

    move-result-wide v5

    invoke-direct {v0, v2, v5, v6}, LI/c;-><init>(Ljava/util/List;J)V

    if-eqz v7, :cond_10

    invoke-virtual {v7, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_10
    invoke-virtual {v1, v0}, LV/e;->L(LI/c;)V

    :goto_3
    invoke-virtual {v1}, LV/e;->M()V

    iget-object v0, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LM/c;->a()V

    iput-object v14, v1, LV/e;->D:Ly0/e;

    iput v9, v1, LV/e;->C:I

    invoke-virtual {v1}, LV/e;->K()V

    goto/16 :goto_11

    :cond_11
    :goto_4
    iget v0, v1, LN/a;->l:I

    const/4 v15, 0x2

    if-eq v0, v15, :cond_12

    goto/16 :goto_11

    :cond_12
    iget-object v0, v1, LV/e;->F:Ly0/c;

    if-eqz v0, :cond_13

    invoke-virtual {v1}, LV/e;->I()J

    move-result-wide v18

    move v0, v9

    :goto_5
    cmp-long v18, v18, v2

    if-gtz v18, :cond_14

    iget v0, v1, LV/e;->H:I

    add-int/2addr v0, v4

    iput v0, v1, LV/e;->H:I

    invoke-virtual {v1}, LV/e;->I()J

    move-result-wide v18

    move v0, v4

    goto :goto_5

    :cond_13
    move v0, v9

    :cond_14
    iget-object v11, v1, LV/e;->G:Ly0/c;

    if-eqz v11, :cond_18

    invoke-virtual {v11, v10}, LK/f;->f(I)Z

    move-result v19

    if-eqz v19, :cond_16

    if-nez v0, :cond_18

    invoke-virtual {v1}, LV/e;->I()J

    move-result-wide v19

    const-wide v21, 0x7fffffffffffffffL

    cmp-long v11, v19, v21

    if-nez v11, :cond_18

    iget v11, v1, LV/e;->C:I

    if-ne v11, v15, :cond_15

    invoke-virtual {v1}, LV/e;->M()V

    iget-object v11, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11}, LM/c;->a()V

    iput-object v14, v1, LV/e;->D:Ly0/e;

    iput v9, v1, LV/e;->C:I

    invoke-virtual {v1}, LV/e;->K()V

    goto :goto_6

    :cond_15
    invoke-virtual {v1}, LV/e;->M()V

    iput-boolean v4, v1, LV/e;->M:Z

    goto :goto_6

    :cond_16
    iget-wide v8, v11, LM/g;->g:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_18

    iget-object v0, v1, LV/e;->F:Ly0/c;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, LM/g;->i()V

    :cond_17
    invoke-virtual {v11, v2, v3}, Ly0/c;->a(J)I

    move-result v0

    iput v0, v1, LV/e;->H:I

    iput-object v11, v1, LV/e;->F:Ly0/c;

    iput-object v14, v1, LV/e;->G:Ly0/c;

    move v0, v4

    :cond_18
    :goto_6
    if-eqz v0, :cond_1d

    iget-object v0, v1, LV/e;->F:Ly0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, LV/e;->F:Ly0/c;

    invoke-virtual {v0, v2, v3}, Ly0/c;->a(J)I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v8, v1, LV/e;->F:Ly0/c;

    invoke-virtual {v8}, Ly0/c;->g()I

    move-result v8

    if-nez v8, :cond_19

    goto :goto_7

    :cond_19
    const/4 v8, -0x1

    if-ne v0, v8, :cond_1a

    iget-object v0, v1, LV/e;->F:Ly0/c;

    invoke-virtual {v0}, Ly0/c;->g()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v0, v8}, Ly0/c;->c(I)J

    move-result-wide v8

    goto :goto_8

    :cond_1a
    iget-object v8, v1, LV/e;->F:Ly0/c;

    sub-int/2addr v0, v4

    invoke-virtual {v8, v0}, Ly0/c;->c(I)J

    move-result-wide v8

    goto :goto_8

    :cond_1b
    :goto_7
    iget-object v0, v1, LV/e;->F:Ly0/c;

    iget-wide v8, v0, LM/g;->g:J

    :goto_8
    invoke-virtual {v1, v8, v9}, LV/e;->J(J)J

    move-result-wide v8

    new-instance v0, LI/c;

    iget-object v11, v1, LV/e;->F:Ly0/c;

    invoke-virtual {v11, v2, v3}, Ly0/c;->e(J)Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v11, v8, v9}, LI/c;-><init>(Ljava/util/List;J)V

    if-eqz v7, :cond_1c

    invoke-virtual {v7, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_1c
    invoke-virtual {v1, v0}, LV/e;->L(LI/c;)V

    :cond_1d
    :goto_9
    iget v0, v1, LV/e;->C:I

    if-ne v0, v15, :cond_1e

    goto/16 :goto_11

    :cond_1e
    :goto_a
    :try_start_1
    iget-boolean v0, v1, LV/e;->L:Z

    if-nez v0, :cond_2d

    iget-object v0, v1, LV/e;->E:Ly0/i;

    if-nez v0, :cond_20

    iget-object v0, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LM/c;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/i;

    if-nez v0, :cond_1f

    goto/16 :goto_11

    :cond_1f
    iput-object v0, v1, LV/e;->E:Ly0/i;

    goto :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_20
    :goto_b
    iget v8, v1, LV/e;->C:I

    if-ne v8, v4, :cond_21

    iput v10, v0, LK/f;->f:I

    iget-object v2, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, LM/c;->b(Ly0/i;)V

    iput-object v14, v1, LV/e;->E:Ly0/i;

    iput v15, v1, LV/e;->C:I

    return-void

    :cond_21
    const/4 v8, 0x5

    invoke-virtual {v1, v12, v0, v8}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v9

    if-ne v9, v13, :cond_22

    invoke-virtual {v0, v10}, LK/f;->f(I)Z

    move-result v11

    if-nez v11, :cond_22

    goto/16 :goto_11

    :cond_22
    const/4 v11, -0x4

    if-ne v9, v11, :cond_25

    invoke-virtual {v0, v10}, LK/f;->f(I)Z

    move-result v11

    if-nez v11, :cond_24

    iget-wide v8, v0, LM/f;->k:J

    sub-long v8, v8, v16

    cmp-long v8, v2, v8

    if-gez v8, :cond_23

    goto/16 :goto_11

    :cond_23
    const/4 v8, 0x0

    goto :goto_c

    :cond_24
    const/4 v11, -0x4

    :cond_25
    if-eq v9, v11, :cond_26

    if-ne v9, v13, :cond_23

    :cond_26
    iget-wide v8, v1, LN/a;->v:J

    iget-wide v13, v1, LN/a;->o:J

    sub-long v13, v2, v13

    cmp-long v22, v8, p3

    if-eqz v22, :cond_2d

    sub-long v8, v8, v16

    cmp-long v8, v13, v8

    if-gez v8, :cond_23

    goto/16 :goto_11

    :goto_c
    invoke-virtual {v1, v12, v0, v8}, LN/a;->y(LN0/O;LM/f;I)I

    move-result v9

    const/4 v13, -0x4

    if-ne v9, v13, :cond_2a

    invoke-virtual {v0, v10}, LK/f;->f(I)Z

    move-result v9

    if-eqz v9, :cond_27

    iput-boolean v4, v1, LV/e;->L:Z

    iput-boolean v8, v1, LV/e;->B:Z

    goto :goto_d

    :cond_27
    iget-object v8, v12, LN0/O;->g:Ljava/lang/Object;

    check-cast v8, LG/x;

    if-nez v8, :cond_28

    goto :goto_11

    :cond_28
    iget-wide v8, v8, LG/x;->u:J

    iput-wide v8, v0, Ly0/i;->n:J

    invoke-virtual {v0}, LM/f;->k()V

    iget-boolean v8, v1, LV/e;->B:Z

    invoke-virtual {v0, v4}, LK/f;->f(I)Z

    move-result v9

    xor-int/2addr v9, v4

    and-int/2addr v8, v9

    iput-boolean v8, v1, LV/e;->B:Z

    :goto_d
    iget-boolean v8, v1, LV/e;->B:Z

    if-nez v8, :cond_29

    iget-object v8, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v0}, LM/c;->b(Ly0/i;)V

    const/4 v11, 0x0

    iput-object v11, v1, LV/e;->E:Ly0/i;
    :try_end_1
    .catch Ly0/f; {:try_start_1 .. :try_end_1} :catch_1

    :cond_29
    const/4 v0, -0x3

    goto :goto_e

    :cond_2a
    const/4 v0, -0x3

    if-ne v9, v0, :cond_2b

    goto :goto_11

    :cond_2b
    :goto_e
    move v13, v0

    const/4 v14, 0x0

    goto/16 :goto_a

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, LV/e;->N:LG/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, LJ/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, LI/c;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    iget-wide v5, v1, LV/e;->O:J

    invoke-virtual {v1, v5, v6}, LV/e;->J(J)J

    move-result-wide v5

    invoke-direct {v0, v2, v5, v6}, LI/c;-><init>(Ljava/util/List;J)V

    if-eqz v7, :cond_2c

    invoke-virtual {v7, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_10

    :cond_2c
    invoke-virtual {v1, v0}, LV/e;->L(LI/c;)V

    :goto_10
    invoke-virtual {v1}, LV/e;->M()V

    iget-object v0, v1, LV/e;->D:Ly0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, LM/c;->a()V

    const/4 v11, 0x0

    iput-object v11, v1, LV/e;->D:Ly0/e;

    const/4 v8, 0x0

    iput v8, v1, LV/e;->C:I

    invoke-virtual {v1}, LV/e;->K()V

    :cond_2d
    :goto_11
    return-void
.end method
