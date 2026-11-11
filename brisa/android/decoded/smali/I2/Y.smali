.class public final LI2/Y;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "saat"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "minit"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "jam"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "hari"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "minggu"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "bulan"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "tahun"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/Y;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/Y;->j:LI2/Y;

    return-void
.end method
