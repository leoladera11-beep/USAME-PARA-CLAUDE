.class public final Ls/w;
.super LJ1/d;
.source "SourceFile"

# interfaces
.implements LN1/o;


# instance fields
.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/view/View;

.field public i:I

.field public j:I

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;LH1/a;)V
    .locals 0

    iput-object p1, p0, Ls/w;->m:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, LJ1/d;-><init>(LH1/a;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;LH1/a;)LH1/a;
    .locals 2

    new-instance v0, Ls/w;

    iget-object v1, p0, Ls/w;->m:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Ls/w;-><init>(Landroid/view/ViewGroup;LH1/a;)V

    iput-object p1, v0, Ls/w;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, LE1/e;->c:LE1/e;

    iget v1, p0, Ls/w;->k:I

    const/4 v2, 0x1

    sget-object v3, LI1/a;->e:LI1/a;

    if-eqz v1, :cond_6

    const/4 v4, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    iget v1, p0, Ls/w;->j:I

    iget v4, p0, Ls/w;->i:I

    iget-object v5, p0, Ls/w;->g:Landroid/view/ViewGroup;

    iget-object v6, p0, Ls/w;->l:Ljava/lang/Object;

    check-cast v6, LR1/c;

    invoke-static {p1}, Lcom/brisa/local/v;->w(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Ls/w;->j:I

    iget v5, p0, Ls/w;->i:I

    iget-object v6, p0, Ls/w;->h:Landroid/view/View;

    iget-object v7, p0, Ls/w;->g:Landroid/view/ViewGroup;

    iget-object v8, p0, Ls/w;->l:Ljava/lang/Object;

    check-cast v8, LR1/c;

    invoke-static {p1}, Lcom/brisa/local/v;->w(Ljava/lang/Object;)V

    instance-of p1, v6, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    check-cast v6, Landroid/view/ViewGroup;

    const-string p1, "<this>"

    invoke-static {v6, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ls/w;

    const/4 v9, 0x0

    invoke-direct {p1, v6, v9}, Ls/w;-><init>(Landroid/view/ViewGroup;LH1/a;)V

    iput-object v8, p0, Ls/w;->l:Ljava/lang/Object;

    iput-object v7, p0, Ls/w;->g:Landroid/view/ViewGroup;

    iput-object v9, p0, Ls/w;->h:Landroid/view/View;

    iput v5, p0, Ls/w;->i:I

    iput v1, p0, Ls/w;->j:I

    iput v4, p0, Ls/w;->k:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LR1/c;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v6, v6}, LJ1/d;->e(Ljava/lang/Object;LH1/a;)LH1/a;

    move-result-object p1

    iput-object p1, v6, LR1/c;->h:LH1/a;

    invoke-virtual {v6}, LR1/c;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    iput-object v6, v8, LR1/c;->g:Ljava/util/Iterator;

    iput v4, v8, LR1/c;->e:I

    iput-object p0, v8, LR1/c;->h:LH1/a;

    move-object p1, v3

    :goto_0
    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v3, :cond_4

    return-object v3

    :cond_4
    move v4, v5

    move-object v5, v7

    move-object v6, v8

    :goto_2
    move-object v7, v5

    move-object v8, v6

    move v5, v4

    :cond_5
    add-int/2addr v5, v2

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/brisa/local/v;->w(Ljava/lang/Object;)V

    iget-object p1, p0, Ls/w;->l:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, LR1/c;

    iget-object v7, p0, Ls/w;->m:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "getChildAt(index)"

    invoke-static {p1, v0}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, p0, Ls/w;->l:Ljava/lang/Object;

    iput-object v7, p0, Ls/w;->g:Landroid/view/ViewGroup;

    iput-object p1, p0, Ls/w;->h:Landroid/view/View;

    iput v5, p0, Ls/w;->i:I

    iput v1, p0, Ls/w;->j:I

    iput v2, p0, Ls/w;->k:I

    iput-object p1, v8, LR1/c;->f:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v8, LR1/c;->e:I

    iput-object p0, v8, LR1/c;->h:LH1/a;

    return-object v3

    :cond_7
    return-object v0
.end method
