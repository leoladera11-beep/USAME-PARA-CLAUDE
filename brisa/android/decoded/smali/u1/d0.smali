.class public final Lu1/d0;
.super Lu1/R0;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/lang/Object;

.field public final synthetic g:I

.field public final h:Ljava/util/Iterator;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lu1/d0;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lt1/k;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu1/d0;->g:I

    .line 3
    iput-object p1, p0, Lu1/d0;->h:Ljava/util/Iterator;

    iput-object p2, p0, Lu1/d0;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lu1/d0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lu1/L0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu1/d0;->g:I

    .line 4
    iput-object p1, p0, Lu1/d0;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lu1/d0;-><init>()V

    .line 5
    iget-object p1, p1, Lu1/L0;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lu1/d0;->h:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    iget v0, p0, Lu1/d0;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    iget v0, p0, Lu1/d0;->e:I

    invoke-static {v0}, Lz/K;->b(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    iput v3, p0, Lu1/d0;->e:I

    iget v0, p0, Lu1/d0;->g:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v0, p0, Lu1/d0;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lu1/d0;->i:Ljava/lang/Object;

    check-cast v3, Lu1/L0;

    iget-object v3, v3, Lu1/L0;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lu1/d0;->e:I

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :pswitch_0
    iget-object v0, p0, Lu1/d0;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lu1/d0;->i:Ljava/lang/Object;

    check-cast v3, Lt1/k;

    invoke-interface {v3, v0}, Lt1/k;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lu1/d0;->e:I

    goto :goto_1

    :goto_2
    iput-object v0, p0, Lu1/d0;->f:Ljava/lang/Object;

    iget v0, p0, Lu1/d0;->e:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    iput v2, p0, Lu1/d0;->e:I

    return v2

    :cond_5
    return v1

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lu1/d0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lu1/d0;->e:I

    iget-object v0, p0, Lu1/d0;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lu1/d0;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
