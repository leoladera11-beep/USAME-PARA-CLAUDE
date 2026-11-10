.class public final enum Lp2/z;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTableText"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 7

    iget v0, p1, Lp2/Q;->a:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lp2/I;

    new-instance v0, Lp2/I;

    invoke-direct {v0, p1}, Lp2/I;-><init>(Lp2/I;)V

    iget-object p1, p2, Lp2/c;->u:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_0
    iget-object v0, p2, Lp2/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p2, Lp2/c;->f:Lp2/Q;

    iget-object v1, p2, Lp2/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/I;

    iput-object v3, p2, Lp2/c;->f:Lp2/Q;

    invoke-static {v3}, Lp2/A;->a(Lp2/Q;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2}, Lp2/c;->h()Lo2/j;

    move-result-object v4

    iget-object v4, v4, Lo2/j;->h:Lp2/E;

    iget-object v4, v4, Lp2/E;->g:Ljava/lang/String;

    sget-object v6, Lp2/b;->I:[Ljava/lang/String;

    invoke-static {v4, v6}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    sget-object v6, Lp2/A;->j:Lp2/w;

    if-eqz v4, :cond_1

    iput-boolean v2, p2, Lp2/c;->x:Z

    invoke-virtual {v6, v3, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    iput-boolean v5, p2, Lp2/c;->x:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v3, p2}, Lp2/w;->d(Lp2/Q;Lp2/c;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3, v5}, Lp2/c;->t(Lp2/I;Z)V

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lp2/c;->f:Lp2/Q;

    iget-object v0, p2, Lp2/c;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p2, Lp2/c;->n:Lp2/A;

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1
.end method
