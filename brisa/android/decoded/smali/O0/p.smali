.class public final LO0/p;
.super LR0/z;
.source "SourceFile"


# instance fields
.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Landroid/graphics/drawable/Drawable;

.field public final synthetic f:LO0/u;


# direct methods
.method public constructor <init>(LO0/u;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, LO0/p;->f:LO0/u;

    invoke-direct {p0}, LR0/z;-><init>()V

    iput-object p2, p0, LO0/p;->c:[Ljava/lang/String;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, LO0/p;->d:[Ljava/lang/String;

    iput-object p3, p0, LO0/p;->e:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LO0/p;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final b(LR0/T;I)V
    .locals 4

    check-cast p1, LO0/o;

    iget-object v0, p1, LR0/T;->a:Landroid/view/View;

    invoke-virtual {p0, p2}, LO0/p;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LR0/G;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, LR0/G;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v1, LR0/G;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, LR0/G;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p1, LO0/o;->t:Landroid/widget/TextView;

    iget-object v1, p1, LO0/o;->v:Landroid/widget/ImageView;

    iget-object p1, p1, LO0/o;->u:Landroid/widget/TextView;

    iget-object v2, p0, LO0/p;->c:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LO0/p;->d:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v2, 0x8

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, LO0/p;->e:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, p2

    if-nez p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;)LR0/T;
    .locals 4

    iget-object v0, p0, LO0/p;->f:LO0/u;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v1, LO0/o;

    invoke-direct {v1, v0, p1}, LO0/o;-><init>(LO0/u;Landroid/view/View;)V

    return-object v1
.end method

.method public final d(I)Z
    .locals 4

    iget-object v0, p0, LO0/p;->f:LO0/u;

    iget-object v1, v0, LO0/u;->q0:LG/g0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    return v3

    :cond_1
    const/16 p1, 0x1e

    invoke-interface {v1, p1}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, LO0/u;->q0:LG/g0;

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    const/16 p1, 0xd

    invoke-interface {v1, p1}, LG/g0;->S0(I)Z

    move-result p1

    return p1
.end method
