.class public final synthetic LC2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, LC2/e;->a:I

    iput-object p1, p0, LC2/e;->b:Ljava/util/ArrayList;

    iput-object p2, p0, LC2/e;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, LC2/e;->a:I

    check-cast p1, LC1/d;

    packed-switch v0, :pswitch_data_0

    const-string v0, "onTap"

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object v0

    const-string v1, "startIndex"

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v1}, LC1/d;->c(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "length"

    invoke-virtual {p1, v2, v3}, LC1/d;->c(ILjava/lang/String;)I

    move-result v3

    if-ltz v1, :cond_8

    const/4 v4, 0x1

    if-lt v3, v4, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v0}, LC2/m;->m(LC1/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, LC2/m;->q(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "www.youtube-nocookie.com"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "youtu.be"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    :goto_1
    if-eqz v5, :cond_5

    :cond_4
    move v2, v4

    :catch_0
    :cond_5
    invoke-static {v0}, Lo2/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "<a href=\""

    const-string v5, "\">"

    invoke-static {v4, v0, v5}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "onTapOptions"

    invoke-virtual {p1, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v4, "accessibilityInfo"

    invoke-virtual {p1, v4}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v4, "accessibilityLabel"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, " Channel Link"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "YouTube: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, LC2/f;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, LC2/f;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    :goto_2
    new-instance v2, LC1/b;

    const/4 p1, 0x1

    invoke-direct {v2, p1}, LC1/b;-><init>(I)V

    :goto_3
    new-instance p1, LC2/g;

    const-string v4, "</a>"

    invoke-direct {p1, v1, v0, v4, v2}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    iget-object v5, p0, LC2/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LC2/g;

    add-int/2addr v1, v3

    invoke-direct {p1, v1, v0, v4, v2}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    iget-object v0, p0, LC2/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    return-void

    :pswitch_0
    const-string v0, "startIndex"

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, LC1/d;->c(ILjava/lang/String;)I

    move-result v0

    const-string v1, "length"

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, LC1/d;->c(ILjava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_c

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr v1, v0

    const-string v2, "strikethrough"

    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, LC2/e;->b:Ljava/util/ArrayList;

    iget-object v4, p0, LC2/e;->c:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    new-instance v2, LC2/g;

    const-string v6, "<s>"

    const-string v7, "</s>"

    invoke-direct {v2, v0, v6, v7, v5}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, LC2/g;

    invoke-direct {v2, v1, v6, v7, v5}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v2, "italic"

    invoke-virtual {p1, v2}, LC1/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, LC2/g;

    const-string v6, "<i>"

    const-string v7, "</i>"

    invoke-direct {v2, v0, v6, v7, v5}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, LC2/g;

    invoke-direct {v2, v1, v6, v7, v5}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v2, "weightLabel"

    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "FONT_WEIGHT_NORMAL"

    invoke-virtual {p1, v2, v5}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, LC2/g;

    const-string v2, "<b>"

    const-string v6, "</b>"

    invoke-direct {p1, v0, v2, v6, v5}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LC2/g;

    invoke-direct {p1, v1, v2, v6, v5}, LC2/g;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
