.class public final LI2/k;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekund"

    const-string v1, "sekunder"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minut"

    const-string v1, "minutter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "time"

    const-string v1, "timer"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dag"

    const-string v1, "dage"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "uge"

    const-string v1, "uger"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "m\u00e5ned"

    const-string v1, "m\u00e5neder"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "\u00e5r"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/k;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/k;->j:LI2/k;

    return-void
.end method
