.class public final LI2/b0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "seconde"

    const-string v1, "seconden"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minuten"

    const-string v1, "minuut"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "uur"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dag"

    const-string v1, "dagen"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "week"

    const-string v1, "weken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "maand"

    const-string v1, "maanden"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "jaar"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/b0;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/b0;->j:LI2/b0;

    return-void
.end method
