.class public final LI2/H;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/H;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "secondi"

    const-string v1, "secondo"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minuti"

    const-string v1, "minuto"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "ora"

    const-string v1, "ore"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "giorni"

    const-string v1, "giorno"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "settimana"

    const-string v1, "settimane"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "mese"

    const-string v1, "mesi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "anni"

    const-string v1, "anno"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/H;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/H;->j:LI2/H;

    return-void
.end method
