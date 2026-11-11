.class public final enum Lp2/O0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Doctype"

    const/16 v1, 0x33

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    invoke-virtual {p2}, Lp2/a;->r()C

    move-result p2

    const/16 v0, 0x9

    sget-object v1, Lp2/l1;->e0:Lp2/P0;

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->k(Lp2/l1;)V

    :cond_1
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->m:Lp2/K;

    invoke-virtual {p2}, Lp2/K;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lp2/K;->i:Z

    invoke-virtual {p1}, Lp2/T;->i()V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_2
    invoke-virtual {p1, v1}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
