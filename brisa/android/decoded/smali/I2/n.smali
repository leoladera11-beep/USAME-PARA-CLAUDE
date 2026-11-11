.class public final LI2/n;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/n;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "seconds"

    const-string v1, "sec"

    const-string v2, "second"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "minutes"

    const-string v1, "min"

    const-string v2, "minute"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "hours"

    const-string v1, "h"

    const-string v2, "hour"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "days"

    const-string v1, "d"

    const-string v2, "day"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "weeks"

    const-string v1, "w"

    const-string v2, "week"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "months"

    const-string v1, "mo"

    const-string v2, "month"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "years"

    const-string v1, "y"

    const-string v2, "year"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v11

    new-instance v3, LI2/n;

    const-string v4, " "

    invoke-direct/range {v3 .. v11}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, LI2/n;->j:LI2/n;

    return-void
.end method
