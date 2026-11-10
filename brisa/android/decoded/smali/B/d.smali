.class public final enum LB/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LB/d;

.field public static final Companion:LB/b;

.field public static final enum ON_ANY:LB/d;

.field public static final enum ON_CREATE:LB/d;

.field public static final enum ON_DESTROY:LB/d;

.field public static final enum ON_PAUSE:LB/d;

.field public static final enum ON_RESUME:LB/d;

.field public static final enum ON_START:LB/d;

.field public static final enum ON_STOP:LB/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LB/d;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB/d;->ON_CREATE:LB/d;

    new-instance v1, LB/d;

    const-string v2, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB/d;->ON_START:LB/d;

    new-instance v2, LB/d;

    const-string v3, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB/d;->ON_RESUME:LB/d;

    new-instance v3, LB/d;

    const-string v4, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LB/d;->ON_PAUSE:LB/d;

    new-instance v4, LB/d;

    const-string v5, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LB/d;->ON_STOP:LB/d;

    new-instance v5, LB/d;

    const-string v6, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LB/d;->ON_DESTROY:LB/d;

    new-instance v6, LB/d;

    const-string v7, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LB/d;->ON_ANY:LB/d;

    filled-new-array/range {v0 .. v6}, [LB/d;

    move-result-object v0

    sput-object v0, LB/d;->$VALUES:[LB/d;

    new-instance v0, LB/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB/d;->Companion:LB/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB/d;
    .locals 1

    const-class v0, LB/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB/d;

    return-object p0
.end method

.method public static values()[LB/d;
    .locals 1

    sget-object v0, LB/d;->$VALUES:[LB/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB/d;

    return-object v0
.end method


# virtual methods
.method public final a()LB/e;
    .locals 3

    sget-object v0, LB/c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, LB/e;->e:LB/e;

    return-object v0

    :pswitch_1
    sget-object v0, LB/e;->i:LB/e;

    return-object v0

    :pswitch_2
    sget-object v0, LB/e;->h:LB/e;

    return-object v0

    :pswitch_3
    sget-object v0, LB/e;->g:LB/e;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
