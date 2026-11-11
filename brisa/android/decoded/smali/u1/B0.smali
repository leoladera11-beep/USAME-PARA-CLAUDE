.class public final Lu1/B0;
.super Lu1/H;
.source "SourceFile"


# static fields
.field public static final m:Lu1/B0;


# instance fields
.field public final transient h:Ljava/lang/Object;

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I

.field public final transient k:I

.field public final transient l:Lu1/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/B0;

    invoke-direct {v0}, Lu1/B0;-><init>()V

    sput-object v0, Lu1/B0;->m:Lu1/B0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lu1/B0;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lu1/B0;->i:[Ljava/lang/Object;

    .line 4
    iput v0, p0, Lu1/B0;->j:I

    .line 5
    iput v0, p0, Lu1/B0;->k:I

    .line 6
    iput-object p0, p0, Lu1/B0;->l:Lu1/B0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILu1/B0;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lu1/B0;->h:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lu1/B0;->i:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lu1/B0;->j:I

    .line 11
    iput p3, p0, Lu1/B0;->k:I

    .line 12
    iput-object p4, p0, Lu1/B0;->l:Lu1/B0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lu1/B0;->i:[Ljava/lang/Object;

    .line 15
    iput p2, p0, Lu1/B0;->k:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lu1/B0;->j:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 17
    invoke-static {p2}, Lu1/b0;->i(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 18
    :goto_0
    invoke-static {p1, p2, v2, v0}, Lu1/H0;->g([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v3, v0, [Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 20
    iput-object v0, p0, Lu1/B0;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21
    invoke-static {p1, p2, v2, v0}, Lu1/H0;->g([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v2, v0, [Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 23
    new-instance v1, Lu1/B0;

    invoke-direct {v1, v0, p1, p2, p0}, Lu1/B0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILu1/B0;)V

    iput-object v1, p0, Lu1/B0;->l:Lu1/B0;

    return-void

    .line 24
    :cond_1
    check-cast v0, [Ljava/lang/Object;

    .line 25
    aget-object p1, v0, v1

    check-cast p1, Lu1/S;

    .line 26
    invoke-virtual {p1}, Lu1/S;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 27
    :cond_2
    check-cast v0, [Ljava/lang/Object;

    .line 28
    aget-object p1, v0, v1

    check-cast p1, Lu1/S;

    .line 29
    invoke-virtual {p1}, Lu1/S;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final b()Lu1/E0;
    .locals 4

    new-instance v0, Lu1/E0;

    iget v1, p0, Lu1/B0;->j:I

    iget v2, p0, Lu1/B0;->k:I

    iget-object v3, p0, Lu1/B0;->i:[Ljava/lang/Object;

    invoke-direct {v0, p0, v3, v1, v2}, Lu1/E0;-><init>(Lu1/T;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final c()Lu1/F0;
    .locals 4

    new-instance v0, Lu1/G0;

    iget v1, p0, Lu1/B0;->j:I

    iget v2, p0, Lu1/B0;->k:I

    iget-object v3, p0, Lu1/B0;->i:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lu1/G0;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lu1/F0;

    invoke-direct {v1, p0, v0}, Lu1/F0;-><init>(Lu1/T;Lu1/G0;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lu1/B0;->k:I

    iget v1, p0, Lu1/B0;->j:I

    iget-object v2, p0, Lu1/B0;->h:Ljava/lang/Object;

    iget-object v3, p0, Lu1/B0;->i:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, p1}, Lu1/H0;->h(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu1/B0;->k:I

    return v0
.end method
