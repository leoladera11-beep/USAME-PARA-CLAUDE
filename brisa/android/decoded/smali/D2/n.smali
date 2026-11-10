.class public final LD2/n;
.super LC/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(LC1/d;I)V
    .locals 0

    iput p2, p0, LD2/n;->b:I

    invoke-direct {p0, p1}, LC/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final W0()LC1/d;
    .locals 3

    iget v0, p0, LD2/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, LC1/d;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, LC1/d;

    const-string v1, "rendererContext"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "commandContext"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "onTap"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "showDialogCommand"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "panelLoadingStrategy"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "inlineContent"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "dialogViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "customContent"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "listViewModel"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "listItems"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    invoke-virtual {v0}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LC1/b;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, LC1/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC1/d;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p()LC1/d;
    .locals 2

    iget v0, p0, LD2/n;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, LC1/d;

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, LC1/d;

    const-string v1, "avatars"

    invoke-virtual {v0, v1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LC1/c;->b(I)LC1/d;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
