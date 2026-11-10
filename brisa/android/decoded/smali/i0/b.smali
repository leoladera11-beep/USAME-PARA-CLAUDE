.class public final Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/n;


# instance fields
.field public final synthetic a:I

.field public final b:Lb0/B;

.field public c:Lb0/p;

.field public d:Lb0/n;

.field public e:Landroid/util/Pair;

.field public final f:Lb0/n;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    iput p2, p0, Li0/b;->a:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lb0/B;

    const/4 v0, -0x1

    const-string v1, "image/heif"

    invoke-direct {p2, v0, v0, v1}, Lb0/B;-><init>(IILjava/lang/String;)V

    iput-object p2, p0, Li0/b;->b:Lb0/B;

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Li0/a;

    invoke-direct {p1}, Li0/a;-><init>()V

    :goto_0
    iput-object p1, p0, Li0/b;->f:Lb0/n;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lb0/B;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p2, v2, v0, v1}, Lb0/B;-><init>(IILjava/lang/String;)V

    iput-object p2, p0, Li0/b;->b:Lb0/B;

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    new-instance p1, Lj0/a;

    invoke-direct {p1}, Lj0/a;-><init>()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Li0/b;->f:Lb0/n;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Li0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li0/b;->f:Lb0/n;

    check-cast v0, Lj0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj0/a;->a()V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Li0/b;->f:Lb0/n;

    check-cast v0, Li0/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li0/a;->a()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lb0/p;)V
    .locals 1

    iget v0, p0, Li0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iput-object p1, p0, Li0/b;->c:Lb0/p;

    iget-object v0, p0, Li0/b;->f:Lb0/n;

    check-cast v0, Lj0/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/b;->b:Lb0/B;

    iput-object v0, p0, Li0/b;->d:Lb0/n;

    invoke-virtual {v0, p1}, Lb0/B;->b(Lb0/p;)V

    :cond_0
    return-void

    :pswitch_0
    iput-object p1, p0, Li0/b;->c:Lb0/p;

    iget-object v0, p0, Li0/b;->f:Lb0/n;

    check-cast v0, Li0/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Li0/b;->b:Lb0/B;

    iput-object v0, p0, Li0/b;->d:Lb0/n;

    invoke-virtual {v0, p1}, Lb0/B;->b(Lb0/p;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(JJ)V
    .locals 1

    iget v0, p0, Li0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li0/b;->d:Lb0/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/n;->c(JJ)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Li0/b;->e:Landroid/util/Pair;

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Li0/b;->d:Lb0/n;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/n;->c(JJ)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Li0/b;->e:Landroid/util/Pair;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lb0/o;)Z
    .locals 2

    iget v0, p0, Li0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li0/b;->f:Lb0/n;

    check-cast v0, Lj0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj0/a;->d(Lb0/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lb0/o;->o()V

    iget-object v0, p0, Li0/b;->b:Lb0/B;

    invoke-virtual {v0, p1}, Lb0/B;->d(Lb0/o;)Z

    move-result p1

    :goto_0
    return p1

    :pswitch_0
    iget-object v0, p0, Li0/b;->f:Lb0/n;

    check-cast v0, Li0/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/brisa/local/d0;->v(Lb0/o;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lb0/o;->o()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brisa/local/d0;->v(Lb0/o;Z)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lb0/o;Lb0/r;)I
    .locals 6

    iget v0, p0, Li0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Li0/b;->d:Lb0/n;

    if-nez v0, :cond_3

    iget-object v1, p0, Li0/b;->f:Lb0/n;

    check-cast v1, Lj0/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Lj0/a;->d(Lb0/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Li0/b;->b:Lb0/B;

    :goto_1
    iput-object v1, p0, Li0/b;->d:Lb0/n;

    invoke-interface {p1}, Lb0/o;->o()V

    iget-object v0, p0, Li0/b;->e:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v1, p0, Li0/b;->d:Lb0/n;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Li0/b;->e:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lb0/n;->c(JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/b;->e:Landroid/util/Pair;

    :cond_2
    iget-object v0, p0, Li0/b;->d:Lb0/n;

    iget-object v1, p0, Li0/b;->c:Lb0/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lb0/n;->b(Lb0/p;)V

    :cond_3
    iget-object v0, p0, Li0/b;->d:Lb0/n;

    invoke-interface {v0, p1, p2}, Lb0/n;->e(Lb0/o;Lb0/r;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Li0/b;->d:Lb0/n;

    if-nez v0, :cond_7

    iget-object v1, p0, Li0/b;->f:Lb0/n;

    check-cast v1, Li0/a;

    const/4 v2, 0x1

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, LF1/i;->o(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/brisa/local/d0;->v(Lb0/o;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Li0/b;->b:Lb0/B;

    :goto_3
    iput-object v1, p0, Li0/b;->d:Lb0/n;

    invoke-interface {p1}, Lb0/o;->o()V

    iget-object v0, p0, Li0/b;->e:Landroid/util/Pair;

    if-eqz v0, :cond_6

    iget-object v1, p0, Li0/b;->d:Lb0/n;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Li0/b;->e:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lb0/n;->c(JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Li0/b;->e:Landroid/util/Pair;

    :cond_6
    iget-object v0, p0, Li0/b;->d:Lb0/n;

    iget-object v1, p0, Li0/b;->c:Lb0/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lb0/n;->b(Lb0/p;)V

    :cond_7
    iget-object v0, p0, Li0/b;->d:Lb0/n;

    invoke-interface {v0, p1, p2}, Lb0/n;->e(Lb0/o;Lb0/r;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
