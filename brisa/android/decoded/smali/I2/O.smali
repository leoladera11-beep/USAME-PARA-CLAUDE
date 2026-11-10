.class public final LI2/O;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/O;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\ucd08"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "\ubd84"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "\uc2dc\uac04"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "\uc77c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "\uc8fc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "\uac1c\uc6d4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "\ub144"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/O;

    const-string v2, ""

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/O;->j:LI2/O;

    return-void
.end method
