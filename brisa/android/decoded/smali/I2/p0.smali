.class public final LI2/p0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekund"

    const-string v1, "sekunder"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minut"

    const-string v1, "minuter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "timmar"

    const-string v1, "timme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dag"

    const-string v1, "dagar"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "vecka"

    const-string v1, "veckor"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "m\u00e5nad"

    const-string v1, "m\u00e5nader"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "\u00e5r"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/p0;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/p0;->j:LI2/p0;

    return-void
.end method
