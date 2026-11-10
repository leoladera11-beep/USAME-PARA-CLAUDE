.class public final LI2/h0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "secunde"

    const-string v1, "secund\u0103"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minut"

    const-string v1, "minute"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "ore"

    const-string v1, "or\u0103"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "zi"

    const-string v1, "zile"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "s\u0103pt\u0103m\u00e2ni"

    const-string v1, "s\u0103pt\u0103m\u00e2n\u0103"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "luni"

    const-string v1, "lun\u0103"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "an"

    const-string v1, "ani"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/h0;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/h0;->j:LI2/h0;

    return-void
.end method
