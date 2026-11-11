.class public final LM0/f2;
.super LG/q0;
.source "SourceFile"


# static fields
.field public static final g:LM0/f2;


# instance fields
.field public final e:Lu1/P;

.field public final f:LM0/e2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LM0/f2;

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    sput-object v0, LM0/f2;->g:LM0/f2;

    return-void
.end method

.method public constructor <init>(Lu1/P;LM0/e2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/f2;->e:Lu1/P;

    iput-object p2, p0, LM0/f2;->f:LM0/e2;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LM0/f2;->o()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, LM0/f2;->s(I)LM0/e2;

    move-result-object v3

    iget-object v3, v3, LM0/e2;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LM0/f2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LM0/f2;

    iget-object v1, p0, LM0/f2;->e:Lu1/P;

    iget-object v3, p1, LM0/f2;->e:Lu1/P;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LM0/f2;->f:LM0/e2;

    iget-object p1, p1, LM0/f2;->f:LM0/e2;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(ILG/n0;Z)LG/n0;
    .locals 13

    invoke-virtual/range {p0 .. p1}, LM0/f2;->s(I)LM0/e2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-wide v2, v0, LM0/e2;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz p3, :cond_1

    iget-object v1, v0, LM0/e2;->c:Ljava/lang/String;

    :cond_1
    move-object v5, v1

    iget-wide v0, v0, LM0/e2;->d:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v7

    sget-object v11, LG/c;->f:LG/c;

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    move v6, p1

    move-object v3, p2

    invoke-virtual/range {v3 .. v12}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    return-object p2
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, LM0/f2;->o()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LM0/f2;->e:Lu1/P;

    iget-object v1, p0, LM0/f2;->f:LM0/e2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LM0/f2;->s(I)LM0/e2;

    move-result-object p1

    iget-object p1, p1, LM0/e2;->c:Ljava/lang/String;

    return-object p1
.end method

.method public final m(ILG/p0;J)LG/p0;
    .locals 21

    invoke-virtual/range {p0 .. p1}, LM0/f2;->s(I)LM0/e2;

    move-result-object v0

    iget-object v2, v0, LM0/e2;->c:Ljava/lang/String;

    iget-object v3, v0, LM0/e2;->a:LG/P;

    iget-wide v0, v0, LM0/e2;->d:J

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v15

    const-wide/16 v19, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move/from16 v18, p1

    move/from16 v17, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v20}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    return-object p2
.end method

.method public final o()I
    .locals 2

    iget-object v0, p0, LM0/f2;->e:Lu1/P;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object v1, p0, LM0/f2;->f:LM0/e2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final q(ILjava/util/List;)LM0/f2;
    .locals 11

    new-instance v0, Lu1/M;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu1/I;-><init>(I)V

    iget-object v1, p0, LM0/f2;->e:Lu1/P;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lu1/P;->s(II)Lu1/P;

    move-result-object v3

    invoke-virtual {v0, v3}, Lu1/I;->d(Ljava/lang/Iterable;)V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v4, LM0/e2;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, LG/P;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, -0x1

    invoke-direct/range {v4 .. v10}, LM0/e2;-><init>(LG/P;JLjava/lang/String;J)V

    invoke-virtual {v0, v4}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lu1/P;->s(II)Lu1/P;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu1/I;->d(Ljava/lang/Iterable;)V

    new-instance p1, LM0/f2;

    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p2

    iget-object v0, p0, LM0/f2;->f:LM0/e2;

    invoke-direct {p1, p2, v0}, LM0/f2;-><init>(Lu1/P;LM0/e2;)V

    return-object p1
.end method

.method public final r(I)J
    .locals 2

    iget-object v0, p0, LM0/f2;->e:Lu1/P;

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/e2;

    iget-wide v0, p1, LM0/e2;->b:J

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LM0/f2;->f:LM0/e2;

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final s(I)LM0/e2;
    .locals 2

    iget-object v0, p0, LM0/f2;->e:Lu1/P;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, LM0/f2;->f:LM0/e2;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/e2;

    return-object p1
.end method
