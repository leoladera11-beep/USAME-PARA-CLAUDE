.class public final synthetic LM0/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/r;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM0/K0;->e:I

    iput-wide p2, p0, LM0/K0;->f:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lz1/B;
    .locals 4

    check-cast p1, Ljava/util/List;

    new-instance v0, LM0/O0;

    iget v1, p0, LM0/K0;->e:I

    iget-wide v2, p0, LM0/K0;->f:J

    invoke-direct {v0, p1, v1, v2, v3}, LM0/O0;-><init>(Ljava/util/List;IJ)V

    invoke-static {v0}, Lcom/brisa/local/v;->l(Ljava/lang/Object;)Lz1/x;

    move-result-object p1

    return-object p1
.end method
