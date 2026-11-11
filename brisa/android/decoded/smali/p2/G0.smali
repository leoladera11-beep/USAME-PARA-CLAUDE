.class public final enum Lp2/G0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "MarkupProcessingOpen"

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 1

    invoke-virtual {p2}, Lp2/a;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lp2/T;->o:Lp2/P;

    invoke-virtual {p2}, Lp2/P;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p2, Lp2/P;->m:Z

    iput-object p2, p1, Lp2/T;->k:Lp2/O;

    sget-object p2, Lp2/l1;->n:Lp2/U;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lp2/T;->l(Lp2/l1;)V

    iget-object p2, p1, Lp2/T;->n:Lp2/J;

    invoke-virtual {p2}, Lp2/J;->f()V

    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Lp2/J;->g(C)V

    sget-object p2, Lp2/l1;->U:Lp2/E0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
