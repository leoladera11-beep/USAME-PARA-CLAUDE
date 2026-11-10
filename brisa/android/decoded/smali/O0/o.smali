.class public final LO0/o;
.super LR0/T;
.source "SourceFile"


# instance fields
.field public final t:Landroid/widget/TextView;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/ImageView;

.field public final synthetic w:LO0/u;


# direct methods
.method public constructor <init>(LO0/u;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, LO0/o;->w:LO0/u;

    invoke-direct {p0, p2}, LR0/T;-><init>(Landroid/view/View;)V

    const p1, 0x7f09004a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LO0/o;->t:Landroid/widget/TextView;

    const p1, 0x7f090061

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LO0/o;->u:Landroid/widget/TextView;

    const p1, 0x7f090048

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, LO0/o;->v:Landroid/widget/ImageView;

    new-instance p1, LO0/g;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LO0/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
