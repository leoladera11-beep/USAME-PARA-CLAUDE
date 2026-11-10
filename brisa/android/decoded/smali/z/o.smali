.class public final Lz/o;
.super Lcom/brisa/local/a;
.source "SourceFile"

# interfaces
.implements LB/E;
.implements LB/g;
.implements LS0/e;
.implements Lz/D;


# instance fields
.field public final c:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

.field public final d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

.field public final e:Landroid/os/Handler;

.field public final f:Lz/A;

.field public final synthetic g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lz/A;

    invoke-direct {v1}, Lz/A;-><init>()V

    iput-object v1, p0, Lz/o;->f:Lz/A;

    iput-object p1, p0, Lz/o;->c:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iput-object p1, p0, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iput-object v0, p0, Lz/o;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()LM0/m1;
    .locals 1

    iget-object v0, p0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lb/h;->e:LM0/l;

    iget-object v0, v0, LM0/l;->g:Ljava/lang/Object;

    check-cast v0, LM0/m1;

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final e()LB/D;
    .locals 1

    iget-object v0, p0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0}, Lb/h;->e()LB/D;

    move-result-object v0

    return-object v0
.end method

.method public final g()LB/i;
    .locals 1

    iget-object v0, p0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:LB/i;

    return-object v0
.end method

.method public final w(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lz/o;->g:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
