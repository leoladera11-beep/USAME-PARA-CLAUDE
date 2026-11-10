.class public final LI2/e0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "sekundy"

    const-string v1, "sekund\u0119"

    const-string v2, "sekund"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "minuty"

    const-string v1, "minut\u0119"

    const-string v2, "minut"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "godziny"

    const-string v1, "godzin\u0119"

    const-string v2, "godzin"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "dni"

    const-string v1, "dzie\u0144"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "tydzie\u0144"

    const-string v1, "tygodnie"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "miesi\u0105ce"

    const-string v1, "miesi\u0119cy"

    const-string v2, "miesi\u0105c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "lata"

    const-string v1, "rok"

    const-string v2, "lat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v11

    new-instance v3, LI2/e0;

    const-string v4, " "

    invoke-direct/range {v3 .. v11}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, LI2/e0;->j:LI2/e0;

    return-void
.end method
