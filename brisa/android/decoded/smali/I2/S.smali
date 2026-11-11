.class public final LI2/S;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/S;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "sekund\u0119"

    const-string v1, "sekund\u017ei\u0173"

    const-string v2, "sekundes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "minut\u0119"

    const-string v1, "minu\u010di\u0173"

    const-string v2, "minutes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "valand\u0105"

    const-string v1, "valand\u0173"

    const-string v2, "valandas"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "dienas"

    const-string v1, "dien\u0105"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "savaites"

    const-string v1, "savait\u0119"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "m\u0117nesi\u0173"

    const-string v1, "m\u0117nes\u012f"

    const-string v2, "m\u0117nesius"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "metus"

    const-string v1, "met\u0173"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    new-instance v3, LI2/S;

    const-string v4, " "

    invoke-direct/range {v3 .. v11}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, LI2/S;->j:LI2/S;

    return-void
.end method
