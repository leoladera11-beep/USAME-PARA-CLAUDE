.class public final Lq2/x;
.super Lq2/B;
.source "SourceFile"


# static fields
.field public static final e:LW0/c;


# instance fields
.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW0/c;

    new-instance v1, LD2/c;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LD2/c;-><init>(I)V

    invoke-direct {v0, v1}, LW0/c;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lq2/x;->e:LW0/c;

    return-void
.end method

.method public constructor <init>(Lq2/o;)V
    .locals 2

    invoke-direct {p0, p1}, Lq2/B;-><init>(Lq2/o;)V

    instance-of v0, p1, Lq2/c;

    if-eqz v0, :cond_2

    check-cast p1, Lq2/c;

    iget-object p1, p1, Lq2/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq2/o;

    instance-of v1, v0, Lq2/A;

    if-nez v1, :cond_1

    instance-of v0, v0, Lq2/z;

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lq2/x;->d:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    invoke-virtual {v0}, Lq2/o;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final b(Lo2/j;Lo2/j;)Z
    .locals 5

    iget-boolean p1, p0, Lq2/x;->d:Z

    const/4 v0, 0x1

    iget-object v1, p0, Lq2/B;->a:Lq2/o;

    if-eqz p1, :cond_2

    iget-object p1, p2, Lo2/p;->e:Lo2/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo2/j;->O()Lo2/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    invoke-virtual {v1, p2, p1}, Lq2/o;->b(Lo2/j;Lo2/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lo2/p;->p()Lo2/j;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lq2/x;->e:LW0/c;

    invoke-virtual {p1}, LW0/c;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/q;

    iget-object v3, v2, Lo2/q;->j:Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo2/p;

    iput-object v3, v2, Lo2/q;->f:Lo2/p;

    :cond_3
    iput-object p2, v2, Lo2/q;->g:Lo2/p;

    iput-object p2, v2, Lo2/q;->h:Lo2/p;

    iput-object p2, v2, Lo2/q;->e:Lo2/p;

    invoke-virtual {p2}, Lo2/j;->x()Lo2/j;

    move-result-object v3

    iput-object v3, v2, Lo2/q;->i:Lo2/p;

    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lo2/q;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lo2/q;->a()V

    iget-object v3, v2, Lo2/q;->f:Lo2/p;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lo2/q;->g:Lo2/p;

    iput-object v4, v2, Lo2/q;->h:Lo2/p;

    iput-object v3, v2, Lo2/q;->g:Lo2/p;

    invoke-virtual {v3}, Lo2/p;->x()Lo2/j;

    move-result-object v4

    iput-object v4, v2, Lo2/q;->i:Lo2/p;

    const/4 v4, 0x0

    iput-object v4, v2, Lo2/q;->f:Lo2/p;

    if-ne v3, p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p2, v3}, Lq2/o;->d(Lo2/j;Lo2/p;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, LW0/c;->x(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_6
    :try_start_1
    new-instance p2, Ljava/util/NoSuchElementException;

    invoke-direct {p2}, Ljava/util/NoSuchElementException;-><init>()V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    invoke-virtual {p1, v2}, LW0/c;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :goto_2
    invoke-virtual {p1, v2}, LW0/c;->x(Ljava/lang/Object;)V

    throw p2
.end method

.method public final g(Lo2/j;Lo2/p;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq2/B;->a:Lq2/o;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
