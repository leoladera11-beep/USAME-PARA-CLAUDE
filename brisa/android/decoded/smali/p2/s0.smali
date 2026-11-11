.class public final enum Lp2/s0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataDoubleEscapedLessthanSign"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lp2/a;->B(C)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lp2/T;->e(C)V

    iget-object p2, p1, Lp2/T;->g:LW0/c;

    invoke-virtual {p2}, LW0/c;->y()V

    sget-object p2, Lp2/l1;->K:Lp2/t0;

    invoke-virtual {p1, p2}, Lp2/T;->a(Lp2/l1;)V

    return-void

    :cond_0
    sget-object p2, Lp2/l1;->G:Lp2/o0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
