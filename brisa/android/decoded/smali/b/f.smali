.class public final Lb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;I)V
    .locals 0

    iput p2, p0, Lb/f;->a:I

    iput-object p1, p0, Lb/f;->b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LB/g;LB/d;)V
    .locals 0

    iget p1, p0, Lb/f;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lb/f;->b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p2, p1, Lb/h;->f:LB/D;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lb/g;->a:LB/D;

    iput-object p2, p1, Lb/h;->f:LB/D;

    :cond_0
    iget-object p2, p1, Lb/h;->f:LB/D;

    if-nez p2, :cond_1

    new-instance p2, LB/D;

    invoke-direct {p2}, LB/D;-><init>()V

    iput-object p2, p1, Lb/h;->f:LB/D;

    :cond_1
    iget-object p1, p1, Lb/h;->d:LB/i;

    invoke-virtual {p1, p0}, LB/i;->f(LB/f;)V

    return-void

    :pswitch_0
    sget-object p1, LB/d;->ON_DESTROY:LB/d;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lb/f;->b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object p1, p1, Lb/h;->b:Lc/a;

    const/4 p2, 0x0

    iput-object p2, p1, Lc/a;->b:Lb/h;

    iget-object p1, p0, Lb/f;->b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lb/f;->b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Lb/h;->e()LB/D;

    move-result-object p1

    invoke-virtual {p1}, LB/D;->a()V

    :cond_2
    return-void

    :pswitch_1
    sget-object p1, LB/d;->ON_STOP:LB/d;

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lb/f;->b:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
