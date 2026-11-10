.class public final synthetic LD2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:LD2/k;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LD2/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/j;->a:LD2/k;

    iput p2, p0, LD2/j;->b:I

    iput-object p3, p0, LD2/j;->c:Ljava/lang/String;

    iput-object p4, p0, LD2/j;->d:Ljava/lang/String;

    iput-object p5, p0, LD2/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, LD2/j;->a:LD2/k;

    iget-object v1, p0, LD2/j;->c:Ljava/lang/String;

    iget-object v5, p0, LD2/j;->d:Ljava/lang/String;

    iget-object v6, p0, LD2/j;->e:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, LC1/d;

    :try_start_0
    const-string p1, "itag"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, LC1/d;->c(ILjava/lang/String;)I

    move-result p1

    sget-object v3, LC2/c;->t:[LC2/c;

    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x39

    if-ge v4, v7, :cond_1

    aget-object v7, v3, v4

    iget v8, v7, LC2/c;->f:I

    if-ne p1, v8, :cond_0

    new-instance v3, LC2/c;

    invoke-direct {v3, v7}, LC2/c;-><init>(LC2/c;)V

    iget v4, v3, LC2/c;->r:I
    :try_end_0
    .catch Lu2/d; {:try_start_0 .. :try_end_0} :catch_0

    iget p1, p0, LD2/j;->b:I

    if-ne v4, p1, :cond_2

    :try_start_1
    invoke-virtual/range {v0 .. v6}, LD2/k;->b(Ljava/lang/String;LC1/d;LC2/c;ILjava/lang/String;Ljava/lang/String;)LD2/a;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lu2/f;

    const-string v1, "itag "

    const-string v2, " is not supported"

    invoke-static {v1, v2, p1}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lu2/d; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
