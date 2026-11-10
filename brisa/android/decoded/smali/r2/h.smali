.class public final enum Lr2/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lr2/h;

.field public static final enum f:Lr2/h;

.field public static final enum g:Lr2/h;

.field public static final enum h:Lr2/h;

.field public static final synthetic i:[Lr2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr2/h;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr2/h;->e:Lr2/h;

    new-instance v1, Lr2/h;

    const-string v2, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr2/h;->f:Lr2/h;

    new-instance v2, Lr2/h;

    const-string v3, "LIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr2/h;->g:Lr2/h;

    new-instance v3, Lr2/h;

    const-string v4, "COMMENTS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr2/h;->h:Lr2/h;

    filled-new-array {v0, v1, v2, v3}, [Lr2/h;

    move-result-object v0

    sput-object v0, Lr2/h;->i:[Lr2/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr2/h;
    .locals 1

    const-class v0, Lr2/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr2/h;

    return-object p0
.end method

.method public static values()[Lr2/h;
    .locals 1

    sget-object v0, Lr2/h;->i:[Lr2/h;

    invoke-virtual {v0}, [Lr2/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr2/h;

    return-object v0
.end method
