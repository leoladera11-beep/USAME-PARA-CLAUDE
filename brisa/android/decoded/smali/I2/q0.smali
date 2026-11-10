.class public final LI2/q0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "sekunde"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "dakika"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "saa"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "siku"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "wiki"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "Mwezi"

    const-string v1, "miezi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "Miaka"

    const-string v1, "Mwaka"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/q0;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/q0;->j:LI2/q0;

    return-void
.end method
