.class public abstract LR0/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:Ljava/util/List;


# instance fields
.field public final a:Landroid/view/View;

.field public b:Ljava/lang/ref/WeakReference;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:LR0/T;

.field public h:LR0/T;

.field public i:I

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/List;

.field public l:I

.field public m:LM0/s0;

.field public n:Z

.field public o:I

.field public p:I

.field public q:Landroidx/recyclerview/widget/RecyclerView;

.field public r:LR0/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, LR0/T;->s:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LR0/T;->c:I

    iput v0, p0, LR0/T;->d:I

    iput v0, p0, LR0/T;->e:I

    iput v0, p0, LR0/T;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, LR0/T;->g:LR0/T;

    iput-object v1, p0, LR0/T;->h:LR0/T;

    iput-object v1, p0, LR0/T;->j:Ljava/util/ArrayList;

    iput-object v1, p0, LR0/T;->k:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, LR0/T;->l:I

    iput-object v1, p0, LR0/T;->m:LM0/s0;

    iput-boolean v2, p0, LR0/T;->n:Z

    iput v2, p0, LR0/T;->o:I

    iput v0, p0, LR0/T;->p:I

    if-eqz p1, :cond_0

    iput-object p1, p0, LR0/T;->a:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, LR0/T;->i:I

    or-int/2addr p1, v0

    iput p1, p0, LR0/T;->i:I

    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, LR0/T;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, LR0/T;->c:I

    :cond_0
    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    iget-object v0, p0, LR0/T;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LR0/T;->k:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, LR0/T;->s:Ljava/util/List;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, LR0/T;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    sget-object v0, Ls/u;->a:Ljava/lang/reflect/Field;

    iget-object v0, p0, LR0/T;->a:Landroid/view/View;

    invoke-static {v0}, Ls/g;->i(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, LR0/T;->m:LM0/s0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(IZ)V
    .locals 2

    iget v0, p0, LR0/T;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, LR0/T;->c:I

    iput v0, p0, LR0/T;->d:I

    :cond_0
    iget v0, p0, LR0/T;->f:I

    if-ne v0, v1, :cond_1

    iget v0, p0, LR0/T;->c:I

    iput v0, p0, LR0/T;->f:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, LR0/T;->f:I

    add-int/2addr p2, p1

    iput p2, p0, LR0/T;->f:I

    :cond_2
    iget p2, p0, LR0/T;->c:I

    add-int/2addr p2, p1

    iput p2, p0, LR0/T;->c:I

    iget-object p1, p0, LR0/T;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, LR0/G;

    const/4 p2, 0x1

    iput-boolean p2, p1, LR0/G;->c:Z

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LR0/T;->i:I

    const/4 v1, -0x1

    iput v1, p0, LR0/T;->c:I

    iput v1, p0, LR0/T;->d:I

    iput v1, p0, LR0/T;->f:I

    iput v0, p0, LR0/T;->l:I

    const/4 v2, 0x0

    iput-object v2, p0, LR0/T;->g:LR0/T;

    iput-object v2, p0, LR0/T;->h:LR0/T;

    iget-object v2, p0, LR0/T;->j:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget v2, p0, LR0/T;->i:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, LR0/T;->i:I

    iput v0, p0, LR0/T;->o:I

    iput v1, p0, LR0/T;->p:I

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->g(LR0/T;)V

    return-void
.end method

.method public final m(Z)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, LR0/T;->l:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, LR0/T;->l:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, LR0/T;->l:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    iget p1, p0, LR0/T;->i:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, LR0/T;->i:I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget p1, p0, LR0/T;->i:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, LR0/T;->i:I

    :cond_3
    return-void
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, LR0/T;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LR0/T;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id=-1, oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LR0/T;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LR0/T;->f:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LR0/T;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, LR0/T;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, LR0/T;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, LR0/T;->d()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v0, p0, LR0/T;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, LR0/T;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, LR0/T;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, LR0/T;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, LR0/T;->f()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LR0/T;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v0, p0, LR0/T;->i:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_a

    invoke-virtual {p0}, LR0/T;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v0, p0, LR0/T;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
