.class public final LI2/u0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "saniye"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "dakika"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "saat"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "g\u00fcn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "hafta"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "ay"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "y\u0131l"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/u0;

    const-string v2, " "

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/u0;->j:LI2/u0;

    return-void
.end method
