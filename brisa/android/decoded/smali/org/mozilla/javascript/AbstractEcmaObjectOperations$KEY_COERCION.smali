.class final enum Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/AbstractEcmaObjectOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KEY_COERCION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

.field public static final enum COLLECTION:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

.field public static final enum PROPERTY:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;
    .locals 2

    sget-object v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->PROPERTY:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    sget-object v1, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->COLLECTION:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    filled-new-array {v0, v1}, [Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    const-string v1, "PROPERTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->PROPERTY:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    new-instance v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    const-string v1, "COLLECTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->COLLECTION:Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    invoke-static {}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->$values()[Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->$VALUES:[Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->$VALUES:[Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/AbstractEcmaObjectOperations$KEY_COERCION;

    return-object v0
.end method
