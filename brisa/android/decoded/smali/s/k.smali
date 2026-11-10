.class public final Ls/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public a:Ls/K;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ls/f;)V
    .locals 0

    iput-object p1, p0, Ls/k;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ls/k;->a:Ls/K;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {p1, p2}, Ls/K;->a(Landroid/view/View;Landroid/view/WindowInsets;)Ls/K;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ls/k;->b:Landroid/view/View;

    invoke-static {p2, v0}, Ls/l;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, Ls/k;->a:Ls/K;

    invoke-virtual {p1, p2}, Ls/K;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    throw v2

    :cond_0
    iput-object p1, p0, Ls/k;->a:Ls/K;

    throw v2
.end method
