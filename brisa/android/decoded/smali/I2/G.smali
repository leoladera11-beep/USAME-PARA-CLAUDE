.class public final LI2/G;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/G;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "second"

    const-string v1, "seconds"

    const-string v2, "sek\u00fandu"

    const-string v3, "sek\u00fandum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "minute"

    const-string v1, "minutes"

    const-string v2, "m\u00edn\u00fatu"

    const-string v3, "m\u00edn\u00fatum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "hour"

    const-string v1, "hours"

    const-string v2, "klukkustund"

    const-string v3, "klukkustundum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "day"

    const-string v1, "days"

    const-string v2, "degi"

    const-string v3, "d\u00f6gum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "week"

    const-string v1, "weeks"

    const-string v2, "viku"

    const-string v3, "vikum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "m\u00e1nu\u00f0i"

    const-string v1, "m\u00e1nu\u00f0um"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "\u00e1ri"

    const-string v1, "\u00e1rum"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    new-instance v4, LI2/G;

    const-string v5, " "

    invoke-direct/range {v4 .. v12}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v4, LI2/G;->j:LI2/G;

    return-void
.end method
