.class public final LO0/y;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LO0/u;

.field public final synthetic c:LO0/z;


# direct methods
.method public synthetic constructor <init>(LO0/z;LO0/u;I)V
    .locals 0

    iput p3, p0, LO0/y;->a:I

    iput-object p1, p0, LO0/y;->c:LO0/z;

    iput-object p2, p0, LO0/y;->b:LO0/u;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, LO0/y;->a:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    iget-object v0, p0, LO0/y;->c:LO0/z;

    invoke-virtual {v0, p1}, LO0/z;->i(I)V

    iget-boolean p1, v0, LO0/z;->C:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LO0/y;->b:LO0/u;

    iget-object v1, v0, LO0/z;->t:LO0/v;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, LO0/z;->C:Z

    :cond_0
    return-void

    :pswitch_0
    const/4 p1, 0x2

    iget-object v0, p0, LO0/y;->c:LO0/z;

    invoke-virtual {v0, p1}, LO0/z;->i(I)V

    iget-boolean p1, v0, LO0/z;->C:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LO0/y;->b:LO0/u;

    iget-object v1, v0, LO0/z;->t:LO0/v;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, LO0/z;->C:Z

    :cond_1
    return-void

    :pswitch_1
    const/4 p1, 0x1

    iget-object v0, p0, LO0/y;->c:LO0/z;

    invoke-virtual {v0, p1}, LO0/z;->i(I)V

    iget-boolean p1, v0, LO0/z;->C:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, LO0/y;->b:LO0/u;

    iget-object v1, v0, LO0/z;->t:LO0/v;

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, LO0/z;->C:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, LO0/y;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LO0/y;->c:LO0/z;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, LO0/z;->i(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, LO0/y;->c:LO0/z;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, LO0/z;->i(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, LO0/y;->c:LO0/z;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, LO0/z;->i(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
