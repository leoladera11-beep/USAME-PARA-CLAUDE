.class public final enum Lp2/L0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CharacterReferenceInRcdata"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lp2/T;->c(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-nez p2, :cond_0

    const/16 p2, 0x26

    invoke-virtual {p1, p2}, Lp2/T;->e(C)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p2

    invoke-direct {v1, p2, v0, v2}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p1, v1}, Lp2/T;->f(Ljava/lang/String;)V

    :goto_0
    sget-object p2, Lp2/l1;->g:Lp2/A0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
