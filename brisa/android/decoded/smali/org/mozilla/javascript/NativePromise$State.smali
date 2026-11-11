.class final enum Lorg/mozilla/javascript/NativePromise$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativePromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/NativePromise$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/NativePromise$State;

.field public static final enum FULFILLED:Lorg/mozilla/javascript/NativePromise$State;

.field public static final enum PENDING:Lorg/mozilla/javascript/NativePromise$State;

.field public static final enum REJECTED:Lorg/mozilla/javascript/NativePromise$State;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/NativePromise$State;
    .locals 3

    sget-object v0, Lorg/mozilla/javascript/NativePromise$State;->PENDING:Lorg/mozilla/javascript/NativePromise$State;

    sget-object v1, Lorg/mozilla/javascript/NativePromise$State;->FULFILLED:Lorg/mozilla/javascript/NativePromise$State;

    sget-object v2, Lorg/mozilla/javascript/NativePromise$State;->REJECTED:Lorg/mozilla/javascript/NativePromise$State;

    filled-new-array {v0, v1, v2}, [Lorg/mozilla/javascript/NativePromise$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/NativePromise$State;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativePromise$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativePromise$State;->PENDING:Lorg/mozilla/javascript/NativePromise$State;

    new-instance v0, Lorg/mozilla/javascript/NativePromise$State;

    const-string v1, "FULFILLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativePromise$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativePromise$State;->FULFILLED:Lorg/mozilla/javascript/NativePromise$State;

    new-instance v0, Lorg/mozilla/javascript/NativePromise$State;

    const-string v1, "REJECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativePromise$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/NativePromise$State;->REJECTED:Lorg/mozilla/javascript/NativePromise$State;

    invoke-static {}, Lorg/mozilla/javascript/NativePromise$State;->$values()[Lorg/mozilla/javascript/NativePromise$State;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativePromise$State;->$VALUES:[Lorg/mozilla/javascript/NativePromise$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/NativePromise$State;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/NativePromise$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativePromise$State;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/NativePromise$State;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/NativePromise$State;->$VALUES:[Lorg/mozilla/javascript/NativePromise$State;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/NativePromise$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/NativePromise$State;

    return-object v0
.end method
