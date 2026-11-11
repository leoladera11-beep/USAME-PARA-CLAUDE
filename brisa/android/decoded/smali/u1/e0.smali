.class public final Lu1/e0;
.super Lu1/Q0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lt1/j;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lt1/j;)V
    .locals 0

    iput-object p2, p0, Lu1/e0;->f:Lt1/j;

    invoke-direct {p0, p1}, Lu1/Q0;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu1/e0;->f:Lt1/j;

    invoke-interface {v0, p1}, Lt1/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
