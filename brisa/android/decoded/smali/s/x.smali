.class public final Ls/x;
.super LJ1/d;
.source "SourceFile"

# interfaces
.implements LN1/o;


# instance fields
.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;LH1/a;)V
    .locals 0

    iput-object p1, p0, Ls/x;->i:Landroid/view/View;

    invoke-direct {p0, p2}, LJ1/d;-><init>(LH1/a;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;LH1/a;)LH1/a;
    .locals 2

    new-instance v0, Ls/x;

    iget-object v1, p0, Ls/x;->i:Landroid/view/View;

    invoke-direct {v0, v1, p2}, Ls/x;-><init>(Landroid/view/View;LH1/a;)V

    iput-object p1, v0, Ls/x;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, LE1/e;->c:LE1/e;

    iget v1, p0, Ls/x;->g:I

    iget-object v2, p0, Ls/x;->i:Landroid/view/View;

    const/4 v3, 0x1

    sget-object v4, LI1/a;->e:LI1/a;

    if-eqz v1, :cond_5

    const/4 v5, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, Lcom/brisa/local/v;->w(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Ls/x;->h:Ljava/lang/Object;

    check-cast v1, LR1/c;

    invoke-static {p1}, Lcom/brisa/local/v;->w(Ljava/lang/Object;)V

    instance-of p1, v2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    const-string p1, "<this>"

    invoke-static {v2, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ls/w;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Ls/w;-><init>(Landroid/view/ViewGroup;LH1/a;)V

    iput-object v3, p0, Ls/x;->h:Ljava/lang/Object;

    iput v5, p0, Ls/x;->g:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LR1/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v2, v2}, LJ1/d;->e(Ljava/lang/Object;LH1/a;)LH1/a;

    move-result-object p1

    iput-object p1, v2, LR1/c;->h:LH1/a;

    invoke-virtual {v2}, LR1/c;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    iput-object v2, v1, LR1/c;->g:Ljava/util/Iterator;

    iput v5, v1, LR1/c;->e:I

    iput-object p0, v1, LR1/c;->h:LH1/a;

    move-object p1, v4

    :goto_0
    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v4, :cond_4

    return-object v4

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    invoke-static {p1}, Lcom/brisa/local/v;->w(Ljava/lang/Object;)V

    iget-object p1, p0, Ls/x;->h:Ljava/lang/Object;

    check-cast p1, LR1/c;

    iput-object p1, p0, Ls/x;->h:Ljava/lang/Object;

    iput v3, p0, Ls/x;->g:I

    iput-object v2, p1, LR1/c;->f:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p1, LR1/c;->e:I

    iput-object p0, p1, LR1/c;->h:LH1/a;

    return-object v4
.end method
