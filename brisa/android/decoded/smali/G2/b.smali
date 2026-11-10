.class public final LG2/b;
.super LG2/f;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/util/Locale;

.field public final n:I


# direct methods
.method public constructor <init>(LG2/a;)V
    .locals 4

    iget-object v0, p1, LG2/a;->f:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p1, LG2/a;->d:Z

    iget-object v2, p1, LG2/a;->h:Ljava/lang/Object;

    check-cast v2, Lr2/d;

    iget v3, p1, LG2/a;->a:I

    invoke-direct {p0, v0, v1, v2, v3}, LG2/f;-><init>(Ljava/lang/String;ZLr2/d;I)V

    iget-object v0, p1, LG2/a;->j:Ljava/lang/Object;

    check-cast v0, LC2/c;

    if-eqz v0, :cond_0

    iget v1, v0, LC2/c;->j:I

    iput v1, p0, LG2/b;->j:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LG2/a;->j:Ljava/lang/Object;

    check-cast v0, LC2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LG2/a;->j:Ljava/lang/Object;

    check-cast v0, LC2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LG2/a;->j:Ljava/lang/Object;

    check-cast v0, LC2/c;

    iget-object v0, v0, LC2/c;->m:Ljava/lang/String;

    iput-object v0, p0, LG2/b;->k:Ljava/lang/String;

    :cond_0
    iget v0, p1, LG2/a;->b:I

    iput v0, p0, LG2/b;->i:I

    iget-object v0, p1, LG2/a;->g:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LG2/b;->l:Ljava/lang/String;

    iget-object v0, p1, LG2/a;->i:Ljava/io/Serializable;

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, LG2/b;->m:Ljava/util/Locale;

    iget p1, p1, LG2/a;->c:I

    iput p1, p0, LG2/b;->n:I

    return-void
.end method


# virtual methods
.method public final a(LG2/f;)Z
    .locals 2

    invoke-super {p0, p1}, LG2/f;->a(LG2/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, LG2/b;

    if-eqz v0, :cond_0

    check-cast p1, LG2/b;

    iget v0, p1, LG2/b;->i:I

    iget v1, p0, LG2/b;->i:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, LG2/b;->l:Ljava/lang/String;

    iget-object v1, p1, LG2/b;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LG2/b;->n:I

    iget v1, p1, LG2/b;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LG2/b;->m:Ljava/util/Locale;

    iget-object p1, p1, LG2/b;->m:Ljava/util/Locale;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
