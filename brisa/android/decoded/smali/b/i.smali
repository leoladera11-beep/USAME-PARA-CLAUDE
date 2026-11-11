.class public final Lb/i;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements LB/g;


# instance fields
.field public a:LB/i;

.field public final b:LW0/c;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, LW0/c;

    new-instance p2, LH/a;

    const/16 v0, 0x18

    invoke-direct {p2, p0, v0}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, LW0/c;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lb/i;->b:LW0/c;

    return-void
.end method

.method public static b(Lb/i;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/i;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f09009e

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f09009f

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final g()LB/i;
    .locals 1

    iget-object v0, p0, Lb/i;->a:LB/i;

    if-nez v0, :cond_0

    new-instance v0, LB/i;

    invoke-direct {v0, p0}, LB/i;-><init>(LB/g;)V

    iput-object v0, p0, Lb/i;->a:LB/i;

    :cond_0
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lb/i;->b:LW0/c;

    invoke-virtual {v0}, LW0/c;->v()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lb/i;->a:LB/i;

    if-nez p1, :cond_0

    new-instance p1, LB/i;

    invoke-direct {p1, p0}, LB/i;-><init>(LB/g;)V

    iput-object p1, p0, Lb/i;->a:LB/i;

    :cond_0
    sget-object v0, LB/d;->ON_CREATE:LB/d;

    invoke-virtual {p1, v0}, LB/i;->d(LB/d;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-object v0, p0, Lb/i;->a:LB/i;

    if-nez v0, :cond_0

    new-instance v0, LB/i;

    invoke-direct {v0, p0}, LB/i;-><init>(LB/g;)V

    iput-object v0, p0, Lb/i;->a:LB/i;

    :cond_0
    sget-object v1, LB/d;->ON_RESUME:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lb/i;->a:LB/i;

    if-nez v0, :cond_0

    new-instance v0, LB/i;

    invoke-direct {v0, p0}, LB/i;-><init>(LB/g;)V

    iput-object v0, p0, Lb/i;->a:LB/i;

    :cond_0
    sget-object v1, LB/d;->ON_DESTROY:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/i;->a:LB/i;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/i;->c()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lb/i;->c()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lb/i;->c()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
