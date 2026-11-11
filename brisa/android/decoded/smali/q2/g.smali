.class public final Lq2/g;
.super Lq2/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lq2/g;->a:I

    iput-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lq2/g;->a:I

    packed-switch p2, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq2/g;->b:Ljava/lang/String;

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    .line 7
    invoke-static {p2, p1, v0}, Ln2/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 8
    invoke-static {p2}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq2/g;->b:Ljava/lang/String;

    return-void

    .line 10
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    .line 12
    invoke-static {p2, p1, v0}, Ln2/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 13
    invoke-static {p2}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq2/g;->b:Ljava/lang/String;

    return-void

    .line 15
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq2/g;->b:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lq2/g;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Lq2/o;->a()I

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/16 v0, 0xa

    return v0

    :pswitch_4
    const/16 v0, 0xa

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lo2/j;Lo2/j;)Z
    .locals 7

    iget p1, p0, Lq2/g;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p2, Lo2/j;->h:Lp2/E;

    iget-object p1, p1, Lp2/E;->g:Ljava/lang/String;

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p2, Lo2/j;->h:Lp2/E;

    iget-object p1, p1, Lp2/E;->g:Ljava/lang/String;

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p1, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lo2/p;->o(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object p1, p2, Lo2/j;->j:Lo2/b;

    if-eqz p1, :cond_0

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lo2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3
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

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_4
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

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_5
    invoke-virtual {p2}, Lo2/j;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_6
    invoke-virtual {p2}, Lo2/j;->R()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, LI0/E;

    const/16 v1, 0x1b

    invoke-direct {v0, p1, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p2}, Lq2/t;->s(Lo2/p;)V

    invoke-static {p1}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :pswitch_8
    iget-object p1, p2, Lo2/j;->j:Lo2/b;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "class"

    invoke-virtual {p1, v0}, Lo2/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v4, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz p1, :cond_8

    if-ge p1, v6, :cond_2

    goto :goto_3

    :cond_2
    if-ne p1, v6, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    goto :goto_3

    :cond_3
    move v0, p2

    :cond_4
    if-ge v0, p1, :cond_8

    move v3, v0

    :goto_1
    if-ge v3, p1, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ln2/e;->i(I)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-ne v3, p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_2
    if-ge v0, p1, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ln2/e;->i(I)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    sub-int v2, v0, v3

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p2, 0x1

    :cond_8
    :goto_3
    return p2

    :pswitch_9
    invoke-virtual {p2}, Lo2/j;->e()Lo2/b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/ArrayList;

    iget v0, p1, Lo2/b;->e:I

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget v2, p1, Lo2/b;->e:I

    if-ge v1, v2, :cond_a

    iget-object v2, p1, Lo2/b;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lo2/b;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    new-instance v3, Lo2/a;

    iget-object v4, p1, Lo2/b;->g:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v2, v4, p1}, Lo2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lo2/b;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo2/a;

    iget-object p2, p2, Lo2/a;->e:Ljava/lang/String;

    invoke-static {p2}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 v0, 0x1

    :cond_c
    return v0

    :pswitch_a
    iget-object p1, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lo2/p;->m(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lq2/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/g;->b:Ljava/lang/String;

    const-string v1, "|*"

    invoke-static {v0, v1}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lq2/g;->b:Ljava/lang/String;

    const-string v1, "*|"

    invoke-static {v1, v0}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lq2/g;->b:Ljava/lang/String;

    const-string v1, "#"

    invoke-static {v1, v0}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, ":containsWholeText("

    const-string v1, ")"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-string v0, ":containsWholeOwnText("

    const-string v1, ")"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-string v0, ":contains("

    const-string v1, ")"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string v0, ":containsOwn("

    const-string v1, ")"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string v0, ":containsData("

    const-string v1, ")"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lq2/g;->b:Ljava/lang/String;

    const-string v1, "."

    invoke-static {v1, v0}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    const-string v0, "[^"

    const-string v1, "]"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-string v0, "["

    const-string v1, "]"

    iget-object v2, p0, Lq2/g;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
