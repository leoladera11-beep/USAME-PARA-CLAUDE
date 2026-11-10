.class public abstract Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/brisa/local/d0;

.field public static final b:Lh/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Ln/f;

    invoke-direct {v0}, Lcom/brisa/local/d0;-><init>()V

    sput-object v0, Ln/c;->a:Lcom/brisa/local/d0;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Ln/e;

    invoke-direct {v0}, Ln/d;-><init>()V

    sput-object v0, Ln/c;->a:Lcom/brisa/local/d0;

    goto :goto_0

    :cond_1
    new-instance v0, Ln/d;

    invoke-direct {v0}, Ln/d;-><init>()V

    sput-object v0, Ln/c;->a:Lcom/brisa/local/d0;

    :goto_0
    new-instance v0, Lh/i;

    invoke-direct {v0}, Lh/i;-><init>()V

    sput-object v0, Ln/c;->b:Lh/i;

    return-void
.end method

.method public static a(Lcom/brisa/local/VideoActivity;Lm/b;Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 11

    instance-of v0, p1, Lm/e;

    sget-object v1, Ln/c;->a:Lcom/brisa/local/d0;

    if-eqz v0, :cond_f

    check-cast p1, Lm/e;

    iget-object v0, p1, Lm/e;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ld1/m;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ld1/m;-><init>(I)V

    iget-object p1, p1, Lm/e;->a:LC2/b;

    sget-object v4, Lq/d;->a:Lh/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, LC2/b;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "-0"

    invoke-static {v4, v5, v6}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lq/d;->a:Lh/i;

    invoke-virtual {v5, v4}, Lh/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_3

    new-instance p0, Lq/a;

    invoke-direct {p0, v3, v5}, Lq/a;-><init>(Ld1/m;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_3
    sget-object v5, Lq/d;->a:Lh/i;

    invoke-virtual {v5, v4}, Lh/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_4

    new-instance p0, LJ/u;

    invoke-direct {p0, v6}, LJ/u;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_5

    :cond_4
    const/4 v6, 0x6

    :try_start_0
    invoke-static {p0, p1}, Lq/c;->a(Lcom/brisa/local/VideoActivity;LC2/b;)LJ/u;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p1, LJ/u;->g:Ljava/lang/Object;

    check-cast v7, [Lq/e;

    iget p1, p1, LJ/u;->f:I

    const/4 v8, -0x3

    const/4 v9, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v9, :cond_5

    :goto_1
    move v2, v8

    goto :goto_4

    :cond_5
    const/4 v2, -0x2

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_a

    array-length p1, v7

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    array-length p1, v7

    move v9, v2

    :goto_2
    if-ge v9, p1, :cond_b

    aget-object v10, v7, v9

    iget v10, v10, Lq/e;->e:I

    if-eqz v10, :cond_9

    if-gez v10, :cond_8

    goto :goto_1

    :cond_8
    move v2, v10

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    move v2, v9

    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    new-instance p0, LJ/u;

    invoke-direct {p0, v2, v6}, LJ/u;-><init>(II)V

    goto :goto_5

    :cond_c
    invoke-virtual {v1, p0, v7}, Lcom/brisa/local/d0;->i(Lcom/brisa/local/VideoActivity;[Lq/e;)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {v5, v4, p0}, Lh/i;->c(Ljava/lang/String;Landroid/graphics/Typeface;)V

    new-instance p1, LJ/u;

    invoke-direct {p1, p0}, LJ/u;-><init>(Landroid/graphics/Typeface;)V

    move-object p0, p1

    goto :goto_5

    :cond_d
    new-instance p0, LJ/u;

    invoke-direct {p0, v8, v6}, LJ/u;-><init>(II)V

    goto :goto_5

    :catch_0
    new-instance p0, LJ/u;

    const/4 p1, -0x1

    invoke-direct {p0, p1, v6}, LJ/u;-><init>(II)V

    :goto_5
    iget p1, p0, LJ/u;->f:I

    if-nez p1, :cond_e

    iget-object p1, p0, LJ/u;->g:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Typeface;

    new-instance v1, Lq/a;

    invoke-direct {v1, v3, p1}, Lq/a;-><init>(Ld1/m;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_e
    new-instance v1, Lq/a;

    invoke-direct {v1, p1, v3}, Lq/a;-><init>(ILd1/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    iget-object p0, p0, LJ/u;->g:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/graphics/Typeface;

    goto :goto_7

    :cond_f
    check-cast p1, Lm/c;

    invoke-virtual {v1, p0, p1, p2}, Lcom/brisa/local/d0;->h(Lcom/brisa/local/VideoActivity;Lm/c;Landroid/content/res/Resources;)Landroid/graphics/Typeface;

    move-result-object v5

    :goto_7
    if-eqz v5, :cond_10

    sget-object p0, Ln/c;->b:Lh/i;

    const/high16 p1, 0x7f080000

    invoke-static {p2, p1, p3, p4}, Ln/c;->b(Landroid/content/res/Resources;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lh/i;->c(Ljava/lang/String;Landroid/graphics/Typeface;)V

    :cond_10
    return-object v5
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
