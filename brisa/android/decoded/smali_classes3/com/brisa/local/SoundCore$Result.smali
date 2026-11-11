.class public final enum Lcom/brisa/local/SoundCore$Result;
.super Ljava/lang/Enum;
.source "SoundCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/SoundCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brisa/local/SoundCore$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brisa/local/SoundCore$Result;

.field public static final enum APPLIED:Lcom/brisa/local/SoundCore$Result;

.field public static final enum ORIGINAL:Lcom/brisa/local/SoundCore$Result;

.field public static final enum PAUSED:Lcom/brisa/local/SoundCore$Result;

.field public static final enum UNAVAILABLE:Lcom/brisa/local/SoundCore$Result;


# direct methods
.method private static synthetic $values()[Lcom/brisa/local/SoundCore$Result;
    .locals 4

    .line 11
    sget-object v0, Lcom/brisa/local/SoundCore$Result;->APPLIED:Lcom/brisa/local/SoundCore$Result;

    sget-object v1, Lcom/brisa/local/SoundCore$Result;->ORIGINAL:Lcom/brisa/local/SoundCore$Result;

    sget-object v2, Lcom/brisa/local/SoundCore$Result;->PAUSED:Lcom/brisa/local/SoundCore$Result;

    sget-object v3, Lcom/brisa/local/SoundCore$Result;->UNAVAILABLE:Lcom/brisa/local/SoundCore$Result;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brisa/local/SoundCore$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/brisa/local/SoundCore$Result;

    const-string v1, "APPLIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brisa/local/SoundCore$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brisa/local/SoundCore$Result;->APPLIED:Lcom/brisa/local/SoundCore$Result;

    new-instance v0, Lcom/brisa/local/SoundCore$Result;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brisa/local/SoundCore$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brisa/local/SoundCore$Result;->ORIGINAL:Lcom/brisa/local/SoundCore$Result;

    new-instance v0, Lcom/brisa/local/SoundCore$Result;

    const-string v1, "PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brisa/local/SoundCore$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brisa/local/SoundCore$Result;->PAUSED:Lcom/brisa/local/SoundCore$Result;

    new-instance v0, Lcom/brisa/local/SoundCore$Result;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brisa/local/SoundCore$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brisa/local/SoundCore$Result;->UNAVAILABLE:Lcom/brisa/local/SoundCore$Result;

    invoke-static {}, Lcom/brisa/local/SoundCore$Result;->$values()[Lcom/brisa/local/SoundCore$Result;

    move-result-object v0

    sput-object v0, Lcom/brisa/local/SoundCore$Result;->$VALUES:[Lcom/brisa/local/SoundCore$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brisa/local/SoundCore$Result;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/brisa/local/SoundCore$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brisa/local/SoundCore$Result;

    return-object p0
.end method

.method public static values()[Lcom/brisa/local/SoundCore$Result;
    .locals 1

    .line 11
    sget-object v0, Lcom/brisa/local/SoundCore$Result;->$VALUES:[Lcom/brisa/local/SoundCore$Result;

    invoke-virtual {v0}, [Lcom/brisa/local/SoundCore$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brisa/local/SoundCore$Result;

    return-object v0
.end method
