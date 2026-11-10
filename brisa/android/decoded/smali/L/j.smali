.class public final synthetic LL/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LL/k;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LL/k;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LL/j;->a:I

    iput-object p1, p0, LL/j;->b:LL/k;

    iput-object p2, p0, LL/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget v0, p0, LL/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL/j;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    iget-object v0, p0, LL/j;->b:LL/k;

    iget-object v1, v0, LL/k;->f:LN0/O;

    invoke-virtual {v1}, LN0/O;->t()LL/h;

    move-result-object v12

    iget v0, v0, LL/k;->g:I

    :try_start_0
    new-instance v1, LL/n;

    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v11}, LL/n;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    move-object v2, v12

    check-cast v2, LL/o;

    invoke-virtual {v2, v1}, LL/o;->d(LL/n;)J

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    array-length v3, v1

    if-ne v4, v3, :cond_1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_1
    array-length v3, v1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v4, v3}, LL/o;->read([BII)I

    move-result v3

    if-eq v3, v5, :cond_0

    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v3, v1, v0}, Lcom/brisa/local/v;->e(I[BI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, LL/o;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    check-cast v12, LL/o;

    invoke-virtual {v12}, LL/o;->close()V

    throw v0

    :pswitch_0
    iget-object v0, p0, LL/j;->c:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    iget-object v2, p0, LL/j;->b:LL/k;

    iget v2, v2, LL/k;->g:I

    invoke-static {v1, v0, v2}, Lcom/brisa/local/v;->e(I[BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
