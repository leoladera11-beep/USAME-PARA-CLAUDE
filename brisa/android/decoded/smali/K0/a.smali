.class public final LK0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final synthetic a:I

.field public final b:LJ/D;

.field public final c:Lb0/B;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LK0/a;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LJ/D;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LJ/D;-><init>(I)V

    iput-object p1, p0, LK0/a;->b:LJ/D;

    new-instance p1, Lb0/B;

    const/4 v0, -0x1

    const-string v1, "image/webp"

    invoke-direct {p1, v0, v0, v1}, Lb0/B;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, LK0/a;->c:Lb0/B;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LJ/D;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LJ/D;-><init>(I)V

    iput-object p1, p0, LK0/a;->b:LJ/D;

    new-instance p1, Lb0/B;

    const/4 v0, -0x1

    const-string v1, "image/avif"

    invoke-direct {p1, v0, v0, v1}, Lb0/B;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, LK0/a;->c:Lb0/B;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final g()V
    .locals 0

    return-void
.end method

.method private final h()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, LK0/a;->a:I

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 1

    iget v0, p0, LK0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK0/a;->c:Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->b(Lb0/p;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LK0/a;->c:Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->b(Lb0/p;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(JJ)V
    .locals 1

    iget v0, p0, LK0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK0/a;->c:Lb0/B;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb0/B;->c(JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, LK0/a;->c:Lb0/B;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb0/B;->c(JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lb0/o;)Z
    .locals 8

    iget v0, p0, LK0/a;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lb0/o;->z(I)V

    iget-object v1, p0, LK0/a;->b:LJ/D;

    invoke-virtual {v1, v0}, LJ/D;->K(I)V

    iget-object v2, v1, LJ/D;->a:[B

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v0}, Lb0/o;->l(I[BI)V

    invoke-virtual {v1}, LJ/D;->C()J

    move-result-wide v4

    const v2, 0x66747970

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, LJ/D;->K(I)V

    iget-object v2, v1, LJ/D;->a:[B

    invoke-interface {p1, v3, v2, v0}, Lb0/o;->l(I[BI)V

    invoke-virtual {v1}, LJ/D;->C()J

    move-result-wide v0

    const p1, 0x61766966

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :pswitch_0
    iget-object v0, p0, LK0/a;->b:LJ/D;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LJ/D;->K(I)V

    iget-object v2, v0, LJ/D;->a:[B

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v4

    const-wide/32 v6, 0x52494646

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lb0/o;->z(I)V

    invoke-virtual {v0, v1}, LJ/D;->K(I)V

    iget-object v2, v0, LJ/D;->a:[B

    invoke-interface {p1, v3, v2, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v0}, LJ/D;->C()J

    move-result-wide v0

    const-wide/32 v4, 0x57454250

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 1

    iget v0, p0, LK0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK0/a;->c:Lb0/B;

    invoke-virtual {v0, p1, p2}, Lb0/B;->e(Lb0/o;Lb0/r;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, LK0/a;->c:Lb0/B;

    invoke-virtual {v0, p1, p2}, Lb0/B;->e(Lb0/o;Lb0/r;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
