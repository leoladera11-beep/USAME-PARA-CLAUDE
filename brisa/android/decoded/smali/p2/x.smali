.class public final enum Lp2/x;
.super Lp2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Text"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(Lp2/Q;Lp2/c;)Z
    .locals 2

    iget v0, p1, Lp2/Q;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Lp2/I;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lp2/c;->t(Lp2/I;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lp2/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lp2/c;->m(Lp2/A;)V

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iget-object v0, p2, Lp2/c;->n:Lp2/A;

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    sget-object v1, Lp2/A;->k:Lp2/x;

    if-ne v0, v1, :cond_1

    sget-object v0, Lp2/A;->j:Lp2/w;

    iput-object v0, p2, Lp2/c;->m:Lp2/A;

    :cond_1
    invoke-virtual {p2, p1}, Lp2/c;->H(Lp2/Q;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lp2/Q;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lp2/c;->E()Lo2/j;

    iget-object p1, p2, Lp2/c;->n:Lp2/A;

    iput-object p1, p2, Lp2/c;->m:Lp2/A;

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
