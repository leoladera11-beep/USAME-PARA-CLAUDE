.class public final LI2/x0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "soniya"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "daqiqa"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "soat"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "kun"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "hafta"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "oy"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "yil"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/x0;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/x0;->j:LI2/x0;

    return-void
.end method
