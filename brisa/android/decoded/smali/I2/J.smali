.class public final LI2/J;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/J;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\u79d2\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u5206\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u6642\u9593\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "\u65e5\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "\u9031\u9593\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "\u304b\u6708\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "\u5e74\u524d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    new-instance v1, LI2/J;

    const-string v2, ""

    invoke-direct/range {v1 .. v9}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LI2/J;->j:LI2/J;

    return-void
.end method
