.class public Lz/j;
.super Lz/m;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final R:Lz/g;

.field public final S:Lz/h;

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:Z

.field public final Z:LZ0/i;

.field public a0:Landroid/app/Dialog;

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz/m;-><init>()V

    new-instance v0, LB/k;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LB/k;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lz/g;

    invoke-direct {v0, p0}, Lz/g;-><init>(Lz/j;)V

    iput-object v0, p0, Lz/j;->R:Lz/g;

    new-instance v0, Lz/h;

    invoke-direct {v0, p0}, Lz/h;-><init>(Lz/j;)V

    iput-object v0, p0, Lz/j;->S:Lz/h;

    const/4 v0, 0x0

    iput v0, p0, Lz/j;->T:I

    iput v0, p0, Lz/j;->U:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz/j;->V:Z

    iput-boolean v1, p0, Lz/j;->W:Z

    const/4 v1, -0x1

    iput v1, p0, Lz/j;->X:I

    new-instance v1, LZ0/i;

    invoke-direct {v1, p0}, LZ0/i;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lz/j;->Z:LZ0/i;

    iput-boolean v0, p0, Lz/j;->e0:Z

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:dialogShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lz/j;->T:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lz/j;->U:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lz/j;->V:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lz/j;->W:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lz/j;->X:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final B()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    iget-object v0, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz/j;->b0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f09009e

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    iget-object v0, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lz/m;->D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public G()Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreateDialog called for DialogFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lb/i;

    invoke-virtual {p0}, Lz/m;->E()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lz/j;->U:I

    invoke-direct {v0, v2, v1}, Lb/i;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method public final h()Lcom/brisa/local/a;
    .locals 2

    new-instance v0, Lz/i;

    invoke-direct {v0, p0}, Lz/i;-><init>(Lz/m;)V

    new-instance v1, Lz/i;

    invoke-direct {v1, p0, v0}, Lz/i;-><init>(Lz/j;Lz/i;)V

    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-boolean p1, p0, Lz/j;->b0:Z

    if-nez p1, :cond_7

    const/4 p1, 0x3

    invoke-static {p1}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDismiss called for DialogFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lz/j;->c0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/j;->c0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lz/j;->d0:Z

    iget-object v1, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iput-boolean v0, p0, Lz/j;->b0:Z

    iget v1, p0, Lz/j;->X:I

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Lz/m;->m()Lz/A;

    move-result-object p1

    iget v1, p0, Lz/j;->X:I

    if-ltz v1, :cond_3

    new-instance v2, Lz/z;

    invoke-direct {v2, p1, v1}, Lz/z;-><init>(Lz/A;I)V

    invoke-virtual {p1, v2, v0}, Lz/A;->w(Lz/y;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lz/j;->X:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    invoke-static {v1, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lz/m;->m()Lz/A;

    move-result-object v1

    new-instance v2, Lz/a;

    invoke-direct {v2, v1}, Lz/a;-><init>(Lz/A;)V

    iput-boolean v0, v2, Lz/a;->o:Z

    iget-object v1, p0, Lz/m;->r:Lz/A;

    if-eqz v1, :cond_6

    iget-object v3, v2, Lz/a;->p:Lz/A;

    if-ne v1, v3, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lz/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already attached to a FragmentManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    new-instance v1, Lz/G;

    invoke-direct {v1, p1, p0}, Lz/G;-><init>(ILz/m;)V

    invoke-virtual {v2, v1}, Lz/a;->b(Lz/G;)V

    invoke-virtual {v2, v0}, Lz/a;->d(Z)I

    :cond_7
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    return-void
.end method

.method public final t(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lz/m;->t(Landroid/content/Context;)V

    iget-object p1, p0, Lz/m;->M:LB/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "observeForever"

    invoke-static {v0}, LB/o;->a(Ljava/lang/String;)V

    new-instance v0, LB/l;

    iget-object v1, p0, Lz/j;->Z:LZ0/i;

    invoke-direct {v0, p1, v1}, LB/n;-><init>(LB/o;LB/p;)V

    iget-object p1, p1, LB/o;->b:Lg/f;

    invoke-virtual {p1, v1}, Lg/f;->a(Ljava/lang/Object;)Lg/c;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, v2, Lg/c;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v2, Lg/c;

    invoke-direct {v2, v1, v0}, Lg/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p1, Lg/f;->h:I

    add-int/2addr v1, v3

    iput v1, p1, Lg/f;->h:I

    iget-object v1, p1, Lg/f;->f:Lg/c;

    if-nez v1, :cond_1

    iput-object v2, p1, Lg/f;->e:Lg/c;

    iput-object v2, p1, Lg/f;->f:Lg/c;

    goto :goto_0

    :cond_1
    iput-object v2, v1, Lg/c;->g:Lg/c;

    iput-object v1, v2, Lg/c;->h:Lg/c;

    iput-object v2, p1, Lg/f;->f:Lg/c;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    check-cast p1, LB/n;

    instance-of v1, p1, LB/m;

    if-nez v1, :cond_4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, LB/n;->b(Z)V

    :goto_2
    iget-boolean p1, p0, Lz/j;->d0:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz/j;->c0:Z

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lz/m;->t:Lz/A;

    invoke-virtual {v3, v2}, Lz/A;->R(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lz/m;->t:Lz/A;

    iput-boolean v1, v2, Lz/A;->E:Z

    iput-boolean v1, v2, Lz/A;->F:Z

    iget-object v3, v2, Lz/A;->L:Lz/C;

    iput-boolean v1, v3, Lz/C;->g:Z

    invoke-virtual {v2, v0}, Lz/A;->t(I)V

    :cond_0
    iget-object v2, p0, Lz/m;->t:Lz/A;

    iget v3, v2, Lz/A;->s:I

    if-lt v3, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, v2, Lz/A;->E:Z

    iput-boolean v1, v2, Lz/A;->F:Z

    iget-object v3, v2, Lz/A;->L:Lz/C;

    iput-boolean v1, v3, Lz/C;->g:Z

    invoke-virtual {v2, v0}, Lz/A;->t(I)V

    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget v2, p0, Lz/m;->w:I

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lz/j;->W:Z

    if-eqz p1, :cond_3

    const-string v2, "android:style"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lz/j;->T:I

    const-string v2, "android:theme"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lz/j;->U:I

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lz/j;->V:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Lz/j;->W:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lz/j;->W:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lz/j;->X:I

    :cond_3
    return-void
.end method

.method public final w()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    iget-object v1, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lz/j;->b0:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Lz/j;->c0:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Lz/j;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v0, p0, Lz/j;->a0:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/j;->e0:Z

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/m;->C:Z

    iget-boolean v1, p0, Lz/j;->d0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lz/j;->c0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lz/j;->c0:Z

    :cond_0
    iget-object v0, p0, Lz/m;->M:LB/o;

    iget-object v1, p0, Lz/j;->Z:LZ0/i;

    invoke-virtual {v0, v1}, LB/o;->g(LB/p;)V

    return-void
.end method

.method public final y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 8

    invoke-super {p0, p1}, Lz/m;->y(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-boolean v0, p0, Lz/j;->W:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_9

    iget-boolean v3, p0, Lz/j;->Y:Z

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    iget-boolean v0, p0, Lz/j;->e0:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lz/j;->Y:Z

    invoke-virtual {p0}, Lz/j;->G()Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lz/j;->a0:Landroid/app/Dialog;

    iget-boolean v5, p0, Lz/j;->W:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget v5, p0, Lz/j;->T:I

    if-eq v5, v3, :cond_3

    if-eq v5, v2, :cond_3

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v7, 0x18

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    iget-object v4, p0, Lz/m;->s:Lz/o;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v4, Lz/o;->d:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    :goto_1
    if-eqz v6, :cond_5

    iget-object v4, p0, Lz/j;->a0:Landroid/app/Dialog;

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v4, p0, Lz/j;->a0:Landroid/app/Dialog;

    iget-boolean v5, p0, Lz/j;->V:Z

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, p0, Lz/j;->a0:Landroid/app/Dialog;

    iget-object v5, p0, Lz/j;->R:Lz/g;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lz/j;->a0:Landroid/app/Dialog;

    iget-object v5, p0, Lz/j;->S:Lz/h;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v3, p0, Lz/j;->e0:Z

    goto :goto_3

    :cond_6
    iput-object v6, p0, Lz/j;->a0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iput-boolean v0, p0, Lz/j;->Y:Z

    goto :goto_5

    :goto_4
    iput-boolean v0, p0, Lz/j;->Y:Z

    throw p1

    :cond_7
    :goto_5
    invoke-static {v2}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "get layout inflater for DialogFragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from dialog context"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_6
    invoke-static {v2}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getting layout inflater for DialogFragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lz/j;->W:Z

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mShowsDialog = false: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCreatingDialog = true: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object p1
.end method
