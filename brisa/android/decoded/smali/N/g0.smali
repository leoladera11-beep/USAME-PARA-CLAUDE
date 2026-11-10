.class public final LN/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LN/g0;


# instance fields
.field public final a:Lu1/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LZ0/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lu1/b0;->j(I[Ljava/lang/Object;)Lu1/b0;

    move-result-object v1

    iput-object v1, v0, LZ0/i;->e:Ljava/lang/Object;

    new-instance v1, LN/g0;

    invoke-direct {v1, v0}, LN/g0;-><init>(LZ0/i;)V

    sput-object v1, LN/g0;->b:LN/g0;

    return-void
.end method

.method public constructor <init>(LZ0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LZ0/i;->e:Ljava/lang/Object;

    check-cast p1, Lu1/b0;

    iput-object p1, p0, LN/g0;->a:Lu1/b0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LN/g0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LN/g0;

    iget-object v0, p0, LN/g0;->a:Lu1/b0;

    iget-object p1, p1, LN/g0;->a:Lu1/b0;

    invoke-virtual {v0, p1}, Lu1/b0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 8

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, LN/g0;->a:Lu1/b0;

    const/4 v1, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
