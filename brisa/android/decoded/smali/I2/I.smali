.class public final LI2/I;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/I;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "\u05e9\u05e0\u05d9\u05d5\u05ea"

    const-string v1, "\u05e9\u05e0\u05d9\u05d9\u05d4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u05d3\u05e7\u05d4"

    const-string v1, "\u05d3\u05e7\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "\u05e9\u05e2\u05d4"

    const-string v1, "\u05e9\u05e2\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "\u05d9\u05d5\u05dd"

    const-string v1, "\u05d9\u05de\u05d9\u05dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "\u05e9\u05d1\u05d5\u05e2"

    const-string v1, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "\u05d7\u05d5\u05d3\u05e9"

    const-string v1, "\u05d7\u05d5\u05d3\u05e9\u05d9\u05dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "\u05e9\u05e0\u05d4"

    const-string v1, "\u05e9\u05e0\u05d9\u05dd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/I;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const-string v1, "\u05e9\u05e2\u05ea\u05d9\u05d9\u05dd"

    invoke-virtual {v2, v0, v1}, LH2/b;->a(Ljava/time/temporal/ChronoUnit;Ljava/lang/String;)V

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-string v1, "\u05d9\u05d5\u05de\u05d9\u05d9\u05dd"

    invoke-virtual {v2, v0, v1}, LH2/b;->a(Ljava/time/temporal/ChronoUnit;Ljava/lang/String;)V

    sget-object v0, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-string v1, "\u05e9\u05d1\u05d5\u05e2\u05d9\u05d9\u05dd"

    invoke-virtual {v2, v0, v1}, LH2/b;->a(Ljava/time/temporal/ChronoUnit;Ljava/lang/String;)V

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-string v1, "\u05d7\u05d5\u05d3\u05e9\u05d9\u05d9\u05dd"

    invoke-virtual {v2, v0, v1}, LH2/b;->a(Ljava/time/temporal/ChronoUnit;Ljava/lang/String;)V

    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-string v1, "\u05e9\u05e0\u05ea\u05d9\u05d9\u05dd"

    invoke-virtual {v2, v0, v1}, LH2/b;->a(Ljava/time/temporal/ChronoUnit;Ljava/lang/String;)V

    sput-object v2, LI2/I;->j:LI2/I;

    return-void
.end method
