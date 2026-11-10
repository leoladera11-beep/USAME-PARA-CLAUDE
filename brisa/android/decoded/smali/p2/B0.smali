.class public final enum Lp2/B0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AttributeValue_unquoted"

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 6

    invoke-virtual {p2}, Lp2/a;->F()I

    invoke-virtual {p2}, Lp2/a;->e()V

    iget v0, p2, Lp2/a;->h:I

    iget v1, p2, Lp2/a;->i:I

    iget-object v2, p2, Lp2/a;->g:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    sget-object v5, Lp2/l1;->w0:[C

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, v3}, Lp2/a;->t(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    iget-object v1, v1, Lp2/O;->i:LW0/c;

    invoke-virtual {v1, v0}, LW0/c;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lp2/a;->F()I

    move-result v0

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x60

    if-eq v1, v2, :cond_5

    const v2, 0xffff

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    packed-switch v1, :pswitch_data_0

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lp2/O;->g(CII)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lp2/T;->c(Ljava/lang/Character;Z)[I

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lp2/O;->h([III)V

    return-void

    :cond_3
    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v2, v0, p2}, Lp2/O;->g(CII)V

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    :pswitch_1
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lp2/O;->g(CII)V

    return-void

    :cond_6
    sget-object p2, Lp2/l1;->L:Lp2/u0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_7
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    const v1, 0xfffd

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lp2/O;->g(CII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
