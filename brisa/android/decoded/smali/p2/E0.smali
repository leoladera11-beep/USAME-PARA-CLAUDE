.class public final enum Lp2/E0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BogusComment"

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 3

    iget-object v0, p1, Lp2/T;->n:Lp2/J;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lp2/a;->u(C)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lp2/J;->d:LW0/c;

    invoke-virtual {v0, v2}, LW0/c;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result v0

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lp2/a;->r()C

    invoke-virtual {p1}, Lp2/T;->h()V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
