.class public final LM0/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LM0/j2;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Lu1/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, LM0/j2;

    invoke-direct {v1, v0}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    sput-object v1, LM0/j2;->b:LM0/j2;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j2;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lu1/b0;->k(Ljava/util/Collection;)Lu1/b0;

    move-result-object p1

    iput-object p1, p0, LM0/j2;->a:Lu1/b0;

    return-void
.end method

.method public static b(Landroid/os/Bundle;)LM0/j2;
    .locals 3

    sget-object v0, LM0/j2;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "SessionCommands"

    const-string v0, "Missing commands. Creating an empty SessionCommands"

    invoke-static {p0, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, LM0/j2;->b:LM0/j2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, LM0/i2;->a(Landroid/os/Bundle;)LM0/i2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, LM0/j2;

    invoke-direct {p0, v0}, LM0/j2;-><init>(Ljava/util/HashSet;)V

    return-object p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Use contains(Command) for custom command"

    invoke-static {v3, v2}, LF1/i;->f(Ljava/lang/String;Z)V

    iget-object v2, p0, LM0/j2;->a:Lu1/b0;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/i2;

    iget v3, v3, LM0/i2;->a:I

    if-ne v3, p1, :cond_1

    return v1

    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LM0/j2;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LM0/j2;

    iget-object v0, p0, LM0/j2;->a:Lu1/b0;

    iget-object p1, p1, LM0/j2;->a:Lu1/b0;

    invoke-virtual {v0, p1}, Lu1/b0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LM0/j2;->a:Lu1/b0;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
