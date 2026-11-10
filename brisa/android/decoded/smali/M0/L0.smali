.class public final LM0/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:LM0/j2;

.field public static final h:LM0/j2;

.field public static final i:LG/c0;

.field public static final j:LG/c0;


# instance fields
.field public final a:Z

.field public final b:LM0/j2;

.field public final c:LG/c0;

.field public final d:Lu1/P;

.field public final e:Lu1/P;

.field public final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, LM0/i2;->d:Lu1/C0;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, LM0/i2;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, LM0/i2;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, LM0/i2;->e:Lu1/C0;

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    new-instance v5, LM0/i2;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, LM0/i2;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, LM0/j2;

    invoke-direct {v4, v0}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    sput-object v4, LM0/L0;->g:LM0/j2;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    new-instance v5, LM0/i2;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, LM0/i2;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, LM0/j2;

    invoke-direct {v4, v0}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    sput-object v4, LM0/L0;->h:LM0/j2;

    new-instance v0, La1/g;

    const/4 v4, 0x6

    invoke-direct {v0, v4}, La1/g;-><init>(I)V

    sget-object v4, LM0/i2;->f:Lu1/C0;

    invoke-virtual {v0, v4}, La1/g;->u(Ljava/util/List;)V

    sget-object v5, LM0/i2;->g:Lu1/C0;

    invoke-virtual {v0, v5}, La1/g;->u(Ljava/util/List;)V

    invoke-virtual {v0, v1}, La1/g;->u(Ljava/util/List;)V

    invoke-virtual {v0, v3}, La1/g;->u(Ljava/util/List;)V

    new-instance v3, LM0/j2;

    iget-object v0, v0, La1/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-direct {v3, v0}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v3, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    new-instance v5, LM0/i2;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, LM0/i2;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    new-instance v3, LM0/i2;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, LM0/i2;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    new-instance v1, LM0/j2;

    invoke-direct {v1, v0}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    new-instance v0, LG/b0;

    invoke-direct {v0}, LG/b0;-><init>()V

    sget-object v1, LG/b0;->b:LG/u;

    iget-object v2, v0, LG/b0;->a:LE/b;

    invoke-virtual {v2, v1}, LE/b;->b(LG/u;)V

    sget-object v3, LG/b0;->c:LG/u;

    invoke-virtual {v2, v3}, LE/b;->b(LG/u;)V

    invoke-virtual {v0}, LG/b0;->c()LG/c0;

    move-result-object v0

    sput-object v0, LM0/L0;->i:LG/c0;

    new-instance v0, LG/b0;

    invoke-direct {v0}, LG/b0;-><init>()V

    iget-object v2, v0, LG/b0;->a:LE/b;

    invoke-virtual {v2, v1}, LE/b;->b(LG/u;)V

    invoke-virtual {v0}, LG/b0;->c()LG/c0;

    move-result-object v0

    sput-object v0, LM0/L0;->j:LG/c0;

    return-void
.end method

.method public constructor <init>(ZLM0/j2;LG/c0;Lu1/P;Lu1/P;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LM0/L0;->a:Z

    iput-object p2, p0, LM0/L0;->b:LM0/j2;

    iput-object p3, p0, LM0/L0;->c:LG/c0;

    iput-object p4, p0, LM0/L0;->d:Lu1/P;

    iput-object p5, p0, LM0/L0;->e:Lu1/P;

    iput-object p6, p0, LM0/L0;->f:Landroid/os/Bundle;

    return-void
.end method
