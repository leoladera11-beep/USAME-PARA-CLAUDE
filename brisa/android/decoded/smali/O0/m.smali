.class public final LO0/m;
.super LR0/z;
.source "SourceFile"


# instance fields
.field public final c:[Ljava/lang/String;

.field public final d:[F

.field public e:I

.field public final synthetic f:LO0/u;


# direct methods
.method public constructor <init>(LO0/u;[Ljava/lang/String;[F)V
    .locals 0

    iput-object p1, p0, LO0/m;->f:LO0/u;

    invoke-direct {p0}, LR0/z;-><init>()V

    iput-object p2, p0, LO0/m;->c:[Ljava/lang/String;

    iput-object p3, p0, LO0/m;->d:[F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LO0/m;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final b(LR0/T;I)V
    .locals 4

    check-cast p1, LO0/q;

    iget-object v0, p1, LO0/q;->u:Landroid/view/View;

    iget-object v1, p1, LR0/T;->a:Landroid/view/View;

    iget-object v2, p0, LO0/m;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge p2, v3, :cond_0

    iget-object p1, p1, LO0/q;->t:Landroid/widget/TextView;

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget p1, p0, LO0/m;->e:I

    const/4 v2, 0x0

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p1, LO0/l;

    invoke-direct {p1, p0, p2}, LO0/l;-><init>(LO0/m;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;)LR0/T;
    .locals 3

    iget-object v0, p0, LO0/m;->f:LO0/u;

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
