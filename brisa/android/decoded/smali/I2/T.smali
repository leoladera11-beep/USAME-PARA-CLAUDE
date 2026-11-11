.class public final LI2/T;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/T;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekundes"

    const-string v1, "sekund\u0113m"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "min\u016btes"

    const-string v1, "min\u016bt\u0113m"

    filled-new-array {v0, v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "stundas"

    const-string v1, "stund\u0101m"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dienas"

    const-string v1, "dien\u0101m"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "ned\u0113\u013cas"

    const-string v1, "ned\u0113\u013c\u0101m"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "m\u0113ne\u0161a"

    const-string v1, "m\u0113ne\u0161iem"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "gada"

    const-string v1, "gadiem"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/T;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/T;->j:LI2/T;

    return-void
.end method
