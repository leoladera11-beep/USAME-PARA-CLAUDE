.class public final LW/g;
.super LW/m;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(ILG/r0;ILW/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LW/m;-><init>(ILG/r0;I)V

    iget-boolean p1, p4, LW/j;->B0:Z

    invoke-static {p5, p1}, LN/a;->n(IZ)Z

    move-result p1

    iput p1, p0, LW/g;->i:I

    iget-object p1, p0, LW/m;->h:LG/x;

    iget p2, p1, LG/x;->w:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iget p1, p1, LG/x;->x:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    mul-int p3, p2, p1

    :cond_1
    :goto_0
    iput p3, p0, LW/g;->j:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LW/g;->i:I

    return v0
.end method

.method public final bridge synthetic b(LW/m;)Z
    .locals 0

    check-cast p1, LW/g;

    const/4 p1, 0x0

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LW/g;

    iget v0, p0, LW/g;->j:I

    iget p1, p1, LW/g;->j:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
