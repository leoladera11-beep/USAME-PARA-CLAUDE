.class public final Ly0/c;
.super LM/g;
.source "SourceFile"

# interfaces
.implements Ly0/d;


# instance fields
.field public i:Ly0/d;

.field public j:J

.field public final synthetic k:I

.field public l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ly0/c;->k:I

    invoke-direct {p0}, LK/f;-><init>()V

    return-void
.end method

.method public constructor <init>(LV/b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly0/c;->k:I

    .line 2
    invoke-direct {p0}, LK/f;-><init>()V

    .line 3
    iput-object p1, p0, Ly0/c;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    iget-object v0, p0, Ly0/c;->i:Ly0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Ly0/c;->j:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ly0/d;->a(J)I

    move-result p1

    return p1
.end method

.method public final c(I)J
    .locals 4

    iget-object v0, p0, Ly0/c;->i:Ly0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ly0/d;->c(I)J

    move-result-wide v0

    iget-wide v2, p0, Ly0/c;->j:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Ly0/c;->i:Ly0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Ly0/c;->j:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ly0/d;->e(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Ly0/c;->i:Ly0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ly0/d;->g()I

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LK/f;->f:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LM/g;->g:J

    iput-boolean v0, p0, LM/g;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ly0/c;->i:Ly0/d;

    return-void
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Ly0/c;->k:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ly0/c;->l:Ljava/lang/Object;

    check-cast v0, Ly0/j;

    iget-object v0, v0, Ly0/j;->e:Ljava/lang/Object;

    check-cast v0, Lz0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ly0/c;->h()V

    iget-object v0, v0, Lz0/h;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Ly0/c;->l:Ljava/lang/Object;

    check-cast v0, LV/b;

    invoke-virtual {v0, p0}, LM/i;->n(LM/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
