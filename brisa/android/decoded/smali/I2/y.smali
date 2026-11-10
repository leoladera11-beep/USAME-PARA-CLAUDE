.class public final LI2/y;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/y;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "seconde"

    const-string v1, "secondes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minute"

    const-string v1, "minutes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "heures"

    const-string v1, "heure"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "jour"

    const-string v1, "jours"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "semaine"

    const-string v1, "semaines"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "mois"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "an"

    const-string v1, "ans"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/y;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/y;->j:LI2/y;

    return-void
.end method
