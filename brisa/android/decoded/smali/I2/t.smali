.class public final LI2/t;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/t;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "segundo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "minutu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "ordu"

    const-string v1, "ordubete"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "egun"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "aste"

    const-string v1, "astebete"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "hilabete"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "urte"

    const-string v1, "urtebete"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/t;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/t;->j:LI2/t;

    return-void
.end method
