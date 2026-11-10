.class public final LO0/i;
.super LR0/z;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/List;

.field public final synthetic d:LO0/u;

.field public final synthetic e:I

.field public final synthetic f:LO0/u;


# direct methods
.method public constructor <init>(LO0/u;I)V
    .locals 0

    iput p2, p0, LO0/i;->e:I

    iput-object p1, p0, LO0/i;->f:LO0/u;

    iput-object p1, p0, LO0/i;->d:LO0/u;

    invoke-direct {p0}, LR0/z;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LO0/i;->c:Ljava/util/List;

    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LO0/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, LO0/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic b(LR0/T;I)V
    .locals 1

    iget v0, p0, LO0/i;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LO0/q;

    invoke-virtual {p0, p1, p2}, LO0/i;->f(LO0/q;I)V

    return-void

    :pswitch_0
    check-cast p1, LO0/q;

    invoke-virtual {p0, p1, p2}, LO0/i;->f(LO0/q;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/ViewGroup;)LR0/T;
    .locals 3

    iget-object v0, p0, LO0/i;->d:LO0/u;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, LO0/q;

    invoke-direct {v0, p1}, LO0/q;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d(LG/w0;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LO0/i;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LO0/i;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO0/r;

    iget-object v2, v2, LO0/r;->a:LG/x0;

    iget-object v2, v2, LG/x0;->b:LG/r0;

    iget-object v3, p1, LG/w0;->H:Lu1/T;

    invoke-virtual {v3, v2}, Lu1/T;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, LO0/i;->f:LO0/u;

    iget-object v1, v0, LO0/u;->D:Landroid/widget/ImageView;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object v4, p1

    check-cast v4, Lu1/C0;

    iget v4, v4, Lu1/C0;->h:I

    if-ge v3, v4, :cond_1

    move-object v4, p1

    check-cast v4, Lu1/C0;

    invoke-virtual {v4, v3}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LO0/r;

    iget-object v5, v4, LO0/r;->a:LG/x0;

    iget v4, v4, LO0/r;->b:I

    iget-object v5, v5, LG/x0;->e:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    iget-object v3, v0, LO0/u;->i0:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, v0, LO0/u;->j0:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_3

    iget-object v0, v0, LO0/u;->k0:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v0, v0, LO0/u;->l0:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, LO0/i;->c:Ljava/util/List;

    return-void
.end method

.method public f(LO0/q;I)V
    .locals 1

    iget v0, p0, LO0/i;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, LO0/i;->g(LO0/q;I)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, LO0/i;->g(LO0/q;I)V

    if-lez p2, :cond_1

    iget-object v0, p0, LO0/i;->c:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LO0/r;

    iget-object p1, p1, LO0/q;->u:Landroid/view/View;

    iget-object v0, p2, LO0/r;->a:LG/x0;

    iget p2, p2, LO0/r;->b:I

    iget-object v0, v0, LG/x0;->e:[Z

    aget-boolean p2, v0, p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(LO0/q;I)V
    .locals 6

    iget-object v0, p0, LO0/i;->d:LO0/u;

    iget-object v0, v0, LO0/u;->q0:LG/g0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_5

    iget p2, p0, LO0/i;->e:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p1, LO0/q;->t:Landroid/widget/TextView;

    const v0, 0x7f0d0051

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, LO0/i;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LO0/i;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO0/r;

    iget-object v2, v1, LO0/r;->a:LG/x0;

    iget v1, v1, LO0/r;->b:I

    iget-object v2, v2, LG/x0;->e:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p1, LO0/q;->u:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x4

    :goto_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, LR0/T;->a:Landroid/view/View;

    new-instance p2, LO0/g;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LO0/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :pswitch_0
    iget-object p2, p1, LO0/q;->t:Landroid/widget/TextView;

    const v0, 0x7f0d0050

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, LO0/i;->f:LO0/u;

    iget-object p2, p2, LO0/u;->q0:LG/g0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, LG/g0;->x0()LG/w0;

    move-result-object p2

    invoke-virtual {p0, p2}, LO0/i;->d(LG/w0;)Z

    move-result p2

    iget-object v0, p1, LO0/q;->u:Landroid/view/View;

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, LR0/T;->a:Landroid/view/View;

    new-instance p2, LO0/g;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LO0/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, LO0/i;->c:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LO0/r;

    iget-object v1, p2, LO0/r;->a:LG/x0;

    iget-object v1, v1, LG/x0;->b:LG/r0;

    invoke-interface {v0}, LG/g0;->x0()LG/w0;

    move-result-object v3

    iget-object v3, v3, LG/w0;->H:Lu1/T;

    invoke-virtual {v3, v1}, Lu1/T;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p2, LO0/r;->a:LG/x0;

    iget v5, p2, LO0/r;->b:I

    iget-object v3, v3, LG/x0;->e:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    iget-object v3, p1, LO0/q;->t:Landroid/widget/TextView;

    iget-object v5, p2, LO0/r;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, LO0/q;->u:Landroid/view/View;

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v4, 0x4

    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, LR0/T;->a:Landroid/view/View;

    new-instance v2, LO0/s;

    invoke-direct {v2, p0, v0, v1, p2}, LO0/s;-><init>(LO0/i;LG/g0;LG/r0;LO0/r;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
