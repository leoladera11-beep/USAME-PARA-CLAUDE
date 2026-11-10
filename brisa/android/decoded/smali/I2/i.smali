.class public final LI2/i;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "segon"

    const-string v1, "segons"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minut"

    const-string v1, "minuts"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "hora"

    const-string v1, "hores"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "dia"

    const-string v1, "dies"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "setmana"

    const-string v1, "setmanes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "mes"

    const-string v1, "mesos"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "any"

    const-string v1, "anys"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/i;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/i;->j:LI2/i;

    return-void
.end method
