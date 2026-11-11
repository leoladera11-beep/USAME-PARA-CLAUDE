.class public final enum LB/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:LB/e;

.field public static final enum f:LB/e;

.field public static final enum g:LB/e;

.field public static final enum h:LB/e;

.field public static final enum i:LB/e;

.field public static final synthetic j:[LB/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LB/e;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/e;->e:LB/e;

    new-instance v1, LB/e;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB/e;->f:LB/e;

    new-instance v2, LB/e;

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB/e;->g:LB/e;

    new-instance v3, LB/e;

    const-string v4, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LB/e;->h:LB/e;

    new-instance v4, LB/e;

    const-string v5, "RESUMED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LB/e;->i:LB/e;

    filled-new-array {v0, v1, v2, v3, v4}, [LB/e;

    move-result-object v0

    sput-object v0, LB/e;->j:[LB/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB/e;
    .locals 1

    const-class v0, LB/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/e;

    return-object p0
.end method

.method public static values()[LB/e;
    .locals 1

    sget-object v0, LB/e;->j:[LB/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/e;

    return-object v0
.end method
