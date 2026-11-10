.class public final Lu1/F;
.super Lu1/Q;
.source "SourceFile"


# static fields
.field public static final k:Lu1/F;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu1/F;

    sget-object v1, Lu1/H0;->k:Lu1/H0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu1/Q;-><init>(Lu1/H0;I)V

    sput-object v0, Lu1/F;->k:Lu1/F;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lu1/Q;->i:Lu1/H0;

    return-object v0
.end method

.method public final h()Lu1/T;
    .locals 1

    iget-object v0, p0, Lu1/Q;->i:Lu1/H0;

    return-object v0
.end method
