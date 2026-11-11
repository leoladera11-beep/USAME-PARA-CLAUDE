.class public final LG/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LG/c0;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:LG/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG/b0;

    invoke-direct {v0}, LG/b0;-><init>()V

    invoke-virtual {v0}, LG/b0;->c()LG/c0;

    move-result-object v0

    sput-object v0, LG/c0;->b:LG/c0;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/c0;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LG/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/c0;->a:LG/u;

    return-void
.end method

.method public static b(Landroid/os/Bundle;)LG/c0;
    .locals 3

    sget-object v0, LG/c0;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, LG/c0;->b:LG/c0;

    return-object p0

    :cond_0
    new-instance v0, LG/b0;

    invoke-direct {v0}, LG/b0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, LG/b0;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LG/b0;->c()LG/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, LG/c0;->a:LG/u;

    iget-object v0, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final c()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LG/c0;->a:LG/u;

    iget-object v4, v3, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, LG/u;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, LG/c0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LG/c0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LG/c0;

    iget-object v0, p0, LG/c0;->a:LG/u;

    iget-object p1, p1, LG/c0;->a:LG/u;

    invoke-virtual {v0, p1}, LG/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LG/c0;->a:LG/u;

    iget-object v0, v0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method
