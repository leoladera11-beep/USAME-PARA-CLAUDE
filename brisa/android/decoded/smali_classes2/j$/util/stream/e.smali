.class public final Lj$/util/stream/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/Collector;


# instance fields
.field public final a:Lj$/util/stream/a;

.field public final b:Lj$/util/stream/b;

.field public final c:Lj$/util/stream/c;

.field public final d:Lj$/util/stream/d;

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lj$/util/stream/a;Lj$/util/stream/b;Lj$/util/stream/c;Lj$/util/stream/d;Ljava/util/Set;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lj$/util/stream/e;->a:Lj$/util/stream/a;

    .line 350
    iput-object p2, p0, Lj$/util/stream/e;->b:Lj$/util/stream/b;

    .line 351
    iput-object p3, p0, Lj$/util/stream/e;->c:Lj$/util/stream/c;

    .line 352
    iput-object p4, p0, Lj$/util/stream/e;->d:Lj$/util/stream/d;

    .line 353
    iput-object p5, p0, Lj$/util/stream/e;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 1

    .line 365
    iget-object v0, p0, Lj$/util/stream/e;->b:Lj$/util/stream/b;

    return-object v0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 1

    .line 385
    iget-object v0, p0, Lj$/util/stream/e;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 1

    .line 375
    iget-object v0, p0, Lj$/util/stream/e;->c:Lj$/util/stream/c;

    return-object v0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 1

    .line 380
    iget-object v0, p0, Lj$/util/stream/e;->d:Lj$/util/stream/d;

    return-object v0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 1

    .line 370
    iget-object v0, p0, Lj$/util/stream/e;->a:Lj$/util/stream/a;

    return-object v0
.end method
