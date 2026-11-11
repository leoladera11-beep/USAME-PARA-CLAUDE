.class public Ls/B;
.super Ls/D;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ls/D;-><init>()V

    invoke-static {}, Lcom/brisa/local/n;->a()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Ls/B;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Ls/K;
    .locals 3

    invoke-virtual {p0}, Ls/D;->a()V

    iget-object v0, p0, Ls/B;->a:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, Lcom/brisa/local/n;->b(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ls/K;->a(Landroid/view/View;Landroid/view/WindowInsets;)Ls/K;

    move-result-object v0

    iget-object v2, v0, Ls/K;->a:Ls/J;

    invoke-virtual {v2, v1}, Ls/J;->j([Ln/b;)V

    return-object v0
.end method

.method public c(Ln/b;)V
    .locals 1

    iget-object v0, p0, Ls/B;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ln/b;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/brisa/local/n;->o(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public d(Ln/b;)V
    .locals 1

    iget-object v0, p0, Ls/B;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ln/b;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/brisa/local/n;->h(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
