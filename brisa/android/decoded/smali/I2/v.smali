.class public final LI2/v;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/v;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekunti"

    const-string v1, "sekuntia"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minuutti"

    const-string v1, "minuuttia"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "tunti"

    const-string v1, "tuntia"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "p\u00e4iv\u00e4"

    const-string v1, "p\u00e4iv\u00e4\u00e4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "viikko"

    const-string v1, "viikkoa"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "kuukausi"

    const-string v1, "kuukautta"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "vuosi"

    const-string v1, "vuotta"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/v;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/v;->j:LI2/v;

    return-void
.end method
