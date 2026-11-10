.class public final LI2/j;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekundami"

    const-string v1, "sekundou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minutami"

    const-string v1, "minutou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "hodinami"

    const-string v1, "hodinou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dny"

    const-string v1, "v\u010dera"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "t\u00fddnem"

    const-string v1, "t\u00fddny"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "m\u011bs\u00edcem"

    const-string v1, "m\u011bs\u00edci"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "roky"

    const-string v1, "lety"

    const-string v2, "rokem"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/j;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/j;->j:LI2/j;

    return-void
.end method
