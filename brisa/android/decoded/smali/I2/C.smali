.class public final LI2/C;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/C;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "sekundi"

    const-string v1, "sekundu"

    const-string v2, "sekunde"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "minute"

    const-string v1, "minutu"

    const-string v2, "minuta"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "sata"

    const-string v1, "sati"

    const-string v2, "sat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "dan"

    const-string v1, "dana"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "tjedan"

    const-string v1, "tjedna"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "mjeseca"

    const-string v1, "mjeseci"

    const-string v2, "mjesec"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "godine"

    const-string v1, "godinu"

    const-string v2, "godina"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v11

    new-instance v3, LI2/C;

    const-string v4, " "

    invoke-direct/range {v3 .. v11}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, LI2/C;->j:LI2/C;

    return-void
.end method
