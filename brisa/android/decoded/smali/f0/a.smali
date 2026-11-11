.class public final Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lf0/a;->a:I

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lb0/B;

    const/4 v0, 0x2

    const-string v1, "image/bmp"

    const/16 v2, 0x424d

    invoke-direct {p1, v2, v0, v1}, Lb0/B;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lf0/a;->b:Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lb0/B;

    const/4 v0, 0x2

    const-string v1, "image/png"

    const v2, 0x8950

    invoke-direct {p1, v2, v0, v1}, Lb0/B;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lf0/a;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LG/x;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lf0/a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lf0/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private final g()V
    .locals 0

    return-void
.end method

.method private final h()V
    .locals 0

    return-void
.end method

.method private final i()V
    .locals 0

    return-void
.end method

.method private final j(JJ)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lf0/a;->a:I

    return-void
.end method

.method public final b(Lb0/p;)V
    .locals 4

    iget v0, p0, Lf0/a;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lb0/p;->v(II)Lb0/G;

    move-result-object v0

    new-instance v1, Lb0/s;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lb0/s;-><init>(J)V

    invoke-interface {p1, v1}, Lb0/p;->c(Lb0/z;)V

    invoke-interface {p1}, Lb0/p;->e()V

    iget-object p1, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast p1, LG/x;

    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object v1

    const-string v2, "text/x-unknown"

    invoke-static {v2}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, LG/w;->o:Ljava/lang/String;

    iget-object p1, p1, LG/x;->p:Ljava/lang/String;

    iput-object p1, v1, LG/w;->k:Ljava/lang/String;

    new-instance p1, LG/x;

    invoke-direct {p1, v1}, LG/x;-><init>(LG/w;)V

    invoke-interface {v0, p1}, Lb0/G;->b(LG/x;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->b(Lb0/p;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->b(Lb0/p;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(JJ)V
    .locals 1

    iget v0, p0, Lf0/a;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb0/B;->c(JJ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb0/B;->c(JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lb0/o;)Z
    .locals 1

    iget v0, p0, Lf0/a;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :pswitch_0
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->d(Lb0/o;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->d(Lb0/o;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 1

    iget v0, p0, Lf0/a;->a:I

    packed-switch v0, :pswitch_data_0

    const p2, 0x7fffffff

    invoke-interface {p1, p2}, Lb0/o;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2

    :pswitch_0
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1, p2}, Lb0/B;->e(Lb0/o;Lb0/r;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lf0/a;->b:Ljava/lang/Object;

    check-cast v0, Lb0/B;

    invoke-virtual {v0, p1, p2}, Lb0/B;->e(Lb0/o;Lb0/r;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
