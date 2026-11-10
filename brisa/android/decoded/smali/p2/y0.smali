.class public final enum Lp2/y0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AttributeValue_doubleQuoted"

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 5

    invoke-virtual {p2}, Lp2/a;->F()I

    const/4 v0, 0x0

    const/16 v1, 0x26

    const/16 v2, 0x22

    invoke-virtual {p2, v0, v1, v2}, Lp2/a;->v(CCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    iget-object v3, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    iget-object v3, v3, Lp2/O;->i:LW0/c;

    invoke-virtual {v3, v0}, LW0/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lp2/T;->k:Lp2/O;

    iput-boolean v4, v0, Lp2/O;->j:Z

    :goto_0
    invoke-virtual {p2}, Lp2/a;->F()I

    move-result v0

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_2

    const v1, 0xffff

    if-eq v3, v1, :cond_1

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v3, v0, p2}, Lp2/O;->g(CII)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Lp2/T;->c(Ljava/lang/Character;Z)[I

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v2, v0, p2}, Lp2/O;->h([III)V

    return-void

    :cond_3
    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lp2/O;->g(CII)V

    return-void

    :cond_4
    sget-object p2, Lp2/l1;->S:Lp2/C0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p1, p1, Lp2/T;->k:Lp2/O;

    const v1, 0xfffd

    invoke-virtual {p2}, Lp2/a;->F()I

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lp2/O;->g(CII)V

    return-void
.end method
