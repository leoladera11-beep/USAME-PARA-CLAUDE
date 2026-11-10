.class public final LI2/m0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekonda"

    const-string v1, "sekond\u00eb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minuta"

    const-string v1, "minut\u00eb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "or\u00eb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dit\u00eb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "jav\u00eb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "muaj"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "vit"

    const-string v1, "vjet"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/m0;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/m0;->j:LI2/m0;

    return-void
.end method
