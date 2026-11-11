.class public final Ls/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget v0, Ls/I;->l:I

    return-void

    :cond_0
    sget v0, Ls/J;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ls/J;

    invoke-direct {v0, p0}, Ls/J;-><init>(Ls/K;)V

    iput-object v0, p0, Ls/K;->a:Ls/J;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Ls/I;

    invoke-direct {v0, p0, p1}, Ls/I;-><init>(Ls/K;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ls/K;->a:Ls/J;

    return-void

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Ls/H;

    invoke-direct {v0, p0, p1}, Ls/H;-><init>(Ls/K;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ls/K;->a:Ls/J;

    return-void

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Ls/G;

    invoke-direct {v0, p0, p1}, Ls/G;-><init>(Ls/K;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ls/K;->a:Ls/J;

    return-void

    .line 6
    :cond_2
    new-instance v0, Ls/F;

    invoke-direct {v0, p0, p1}, Ls/F;-><init>(Ls/K;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Ls/K;->a:Ls/J;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/WindowInsets;)Ls/K;
    .locals 2

    new-instance v0, Ls/K;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Ls/K;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    sget-object p1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ls/i;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ls/m;->a(Landroid/view/View;)Ls/K;

    move-result-object p1

    iget-object v1, v0, Ls/K;->a:Ls/J;

    invoke-virtual {v1, p1}, Ls/J;->k(Ls/K;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Ls/J;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ls/K;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ls/K;

    iget-object v0, p0, Ls/K;->a:Ls/J;

    iget-object p1, p1, Ls/K;->a:Ls/J;

    invoke-static {v0, p1}, Lr/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ls/K;->a:Ls/J;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ls/J;->hashCode()I

    move-result v0

    return v0
.end method
