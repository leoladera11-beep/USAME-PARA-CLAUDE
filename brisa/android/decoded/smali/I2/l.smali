.class public final LI2/l;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "Sekunde"

    const-string v1, "Sekunden"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "Minute"

    const-string v1, "Minuten"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "Stunde"

    const-string v1, "Stunden"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "Tag"

    const-string v1, "Tagen"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "Woche"

    const-string v1, "Wochen"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "Monat"

    const-string v1, "Monaten"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "Jahr"

    const-string v1, "Jahren"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/l;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/l;->j:LI2/l;

    return-void
.end method
