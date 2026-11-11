.class public final enum LW1/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum f:LW1/r;

.field public static final enum g:LW1/r;

.field public static final enum h:LW1/r;

.field public static final enum i:LW1/r;

.field public static final enum j:LW1/r;

.field public static final enum k:LW1/r;

.field public static final synthetic l:[LW1/r;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LW1/r;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v2, v1}, LW1/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, LW1/r;->f:LW1/r;

    new-instance v1, LW1/r;

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    const-string v4, "HTTP_1_1"

    invoke-direct {v1, v4, v3, v2}, LW1/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, LW1/r;->g:LW1/r;

    new-instance v2, LW1/r;

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    const-string v5, "SPDY_3"

    invoke-direct {v2, v5, v4, v3}, LW1/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v2, LW1/r;->h:LW1/r;

    new-instance v3, LW1/r;

    const/4 v4, 0x3

    const-string v5, "h2"

    const-string v6, "HTTP_2"

    invoke-direct {v3, v6, v5, v4}, LW1/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v3, LW1/r;->i:LW1/r;

    new-instance v4, LW1/r;

    const/4 v5, 0x4

    const-string v6, "h2_prior_knowledge"

    const-string v7, "H2_PRIOR_KNOWLEDGE"

    invoke-direct {v4, v7, v6, v5}, LW1/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v4, LW1/r;->j:LW1/r;

    new-instance v5, LW1/r;

    const/4 v6, 0x5

    const-string v7, "quic"

    const-string v8, "QUIC"

    invoke-direct {v5, v8, v7, v6}, LW1/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v5, LW1/r;->k:LW1/r;

    filled-new-array/range {v0 .. v5}, [LW1/r;

    move-result-object v0

    sput-object v0, LW1/r;->l:[LW1/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, LW1/r;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LW1/r;
    .locals 1

    const-class v0, LW1/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LW1/r;

    return-object p0
.end method

.method public static values()[LW1/r;
    .locals 1

    sget-object v0, LW1/r;->l:[LW1/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LW1/r;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW1/r;->e:Ljava/lang/String;

    return-object v0
.end method
