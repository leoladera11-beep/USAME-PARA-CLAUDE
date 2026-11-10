.class public final Lu1/I0;
.super Lu1/Z;
.source "SourceFile"


# static fields
.field public static final l:Lu1/I0;


# instance fields
.field public final transient i:Lu1/x0;

.field public final transient j:I

.field public transient k:Lu1/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu1/I0;

    new-instance v1, Lu1/x0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lu1/x0;->d(I)V

    invoke-direct {v0, v1}, Lu1/I0;-><init>(Lu1/x0;)V

    sput-object v0, Lu1/I0;->l:Lu1/I0;

    return-void
.end method

.method public constructor <init>(Lu1/x0;)V
    .locals 5

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lu1/I0;->i:Lu1/x0;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p1, Lu1/x0;->c:I

    if-ge v2, v3, :cond_0

    invoke-static {v2, v3}, LF1/i;->i(II)V

    iget-object v3, p1, Lu1/x0;->b:[I

    aget v3, v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, LS1/e;->s(J)I

    move-result p1

    iput p1, p0, Lu1/I0;->j:I

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final i()Lu1/b0;
    .locals 2

    iget-object v0, p0, Lu1/I0;->k:Lu1/Y;

    if-nez v0, :cond_0

    new-instance v0, Lu1/Y;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lu1/Y;-><init>(Lu1/Z;I)V

    iput-object v0, p0, Lu1/I0;->k:Lu1/Y;

    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/I0;->j:I

    return v0
.end method
