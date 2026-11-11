.class public final enum Lp2/k0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataEscapedLessthanSign"

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 3

    invoke-virtual {p2}, Lp2/a;->D()Z

    move-result v0

    const/16 v1, 0x3c

    if-eqz v0, :cond_0

    iget-object v0, p1, Lp2/T;->g:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    iget-object v0, p1, Lp2/T;->g:LW0/c;

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result v2

    invoke-virtual {v0, v2}, LW0/c;->c(C)V

    invoke-virtual {p1, v1}, Lp2/T;->e(C)V

    invoke-virtual {p2}, Lp2/a;->x()C

    move-result p2

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->F:Lp2/n0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lp2/a;->B(C)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lp2/l1;->D:Lp2/l0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lp2/T;->e(C)V

    sget-object p2, Lp2/l1;->z:Lp2/h0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
