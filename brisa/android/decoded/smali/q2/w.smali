.class public final Lq2/w;
.super Lq2/B;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lq2/o;I)V
    .locals 0

    iput p2, p0, Lq2/w;->d:I

    invoke-direct {p0, p1}, Lq2/B;-><init>(Lq2/o;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lq2/w;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_0
    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_1
    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lo2/j;Lo2/p;)Z
    .locals 1

    iget v0, p0, Lq2/w;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lq2/B;->h(Lo2/j;Lo2/p;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_0
    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0, p1, p2}, Lq2/o;->d(Lo2/j;Lo2/p;)Z

    move-result p1

    return p1

    :pswitch_1
    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lo2/p;->x()Lo2/j;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, p2}, Lq2/B;->h(Lo2/j;Lo2/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lo2/p;->e:Lo2/j;

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lq2/w;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":not(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":is(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
