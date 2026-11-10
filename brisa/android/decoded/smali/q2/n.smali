.class public final Lq2/n;
.super Lq2/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lm2/f;


# direct methods
.method public synthetic constructor <init>(Lm2/f;I)V
    .locals 0

    iput p2, p0, Lq2/n;->a:I

    iput-object p1, p0, Lq2/n;->b:Lm2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lq2/n;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/16 v0, 0x8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lo2/j;Lo2/j;)Z
    .locals 1

    iget p1, p0, Lq2/n;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Lo2/p;

    invoke-static {p2, p1}, Lj1/a;->g(Lo2/j;Ljava/lang/Class;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LJ2/c;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, LJ2/c;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string p2, ""

    invoke-static {p2}, Ln2/e;->k(Ljava/lang/String;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lq2/n;->b:Lm2/f;

    invoke-virtual {p2, p1}, Lm2/f;->b(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    invoke-interface {p1}, Lm2/e;->a()Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p2, Lo2/j;->i:Lo2/i;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LJ2/c;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, LJ2/c;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string p2, ""

    invoke-static {p2}, Ln2/e;->k(Ljava/lang/String;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lq2/n;->b:Lm2/f;

    invoke-virtual {p2, p1}, Lm2/f;->b(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    invoke-interface {p1}, Lm2/e;->a()Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p1, p0, Lq2/n;->b:Lm2/f;

    invoke-virtual {p2}, Lo2/j;->R()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm2/f;->b(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    invoke-interface {p1}, Lm2/e;->a()Z

    move-result p1

    return p1

    :pswitch_2
    iget-object p1, p0, Lq2/n;->b:Lm2/f;

    invoke-virtual {p2}, Lo2/j;->S()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm2/f;->b(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    invoke-interface {p1}, Lm2/e;->a()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lq2/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/n;->b:Lm2/f;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":matchesWholeText(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lq2/n;->b:Lm2/f;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":matchesWholeOwnText(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lq2/n;->b:Lm2/f;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":matchesOwn(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lq2/n;->b:Lm2/f;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":matches(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
