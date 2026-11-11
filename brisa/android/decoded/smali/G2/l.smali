.class public final enum LG2/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LG2/l;

.field public static final enum f:LG2/l;

.field public static final enum g:LG2/l;

.field public static final enum h:LG2/l;

.field public static final synthetic i:[LG2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LG2/l;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG2/l;->e:LG2/l;

    new-instance v1, LG2/l;

    const-string v2, "VIDEO_STREAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG2/l;->f:LG2/l;

    new-instance v2, LG2/l;

    const-string v3, "AUDIO_STREAM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, LG2/l;

    const-string v4, "LIVE_STREAM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LG2/l;->g:LG2/l;

    new-instance v4, LG2/l;

    const-string v5, "AUDIO_LIVE_STREAM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, LG2/l;

    const-string v6, "POST_LIVE_STREAM"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LG2/l;->h:LG2/l;

    new-instance v6, LG2/l;

    const-string v7, "POST_LIVE_AUDIO_STREAM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v6}, [LG2/l;

    move-result-object v0

    sput-object v0, LG2/l;->i:[LG2/l;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LG2/l;
    .locals 1

    const-class v0, LG2/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG2/l;

    return-object p0
.end method

.method public static values()[LG2/l;
    .locals 1

    sget-object v0, LG2/l;->i:[LG2/l;

    invoke-virtual {v0}, [LG2/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG2/l;

    return-object v0
.end method
