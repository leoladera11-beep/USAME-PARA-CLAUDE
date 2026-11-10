.class public final Lv0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/z;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Landroid/util/SparseArray;

.field public final c:J

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/h;->a:Landroid/util/SparseArray;

    iput-object p2, p0, Lv0/h;->b:Landroid/util/SparseArray;

    iput-wide p3, p0, Lv0/h;->c:J

    iput-wide p5, p0, Lv0/h;->d:J

    iput p7, p0, Lv0/h;->e:I

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)Lb0/y;
    .locals 6

    iget-object v0, p0, Lv0/h;->a:Landroid/util/SparseArray;

    iget v1, p0, Lv0/h;->e:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iget-object v3, p0, Lv0/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [J

    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [J

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [J

    :cond_2
    array-length v0, v2

    if-eqz v0, :cond_4

    aget-wide v0, v2, v5

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v2, p1, p2, v0}, LJ/W;->d([JJZ)I

    move-result p1

    new-instance p2, Lb0/y;

    new-instance v0, Lb0/A;

    aget-wide v1, v2, p1

    aget-wide v3, v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lb0/A;-><init>(JJ)V

    invoke-direct {p2, v0, v0}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object p2

    :cond_4
    :goto_0
    new-instance p1, Lb0/y;

    new-instance p2, Lb0/A;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lv0/h;->d:J

    invoke-direct {p2, v0, v1, v2, v3}, Lb0/A;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object p1
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lv0/h;->c:J

    return-wide v0
.end method
