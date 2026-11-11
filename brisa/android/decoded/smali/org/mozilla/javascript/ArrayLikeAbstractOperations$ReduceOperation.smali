.class public final enum Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ArrayLikeAbstractOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReduceOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

.field public static final enum REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

.field public static final enum REDUCE_RIGHT:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    sget-object v1, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE_RIGHT:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    filled-new-array {v0, v1}, [Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    const-string v1, "REDUCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    new-instance v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    const-string v1, "REDUCE_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->REDUCE_RIGHT:Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {}, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->$values()[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->$VALUES:[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->$VALUES:[Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/ArrayLikeAbstractOperations$ReduceOperation;

    return-object v0
.end method
