.class public final LW1/w;
.super LW1/x;
.source "SourceFile"


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Lj2/g;


# direct methods
.method public constructor <init>(JLj2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LW1/w;->e:J

    iput-object p3, p0, LW1/w;->f:Lj2/g;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, LW1/w;->e:J

    return-wide v0
.end method

.method public final e()LW1/o;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lj2/i;
    .locals 1

    iget-object v0, p0, LW1/w;->f:Lj2/g;

    return-object v0
.end method
