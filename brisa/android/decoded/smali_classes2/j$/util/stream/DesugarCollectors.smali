.class public final Lj$/util/stream/DesugarCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lj$/util/stream/DesugarCollectors;->a:Ljava/util/Set;

    .line 92
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 93
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method public static toUnmodifiableList()Ljava/util/stream/Collector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Lj$/util/stream/e;

    new-instance v1, Lj$/util/stream/a;

    .line 0
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v2, Lj$/util/stream/b;

    .line 0
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v3, Lj$/util/stream/c;

    .line 0
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v4, Lj$/util/stream/d;

    .line 0
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 211
    sget-object v5, Lj$/util/stream/DesugarCollectors;->a:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/e;-><init>(Lj$/util/stream/a;Lj$/util/stream/b;Lj$/util/stream/c;Lj$/util/stream/d;Ljava/util/Set;)V

    return-object v0
.end method
