.class public final LG/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I


# instance fields
.field public final a:LG/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LG/m;->a:I

    sput v0, LG/j;->b:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    array-length v1, p1

    sget v2, LG/j;->b:I

    invoke-static {v1, v2}, LJ/W;->e(II)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    mul-int v5, v3, v2

    add-int v6, v5, v2

    array-length v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-string v7, "bytes"

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, LG/g;

    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    invoke-direct {p1, v0}, LG/g;-><init>(Ljava/util/List;)V

    iput-object p1, p0, LG/j;->a:LG/g;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)[B
    .locals 9

    sget-object v0, LG/k;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p0}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, LJ/W;->b:[B

    return-object p0

    :cond_1
    invoke-static {p0}, Lu1/s;->k(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sget v4, LG/j;->b:I

    mul-int v5, v3, v4

    array-length v6, v1

    add-int/2addr v6, v5

    new-array v6, v6, [B

    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v8

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v7, v5

    if-eq v7, v4, :cond_3

    goto :goto_1

    :cond_3
    mul-int v7, v1, v4

    invoke-static {v5, v8, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    return-object v6

    :catch_0
    move-exception p0

    const-string v1, "BundleableByteArray"

    const-string v2, "Failed to read byte array from bundle list retriever"

    invoke-static {v1, v2, p0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
