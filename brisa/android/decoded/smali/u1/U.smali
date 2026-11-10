.class public final Lu1/U;
.super Lu1/R0;
.source "SourceFile"


# instance fields
.field public final e:Lu1/R0;

.field public f:Ljava/lang/Object;

.field public g:Lu1/R0;


# direct methods
.method public constructor <init>(Lu1/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lu1/Q;->i:Lu1/H0;

    iget-object v0, p1, Lu1/T;->e:Lu1/b0;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lu1/H0;->b()Lu1/E0;

    move-result-object v0

    iput-object v0, p1, Lu1/T;->e:Lu1/b0;

    :cond_0
    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object p1

    iput-object p1, p0, Lu1/U;->e:Lu1/R0;

    const/4 p1, 0x0

    iput-object p1, p0, Lu1/U;->f:Ljava/lang/Object;

    sget-object p1, Lu1/f0;->h:Lu1/f0;

    iput-object p1, p0, Lu1/U;->g:Lu1/R0;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lu1/U;->g:Lu1/R0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu1/U;->e:Lu1/R0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu1/U;->g:Lu1/R0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu1/U;->e:Lu1/R0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lu1/U;->f:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/K;

    invoke-virtual {v0}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    iput-object v0, p0, Lu1/U;->g:Lu1/R0;

    :cond_0
    iget-object v0, p0, Lu1/U;->f:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lu1/U;->g:Lu1/R0;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lu1/L;

    invoke-direct {v2, v0, v1}, Lu1/L;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
