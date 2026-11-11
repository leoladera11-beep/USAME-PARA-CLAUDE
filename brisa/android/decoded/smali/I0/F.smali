.class public final LI0/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/List;

.field public final c:[Lb0/G;

.field public final d:LJ/c;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    iput p1, p0, LI0/F;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/F;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lb0/G;

    iput-object p1, p0, LI0/F;->c:[Lb0/G;

    new-instance p1, LJ/c;

    new-instance p2, LI0/E;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, LJ/c;-><init>(LK/z;)V

    iput-object p1, p0, LI0/F;->d:LJ/c;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/F;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lb0/G;

    iput-object p1, p0, LI0/F;->c:[Lb0/G;

    new-instance p1, LJ/c;

    new-instance p2, LI0/E;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LI0/E;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, LJ/c;-><init>(LK/z;)V

    iput-object p1, p0, LI0/F;->d:LJ/c;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, LJ/c;->f(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(JLJ/D;)V
    .locals 4

    invoke-virtual {p3}, LJ/D;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, LJ/D;->m()I

    move-result v0

    invoke-virtual {p3}, LJ/D;->m()I

    move-result v1

    invoke-virtual {p3}, LJ/D;->A()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, LI0/F;->d:LJ/c;

    invoke-virtual {v0, p1, p2, p3}, LJ/c;->a(JLJ/D;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lb0/p;LI0/J;)V
    .locals 8

    iget v0, p0, LI0/F;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LI0/F;->c:[Lb0/G;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget v3, p2, LI0/J;->d:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lb0/p;->v(II)Lb0/G;

    move-result-object v3

    iget-object v4, p0, LI0/F;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/x;

    iget-object v5, v4, LG/x;->p:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const-string v7, "Invalid closed caption MIME type provided: %s"

    invoke-static {v6, v7, v5}, LF1/i;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v6, LG/w;

    invoke-direct {v6}, LG/w;-><init>()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v7, p2, LI0/J;->e:Ljava/lang/String;

    iput-object v7, v6, LG/w;->a:Ljava/lang/String;

    const-string v7, "video/mp2t"

    invoke-static {v7}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, LG/w;->n:Ljava/lang/String;

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, LG/w;->o:Ljava/lang/String;

    iget v5, v4, LG/x;->e:I

    iput v5, v6, LG/w;->e:I

    iget-object v5, v4, LG/x;->d:Ljava/lang/String;

    iput-object v5, v6, LG/w;->d:Ljava/lang/String;

    iget v5, v4, LG/x;->P:I

    iput v5, v6, LG/w;->O:I

    iget-object v4, v4, LG/x;->s:Ljava/util/List;

    iput-object v4, v6, LG/w;->r:Ljava/util/List;

    new-instance v4, LG/x;

    invoke-direct {v4, v6}, LG/x;-><init>(LG/w;)V

    invoke-interface {v3, v4}, Lb0/G;->b(LG/x;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, LI0/F;->c:[Lb0/G;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    invoke-virtual {p2}, LI0/J;->a()V

    invoke-virtual {p2}, LI0/J;->b()V

    iget v3, p2, LI0/J;->d:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lb0/p;->v(II)Lb0/G;

    move-result-object v3

    iget-object v4, p0, LI0/F;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/x;

    iget-object v5, v4, LG/x;->p:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move v6, v0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v6, 0x1

    :goto_5
    const-string v7, "Invalid closed caption MIME type provided: %s"

    invoke-static {v6, v7, v5}, LF1/i;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v4, LG/x;->a:Ljava/lang/String;

    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {p2}, LI0/J;->b()V

    iget-object v6, p2, LI0/J;->e:Ljava/lang/String;

    :goto_6
    new-instance v7, LG/w;

    invoke-direct {v7}, LG/w;-><init>()V

    iput-object v6, v7, LG/w;->a:Ljava/lang/String;

    const-string v6, "video/mp2t"

    invoke-static {v6}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, LG/w;->n:Ljava/lang/String;

    invoke-static {v5}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, LG/w;->o:Ljava/lang/String;

    iget v5, v4, LG/x;->e:I

    iput v5, v7, LG/w;->e:I

    iget-object v5, v4, LG/x;->d:Ljava/lang/String;

    iput-object v5, v7, LG/w;->d:Ljava/lang/String;

    iget v5, v4, LG/x;->P:I

    iput v5, v7, LG/w;->O:I

    iget-object v4, v4, LG/x;->s:Ljava/util/List;

    iput-object v4, v7, LG/w;->r:Ljava/util/List;

    new-instance v4, LG/x;

    invoke-direct {v4, v7}, LG/x;-><init>(LG/w;)V

    invoke-interface {v3, v4}, Lb0/G;->b(LG/x;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
