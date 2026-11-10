.class public final LI2/l0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "sekundami"

    const-string v1, "sekundo"

    const-string v2, "sekundama"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "minutami"

    const-string v1, "minuto"

    const-string v2, "minutama"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "urami"

    const-string v1, "uro"

    const-string v2, "urama"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "dnevi"

    const-string v1, "dnevoma"

    const-string v2, "dnem"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "tednom"

    const-string v1, "tednoma"

    const-string v2, "tedni"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "mesecema"

    const-string v1, "meseci"

    const-string v2, "mesecem"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "letom"

    const-string v1, "letoma"

    const-string v2, "leti"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v11

    new-instance v3, LI2/l0;

    const-string v4, " "

    invoke-direct/range {v3 .. v11}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, LI2/l0;->j:LI2/l0;

    return-void
.end method
