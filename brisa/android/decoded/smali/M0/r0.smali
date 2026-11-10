.class public final LM0/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LM0/r0;->a:I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, LM0/b2;->H:LM0/b2;

    sget-object v1, LM0/f2;->g:LM0/f2;

    invoke-virtual {v0, v1}, LM0/b2;->l(LG/q0;)LM0/b2;

    move-result-object v0

    iput-object v0, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 33
    sget-object v0, LM0/j2;->b:LM0/j2;

    iput-object v0, p0, LM0/r0;->d:Ljava/lang/Object;

    .line 34
    sget-object v0, LG/c0;->b:LG/c0;

    iput-object v0, p0, LM0/r0;->e:Ljava/lang/Object;

    .line 35
    sget-object v0, Lu1/C0;->i:Lu1/C0;

    .line 36
    iput-object v0, p0, LM0/r0;->b:Ljava/lang/Object;

    .line 37
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, LM0/r0;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, LM0/r0;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LG/n0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LM0/r0;->a:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 27
    sget-object p1, Lu1/P;->f:Lu1/N;

    .line 28
    sget-object p1, Lu1/C0;->i:Lu1/C0;

    .line 29
    iput-object p1, p0, LM0/r0;->b:Ljava/lang/Object;

    .line 30
    sget-object p1, Lu1/H0;->k:Lu1/H0;

    iput-object p1, p0, LM0/r0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/b2;LM0/j2;LG/c0;Lu1/P;Landroid/os/Bundle;LM0/k2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LM0/r0;->a:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, LM0/r0;->d:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, LM0/r0;->e:Ljava/lang/Object;

    .line 43
    iput-object p4, p0, LM0/r0;->b:Ljava/lang/Object;

    if-nez p5, :cond_0

    .line 44
    sget-object p5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    iput-object p5, p0, LM0/r0;->f:Ljava/lang/Object;

    .line 45
    iput-object p6, p0, LM0/r0;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LS/o;Landroid/media/MediaFormat;LG/x;Landroid/view/Surface;Landroid/media/MediaCrypto;LB/A;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LM0/r0;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, LM0/r0;->d:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, LM0/r0;->e:Ljava/lang/Object;

    .line 19
    iput-object p4, p0, LM0/r0;->b:Ljava/lang/Object;

    .line 20
    iput-object p5, p0, LM0/r0;->f:Ljava/lang/Object;

    .line 21
    iput-object p6, p0, LM0/r0;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LW1/m;Ljava/lang/String;LW1/k;LW1/t;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LM0/r0;->a:I

    const-string v0, "url"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, LM0/r0;->d:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, LM0/r0;->e:Ljava/lang/Object;

    .line 13
    iput-object p4, p0, LM0/r0;->b:Ljava/lang/Object;

    .line 14
    iput-object p5, p0, LM0/r0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ1/d;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LM0/r0;->a:I

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 24
    sget-object p1, Ld2/h;->a:Ld2/g;

    iput-object p1, p0, LM0/r0;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LM0/r0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LM0/r0;->c:Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p2, p0, LM0/r0;->e:Ljava/lang/Object;

    iput-object p3, p0, LM0/r0;->b:Ljava/lang/Object;

    sget-object p2, Lq1/a;->e:Lq1/a;

    iput-object p2, p0, LM0/r0;->f:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    .line 3
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LM0/r0;->d:Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public static b(LG/g0;Lu1/P;LU/A;LG/n0;)LU/A;
    .locals 10

    invoke-interface {p0}, LG/g0;->p0()LG/q0;

    move-result-object v0

    invoke-interface {p0}, LG/g0;->K()I

    move-result v1

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, LG/q0;->l(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    :goto_0
    invoke-interface {p0}, LG/g0;->m()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1, p3, v4}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v0

    invoke-interface {p0}, LG/g0;->O0()J

    move-result-wide v1

    invoke-static {v1, v2}, LJ/W;->G(J)J

    move-result-wide v1

    iget-wide v6, p3, LG/n0;->e:J

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, LG/n0;->b(J)I

    move-result p3

    :goto_1
    move v9, p3

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p3, -0x1

    goto :goto_1

    :goto_3
    move p3, v4

    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LU/A;

    invoke-interface {p0}, LG/g0;->m()Z

    move-result v6

    invoke-interface {p0}, LG/g0;->U()I

    move-result v7

    invoke-interface {p0}, LG/g0;->f0()I

    move-result v8

    invoke-static/range {v4 .. v9}, LM0/r0;->c(LU/A;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p0}, LG/g0;->m()Z

    move-result v6

    invoke-interface {p0}, LG/g0;->U()I

    move-result v7

    invoke-interface {p0}, LG/g0;->f0()I

    move-result v8

    move-object v4, p2

    invoke-static/range {v4 .. v9}, LM0/r0;->c(LU/A;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v4

    :cond_5
    return-object v3
.end method

.method public static c(LU/A;Ljava/lang/Object;ZIII)Z
    .locals 2

    iget-object v0, p0, LU/A;->a:Ljava/lang/Object;

    iget v1, p0, LU/A;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-ne v1, p3, :cond_1

    iget p1, p0, LU/A;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    iget p0, p0, LU/A;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public a(LC1/e;LU/A;LG/q0;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, LU/A;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    return-void

    :cond_1
    iget-object p3, p0, LM0/r0;->d:Ljava/lang/Object;

    check-cast p3, Lu1/H0;

    invoke-virtual {p3, p2}, Lu1/H0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LG/q0;

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, LC1/e;->m(Ljava/lang/Object;Ljava/lang/Object;)LC1/e;

    :cond_2
    :goto_0
    return-void
.end method

.method public d()LC2/b;
    .locals 3

    new-instance v0, LC2/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC2/b;-><init>(Z)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, LC2/b;->j:Ljava/lang/Object;

    iget-object v1, p0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v1, LW1/m;

    iput-object v1, v0, LC2/b;->g:Ljava/lang/Object;

    iget-object v1, p0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, LC2/b;->f:Ljava/lang/Object;

    iget-object v1, p0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, LW1/t;

    iput-object v1, v0, LC2/b;->i:Ljava/lang/Object;

    iget-object v1, p0, LM0/r0;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, LC2/b;->j:Ljava/lang/Object;

    iget-object v1, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LW1/k;

    invoke-virtual {v1}, LW1/k;->d()LZ0/i;

    move-result-object v1

    iput-object v1, v0, LC2/b;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public e(LG/q0;)V
    .locals 3

    new-instance v0, LC1/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LC1/e;-><init>(I)V

    iget-object v1, p0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Lu1/P;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LM0/r0;->f:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {p0, v0, v1, p1}, LM0/r0;->a(LC1/e;LU/A;LG/q0;)V

    iget-object v1, p0, LM0/r0;->g:Ljava/lang/Object;

    check-cast v1, LU/A;

    iget-object v2, p0, LM0/r0;->f:Ljava/lang/Object;

    check-cast v2, LU/A;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LM0/r0;->g:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {p0, v0, v1, p1}, LM0/r0;->a(LC1/e;LU/A;LG/q0;)V

    :cond_0
    iget-object v1, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LU/A;

    iget-object v2, p0, LM0/r0;->f:Ljava/lang/Object;

    check-cast v2, LU/A;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LU/A;

    iget-object v2, p0, LM0/r0;->g:Ljava/lang/Object;

    check-cast v2, LU/A;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {p0, v0, v1, p1}, LM0/r0;->a(LC1/e;LU/A;LG/q0;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v2, Lu1/P;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v2, Lu1/P;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU/A;

    invoke-virtual {p0, v0, v2, p1}, LM0/r0;->a(LC1/e;LU/A;LG/q0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, LM0/r0;->b:Ljava/lang/Object;

    check-cast v1, Lu1/P;

    iget-object v2, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v2, LU/A;

    invoke-virtual {v1, v2}, Lu1/P;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v1, LU/A;

    invoke-virtual {p0, v0, v1, p1}, LM0/r0;->a(LC1/e;LU/A;LG/q0;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, LC1/e;->b(Z)Lu1/H0;

    move-result-object p1

    iput-object p1, p0, LM0/r0;->d:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, LM0/r0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LM0/r0;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request{method="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LM0/r0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LM0/r0;->c:Ljava/lang/Object;

    check-cast v2, LW1/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LM0/r0;->e:Ljava/lang/Object;

    check-cast v2, LW1/k;

    invoke-virtual {v2}, LW1/k;->size()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ", headers=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LW1/k;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    move-object v4, v2

    check-cast v4, LF1/b;

    invoke-virtual {v4}, LF1/b;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, LF1/b;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, LE1/b;

    iget-object v6, v4, LE1/b;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v4, v4, LE1/b;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-lez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ", tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
