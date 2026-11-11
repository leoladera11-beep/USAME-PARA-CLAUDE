.class public final enum Lorg/mozilla/javascript/optimizer/RhinoOperation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljdk/dynalink/Operation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/optimizer/RhinoOperation;",
        ">;",
        "Ljdk/dynalink/Operation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

.field public static final enum TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/optimizer/RhinoOperation;
    .locals 27

    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v3, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v4, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v5, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v6, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v7, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v8, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v9, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v10, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v11, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v12, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v13, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v14, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v15, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v16, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v17, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v18, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v19, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v20, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v21, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v22, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v23, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v24, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v25, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    sget-object v26, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    filled-new-array/range {v1 .. v26}, [Lorg/mozilla/javascript/optimizer/RhinoOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "BIND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETNOWARN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETSUPER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETWITHTHIS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETWITHTHISOPTIONAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETELEMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETELEMENTSUPER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "GETINDEX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SETSTRICT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SETCONST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SETSUPER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SETELEMENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SETELEMENTSUPER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SETINDEX"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "ADD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "EQ"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "SHALLOWEQ"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "COMPARE_GT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "COMPARE_LT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "COMPARE_GE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "COMPARE_LE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "TOBOOLEAN"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "TOINT32"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "TOUINT32"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "TONUMBER"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    const-string v1, "TONUMERIC"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-static {}, Lorg/mozilla/javascript/optimizer/RhinoOperation;->$values()[Lorg/mozilla/javascript/optimizer/RhinoOperation;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->$VALUES:[Lorg/mozilla/javascript/optimizer/RhinoOperation;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/optimizer/RhinoOperation;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/RhinoOperation;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/optimizer/RhinoOperation;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->$VALUES:[Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/optimizer/RhinoOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/optimizer/RhinoOperation;

    return-object v0
.end method
