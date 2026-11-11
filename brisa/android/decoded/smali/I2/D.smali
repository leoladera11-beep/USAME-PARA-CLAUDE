.class public final LI2/D;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/D;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "m\u00e1sodperce"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "perce"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u00f3r\u00e1ja"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "napja"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "hete"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "h\u00f3napja"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "\u00e9ve"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/D;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/D;->j:LI2/D;

    return-void
.end method
