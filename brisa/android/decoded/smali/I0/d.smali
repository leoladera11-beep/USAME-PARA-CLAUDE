.class public final LI0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final a:LI0/e;

.field public final b:LJ/D;

.field public final c:LJ/D;

.field public final d:LJ/B;

.field public e:Lb0/p;

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI0/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "audio/mp4a-latm"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, LI0/e;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, LI0/d;->a:LI0/e;

    new-instance v0, LJ/D;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, LI0/d;->b:LJ/D;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LI0/d;->g:J

    new-instance v0, LJ/D;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LJ/D;-><init>(I)V

    iput-object v0, p0, LI0/d;->c:LJ/D;

    new-instance v1, LJ/B;

    iget-object v0, v0, LJ/D;->a:[B

    array-length v2, v0

    invoke-direct {v1, v0, v2}, LJ/B;-><init>([BI)V

    iput-object v1, p0, LI0/d;->d:LJ/B;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 3

    iput-object p1, p0, LI0/d;->e:Lb0/p;

    new-instance v0, LI0/J;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LI0/J;-><init>(II)V

    iget-object v1, p0, LI0/d;->a:LI0/e;

    invoke-virtual {v1, p1, v0}, LI0/e;->j(Lb0/p;LI0/J;)V

    invoke-interface {p1}, Lb0/p;->e()V

    return-void
.end method

.method public final c(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LI0/d;->h:Z

    iget-object p1, p0, LI0/d;->a:LI0/e;

    invoke-virtual {p1}, LI0/e;->a()V

    iput-wide p3, p0, LI0/d;->f:J

    return-void
.end method

.method public final d(Lb0/o;)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LI0/d;->c:LJ/D;

    iget-object v3, v2, LJ/D;->a:[B

    const/16 v4, 0xa

    invoke-interface {p1, v0, v3, v4}, Lb0/o;->l(I[BI)V

    invoke-virtual {v2, v0}, LJ/D;->N(I)V

    invoke-virtual {v2}, LJ/D;->D()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_5

    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1, v1}, Lb0/o;->z(I)V

    iget-wide v2, p0, LI0/d;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, LI0/d;->g:J

    :cond_0
    const/4 v3, 0x0

    move v2, v1

    move v0, v3

    move v4, v0

    :cond_1
    iget-object v5, p0, LI0/d;->c:LJ/D;

    iget-object v6, v5, LJ/D;->a:[B

    const/4 v7, 0x2

    invoke-interface {p1, v3, v6, v7}, Lb0/o;->l(I[BI)V

    invoke-virtual {v5, v3}, LJ/D;->N(I)V

    invoke-virtual {v5}, LJ/D;->H()I

    move-result v6

    const v7, 0xfff6

    and-int/2addr v6, v7

    const v7, 0xfff0

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    add-int/2addr v0, v6

    const/4 v7, 0x4

    if-lt v0, v7, :cond_2

    const/16 v8, 0xbc

    if-le v4, v8, :cond_2

    return v6

    :cond_2
    iget-object v5, v5, LJ/D;->a:[B

    invoke-interface {p1, v3, v5, v7}, Lb0/o;->l(I[BI)V

    const/16 v5, 0xe

    iget-object v6, p0, LI0/d;->d:LJ/B;

    invoke-virtual {v6, v5}, LJ/B;->m(I)V

    const/16 v5, 0xd

    invoke-virtual {v6, v5}, LJ/B;->g(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1, v2}, Lb0/o;->z(I)V

    :goto_1
    move v0, v3

    move v4, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-interface {p1, v6}, Lb0/o;->z(I)V

    add-int/2addr v4, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Lb0/o;->o()V

    invoke-interface {p1, v2}, Lb0/o;->z(I)V

    goto :goto_1

    :goto_2
    sub-int v5, v2, v1

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_1

    return v3

    :cond_5
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, LJ/D;->O(I)V

    invoke-virtual {v2}, LJ/D;->z()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, Lb0/o;->z(I)V

    goto/16 :goto_0
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 8

    iget-object p2, p0, LI0/d;->e:Lb0/p;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lb0/o;->getLength()J

    iget-object p2, p0, LI0/d;->b:LJ/D;

    iget-object v0, p2, LJ/D;->a:[B

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, LG/o;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, p0, LI0/d;->i:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, LI0/d;->e:Lb0/p;

    new-instance v5, Lb0/s;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v6, v7}, Lb0/s;-><init>(J)V

    invoke-interface {v4, v5}, Lb0/p;->c(Lb0/z;)V

    iput-boolean v1, p0, LI0/d;->i:Z

    :goto_1
    if-eqz v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2, v2}, LJ/D;->N(I)V

    invoke-virtual {p2, p1}, LJ/D;->M(I)V

    iget-boolean p1, p0, LI0/d;->h:Z

    iget-object v0, p0, LI0/d;->a:LI0/e;

    if-nez p1, :cond_3

    iget-wide v3, p0, LI0/d;->f:J

    iput-wide v3, v0, LI0/e;->u:J

    iput-boolean v1, p0, LI0/d;->h:Z

    :cond_3
    invoke-virtual {v0, p2}, LI0/e;->f(LJ/D;)V

    return v2
.end method
