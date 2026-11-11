.class public final synthetic LO0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:LO0/m;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(LO0/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/l;->e:LO0/m;

    iput p2, p0, LO0/l;->f:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LO0/l;->e:LO0/m;

    iget-object v0, p1, LO0/m;->f:LO0/u;

    iget v1, p1, LO0/m;->e:I

    iget v2, p0, LO0/l;->f:I

    if-eq v2, v1, :cond_0

    iget-object p1, p1, LO0/m;->d:[F

    aget p1, p1, v2

    invoke-static {v0, p1}, LO0/u;->b(LO0/u;F)V

    :cond_0
    iget-object p1, v0, LO0/u;->r:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
