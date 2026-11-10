.class public final LI2/w;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/w;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "segundo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "minuto"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "oras"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "araw"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "linggo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "buwan"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "taon"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/w;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/w;->j:LI2/w;

    return-void
.end method
