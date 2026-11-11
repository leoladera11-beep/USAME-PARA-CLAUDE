.class public final LI2/o0;
.super LH2/b;
.source "SourceFile"


# static fields
.field public static final j:LI2/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "sekunde"

    const-string v1, "sekundi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "minuta"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "sati"

    const-string v1, "sata"

    const-string v2, "sat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v11, "Pre 5 dana"

    const-string v12, "Pre 6 dana"

    const-string v7, "Pre 1 dan"

    const-string v8, "Pre 2 dana"

    const-string v9, "Pre 3 dana"

    const-string v10, "Pre 4 dana"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "nedelje"

    const-string v1, "nedelju"

    const-string v2, "nedelja"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "meseci"

    const-string v1, "meseca"

    const-string v2, "mesec"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "godina"

    const-string v1, "godinu"

    const-string v2, "godine"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v10

    new-instance v2, LI2/o0;

    const-string v3, " "

    invoke-direct/range {v2 .. v10}, LH2/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, LI2/o0;->j:LI2/o0;

    return-void
.end method
