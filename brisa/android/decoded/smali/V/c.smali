.class public final LV/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/a;


# static fields
.field public static final f:Lu1/B;


# instance fields
.field public final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lu1/v0;->f:Lu1/v0;

    new-instance v1, LP/B;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LP/B;-><init>(I)V

    new-instance v2, Lu1/r;

    invoke-direct {v2, v1, v0}, Lu1/r;-><init>(Lt1/j;Lu1/y0;)V

    sget-object v0, Lu1/v0;->g:Lu1/v0;

    new-instance v1, LP/B;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, LP/B;-><init>(I)V

    new-instance v3, Lu1/r;

    invoke-direct {v3, v1, v0}, Lu1/r;-><init>(Lt1/j;Lu1/y0;)V

    new-instance v0, Lu1/B;

    invoke-direct {v0, v2, v3}, Lu1/B;-><init>(Lu1/r;Lu1/r;)V

    sput-object v0, LV/c;->f:Lu1/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LV/c;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(J)Lu1/P;
    .locals 7

    iget-object v0, p0, LV/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/a;

    iget-wide v2, v2, Ly0/a;->b:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly0/a;

    iget-wide v5, v4, Ly0/a;->b:J

    cmp-long v5, p1, v5

    if-ltz v5, :cond_1

    iget-wide v5, v4, Ly0/a;->d:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v4, v4, Ly0/a;->b:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p1, LV/c;->f:Lu1/B;

    invoke-static {p1, v2}, Lu1/P;->r(Lu1/y0;Ljava/util/List;)Lu1/C0;

    move-result-object p1

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p2

    :goto_2
    iget v0, p1, Lu1/C0;->h:I

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/a;

    iget-object v0, v0, Ly0/a;->a:Lu1/P;

    invoke-virtual {p2, v0}, Lu1/I;->d(Ljava/lang/Iterable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_3
    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    return-object p1
.end method

.method public final c(J)J
    .locals 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    iget-object v5, p0, LV/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly0/a;

    iget-wide v6, v6, Ly0/a;->b:J

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly0/a;

    iget-wide v8, v5, Ly0/a;->d:J

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    cmp-long p1, v3, v0

    if-nez p1, :cond_0

    move-wide v3, v6

    goto :goto_2

    :cond_0
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v3, p1

    goto :goto_2

    :cond_1
    cmp-long v5, p1, v8

    if-gez v5, :cond_3

    cmp-long v5, v3, v0

    if-nez v5, :cond_2

    move-wide v3, v8

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    cmp-long p1, v3, v0

    if-eqz p1, :cond_5

    return-wide v3

    :cond_5
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LV/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final k(Ly0/a;J)Z
    .locals 9

    iget-wide v0, p1, Ly0/a;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {v4}, LF1/i;->g(Z)V

    iget-wide v7, p1, Ly0/a;->c:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-static {v2}, LF1/i;->g(Z)V

    cmp-long v2, v0, p2

    if-gtz v2, :cond_2

    iget-wide v2, p1, Ly0/a;->d:J

    cmp-long p2, p2, v2

    if-gez p2, :cond_2

    move p2, v6

    goto :goto_2

    :cond_2
    move p2, v5

    :goto_2
    iget-object p3, p0, LV/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    :goto_3
    if-ltz v2, :cond_4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly0/a;

    iget-wide v3, v3, Ly0/a;->b:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_3

    add-int/2addr v2, v6

    invoke-virtual {p3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return p2
.end method

.method public final n(J)J
    .locals 9

    iget-object v0, p0, LV/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/a;

    iget-wide v2, v2, Ly0/a;->b:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/a;

    iget-wide v2, v2, Ly0/a;->b:J

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly0/a;

    iget-wide v4, v4, Ly0/a;->b:J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly0/a;

    iget-wide v6, v6, Ly0/a;->d:J

    cmp-long v8, v6, p1

    if-gtz v8, :cond_1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    cmp-long v6, v4, p1

    if-gtz v6, :cond_2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-wide v2

    :cond_3
    :goto_2
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final r(J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LV/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/a;

    iget-wide v2, v2, Ly0/a;->b:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly0/a;

    iget-wide v3, v3, Ly0/a;->d:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
