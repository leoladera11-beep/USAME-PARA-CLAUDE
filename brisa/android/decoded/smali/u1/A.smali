.class public abstract Lu1/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu1/y;

.field public static final b:Lu1/z;

.field public static final c:Lu1/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu1/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu1/A;->a:Lu1/y;

    new-instance v0, Lu1/z;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lu1/z;-><init>(I)V

    sput-object v0, Lu1/A;->b:Lu1/z;

    new-instance v0, Lu1/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu1/z;-><init>(I)V

    sput-object v0, Lu1/A;->c:Lu1/z;

    return-void
.end method


# virtual methods
.method public abstract a(II)Lu1/A;
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lu1/A;
.end method

.method public abstract c(ZZ)Lu1/A;
.end method

.method public abstract d(ZZ)Lu1/A;
.end method

.method public abstract e()I
.end method
