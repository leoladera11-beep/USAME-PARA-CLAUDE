.class public abstract LP/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu1/C0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    sput-object v0, LP/V;->a:Lu1/C0;

    return-void
.end method

.method public static a(Landroid/media/AudioDeviceInfo;)Lu1/P;
    .locals 5

    invoke-static {p0}, LO/h;->n(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, LJ2/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LJ2/c;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LO/h;->f(Ljava/lang/Object;)Landroid/media/AudioProfile;

    move-result-object v1

    invoke-static {v1}, LO/h;->c(Landroid/media/AudioProfile;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, LO/h;->A(Landroid/media/AudioProfile;)I

    move-result v2

    invoke-static {v2}, LJ/W;->C(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LO/h;->z(Landroid/media/AudioProfile;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object p0

    return-object p0
.end method
