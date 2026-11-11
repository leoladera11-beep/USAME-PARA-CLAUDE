.class public final enum Lp2/R0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterDoctypeName"

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 4

    invoke-virtual {p2}, Lp2/a;->y()Z

    move-result v0

    sget-object v1, Lp2/l1;->e:Lp2/e0;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->m:Lp2/K;

    iput-boolean v2, p2, Lp2/K;->i:Z

    invoke-virtual {p1}, Lp2/T;->i()V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lp2/a;->C([C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lp2/a;->c()V

    return-void

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lp2/a;->B(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lp2/T;->i()V

    invoke-virtual {p1, v1}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_2
    iget v0, p1, Lp2/T;->h:I

    iget-object v1, p1, Lp2/T;->m:Lp2/K;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Lp2/a;->B(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lp2/l1;->t0:Lp2/f1;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_3
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lp2/a;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, v1, Lp2/K;->e:Ljava/lang/String;

    sget-object p2, Lp2/l1;->h0:Lp2/S0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_4
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lp2/a;->A(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v0, v1, Lp2/K;->e:Ljava/lang/String;

    sget-object p2, Lp2/l1;->n0:Lp2/Z0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iput-boolean v2, v1, Lp2/K;->i:Z

    sget-object p2, Lp2/l1;->s0:Lp2/e1;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
