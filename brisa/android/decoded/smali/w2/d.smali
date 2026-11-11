.class public final synthetic Lw2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LW0/c;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LW0/c;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lw2/d;->a:I

    iput-object p1, p0, Lw2/d;->b:LW0/c;

    iput-object p2, p0, Lw2/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lw2/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw2/d;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lw2/d;->b:LW0/c;

    invoke-virtual {v1, v0, p1}, LW0/c;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lw2/d;->b:LW0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lw2/d;

    const/4 v2, 0x1

    iget-object v3, p0, Lw2/d;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lw2/d;-><init>(LW0/c;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
