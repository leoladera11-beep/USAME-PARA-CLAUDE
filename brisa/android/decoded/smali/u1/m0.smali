.class public final Lu1/m0;
.super Lu1/n;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/util/Map$Entry;

.field public final synthetic f:Lu1/o0;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Lu1/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/m0;->e:Ljava/util/Map$Entry;

    iput-object p2, p0, Lu1/m0;->f:Lu1/o0;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu1/m0;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu1/m0;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lu1/m0;->f:Lu1/o0;

    invoke-interface {v2, v1, v0}, Lu1/o0;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
