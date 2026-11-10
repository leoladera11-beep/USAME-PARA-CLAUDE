.class final enum Lorg/mozilla/javascript/dtoa/Decimal$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/dtoa/Decimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/dtoa/Decimal$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/dtoa/Decimal$Mode;

.field public static final enum DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

.field public static final enum TO_EXPONENTIAL:Lorg/mozilla/javascript/dtoa/Decimal$Mode;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/dtoa/Decimal$Mode;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    sget-object v1, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->TO_EXPONENTIAL:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    filled-new-array {v0, v1}, [Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/dtoa/Decimal$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->DEFAULT:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    new-instance v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    const-string v1, "TO_EXPONENTIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/dtoa/Decimal$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->TO_EXPONENTIAL:Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-static {}, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->$values()[Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->$VALUES:[Lorg/mozilla/javascript/dtoa/Decimal$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/dtoa/Decimal$Mode;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/dtoa/Decimal$Mode;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/dtoa/Decimal$Mode;->$VALUES:[Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/dtoa/Decimal$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/dtoa/Decimal$Mode;

    return-object v0
.end method
