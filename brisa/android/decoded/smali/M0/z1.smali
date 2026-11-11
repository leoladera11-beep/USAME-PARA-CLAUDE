.class public final synthetic LM0/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/Q1;
.implements LM0/R1;
.implements LJ/k;


# instance fields
.field public final synthetic e:LM0/W1;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LM0/W1;II)V
    .locals 0

    iput-object p1, p0, LM0/z1;->e:LM0/W1;

    iput p2, p0, LM0/z1;->f:I

    iput p3, p0, LM0/z1;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/d2;LM0/N0;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, LM0/z1;->e:LM0/W1;

    iget v1, p0, LM0/z1;->f:I

    invoke-virtual {v0, p2, p1, v1}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result v1

    iget v2, p0, LM0/z1;->g:I

    invoke-virtual {v0, p2, p1, v2}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, v1, p3, p2}, LM0/d2;->q0(ILjava/util/List;I)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LM0/d2;

    iget-object p1, p0, LM0/z1;->e:LM0/W1;

    iget-object v0, p1, LM0/W1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LM0/W1;->l:LM0/U1;

    if-eqz p1, :cond_0

    iget v0, p0, LM0/z1;->f:I

    iget v1, p0, LM0/z1;->g:I

    invoke-virtual {p1, v0, v1}, LM0/U1;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public c(LM0/d2;LM0/N0;)V
    .locals 3

    iget-object v0, p0, LM0/z1;->e:LM0/W1;

    iget v1, p0, LM0/z1;->f:I

    invoke-virtual {v0, p2, p1, v1}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result v1

    iget v2, p0, LM0/z1;->g:I

    invoke-virtual {v0, p2, p1, v2}, LM0/W1;->J0(LM0/N0;LM0/d2;I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, LM0/d2;->A0(II)V

    return-void
.end method
