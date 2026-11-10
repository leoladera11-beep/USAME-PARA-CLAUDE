.class public final enum Lp2/v0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AttributeName"

    const/16 v1, 0x22

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

    sget-object v5, Lp2/l1;->v0:[C

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, v3}, Lp2/a;->t(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const v3, 0xfffd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lp2/O;->h:LW0/c;

    invoke-virtual {v1, v0}, LW0/c;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/a;->F()I

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    const/16 v1, 0x9

    sget-object v2, Lp2/l1;->N:Lp2/w0;

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const v1, 0xffff

    sget-object v3, Lp2/l1;->e:Lp2/e0;

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v1, p1, Lp2/T;->h:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p1, Lp2/T;->k:Lp2/O;

    instance-of v1, v1, Lp2/P;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    :goto_1
    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    iget-object p1, p1, Lp2/O;->h:LW0/c;

    invoke-virtual {p1, v0}, LW0/c;->c(C)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lp2/T;->j()V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :pswitch_2
    sget-object p2, Lp2/l1;->O:Lp2/x0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    invoke-virtual {p1, v3}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_3
    sget-object p2, Lp2/l1;->T:Lp2/D0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_4
    :pswitch_3
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    iget-object p1, p1, Lp2/O;->h:LW0/c;

    invoke-virtual {p1, v0}, LW0/c;->c(C)V

    return-void

    :cond_5
    invoke-virtual {p1, v2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
