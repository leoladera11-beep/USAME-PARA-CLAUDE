.class public final enum Lorg/mozilla/javascript/NativeConsole$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/NativeConsole$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum INFO:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

.field public static final enum WARN:Lorg/mozilla/javascript/NativeConsole$Level;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/NativeConsole$Level;
    .locals 5

    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

    sget-object v1, Lorg/mozilla/javascript/NativeConsole$Level;->DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

    sget-object v2, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    sget-object v3, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    sget-object v4, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/mozilla/javascript/NativeConsole$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->TRACE:Lorg/mozilla/javascript/NativeConsole$Level;

    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->DEBUG:Lorg/mozilla/javascript/NativeConsole$Level;

    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->INFO:Lorg/mozilla/javascript/NativeConsole$Level;

    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "WARN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->WARN:Lorg/mozilla/javascript/NativeConsole$Level;

    new-instance v0, Lorg/mozilla/javascript/NativeConsole$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeConsole$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->ERROR:Lorg/mozilla/javascript/NativeConsole$Level;

    invoke-static {}, Lorg/mozilla/javascript/NativeConsole$Level;->$values()[Lorg/mozilla/javascript/NativeConsole$Level;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->$VALUES:[Lorg/mozilla/javascript/NativeConsole$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/NativeConsole$Level;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/NativeConsole$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeConsole$Level;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/NativeConsole$Level;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/NativeConsole$Level;->$VALUES:[Lorg/mozilla/javascript/NativeConsole$Level;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/NativeConsole$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/NativeConsole$Level;

    return-object v0
.end method
