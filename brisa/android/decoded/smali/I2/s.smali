.class public final LI2/s;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/s;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "sekund"

    const-string v1, "sekundit"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minut"

    const-string v1, "minutit"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "tund"

    const-string v1, "tundi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "p\u00e4ev"

    const-string v1, "p\u00e4eva"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "n\u00e4dal"

    const-string v1, "n\u00e4dalat"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "kuu"

    const-string v1, "kuud"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "aasta"

    const-string v1, "aastat"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/s;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/s;->j:LI2/s;

    return-void
.end method
