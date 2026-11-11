.class public final LI2/q;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/q;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "segundo"

    const-string v1, "segundos"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minuto"

    const-string v1, "minutos"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "hora"

    const-string v1, "horas"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "d\u00eda"

    const-string v1, "d\u00edas"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "semana"

    const-string v1, "semanas"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "mes"

    const-string v1, "meses"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "a\u00f1o"

    const-string v1, "a\u00f1os"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/q;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/q;->j:LI2/q;

    return-void
.end method
