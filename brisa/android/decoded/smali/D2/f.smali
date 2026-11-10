.class public final synthetic LD2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LD2/f;->a:I

    iput-object p1, p0, LD2/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, LD2/f;->a:I

    iget-object v1, p0, LD2/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, LC2/c;

    check-cast p1, Ljava/util/Locale;

    iput-object p1, v1, LC2/c;->p:Ljava/util/Locale;

    return-void

    :pswitch_0
    check-cast v1, Ljava/util/ArrayList;

    check-cast p1, LG2/f;

    sget v0, LJ2/g;->a:I

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG2/f;

    invoke-virtual {p1, v3}, LG2/f;->a(LG2/f;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :pswitch_1
    check-cast v1, Lr2/f;

    check-cast p1, Lr2/c;

    :try_start_0
    invoke-virtual {v1, p1}, Lr2/f;->r(Lr2/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/b;

    iget-object v0, v1, LR0/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lu2/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lu2/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {v1, p1}, LR0/v;->a(Ljava/lang/Exception;)V

    :catch_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
