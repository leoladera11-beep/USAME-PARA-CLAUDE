.class public final enum Lp2/b0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataLessthanSign"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 3

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    const/16 v2, 0x3c

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lp2/T;->e(C)V

    invoke-virtual {p2}, Lp2/a;->I()V

    sget-object p2, Lp2/l1;->j:Lp2/h1;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Lp2/T;->e(C)V

    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_1
    sget-object p2, Lp2/l1;->v:Lp2/c0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    const-string p2, "<!"

    invoke-virtual {p1, p2}, Lp2/T;->f(Ljava/lang/String;)V

    sget-object p2, Lp2/l1;->x:Lp2/f0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
