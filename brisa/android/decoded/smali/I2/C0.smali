.class public final LI2/C0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/C0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "amasekhondi"

    const-string v1, "isekhondi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "amaminithi"

    const-string v1, "iminithi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "amahora"

    const-string v1, "ihora"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "izinsuku"

    const-string v1, "usuku"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "amaviki"

    const-string v1, "iviki"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "inyanga"

    const-string v1, "izinyanga"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "iminyaka"

    const-string v1, "unyaka"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/C0;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/C0;->j:LI2/C0;

    return-void
.end method
