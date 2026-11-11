.class public final Lu1/f0;
.super Lu1/a;
.source "SourceFile"


# static fields
.field public static final h:Lu1/f0;


# instance fields
.field public final g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu1/f0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lu1/f0;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lu1/f0;->h:Lu1/f0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, v1, v0}, Lu1/a;-><init>(II)V

    iput-object p1, p0, Lu1/f0;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu1/f0;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
