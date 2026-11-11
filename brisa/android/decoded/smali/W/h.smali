.class public final LW/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(ILG/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p2, p2, LG/x;->e:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, LW/h;->e:Z

    invoke-static {p1, v1}, LN/a;->n(IZ)Z

    move-result p1

    iput-boolean p1, p0, LW/h;->f:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, LW/h;

    iget-boolean v0, p0, LW/h;->f:Z

    iget-boolean v1, p1, LW/h;->f:Z

    sget-object v2, Lu1/A;->a:Lu1/y;

    invoke-virtual {v2, v0, v1}, Lu1/y;->c(ZZ)Lu1/A;

    move-result-object v0

    iget-boolean v1, p0, LW/h;->e:Z

    iget-boolean p1, p1, LW/h;->e:Z

    invoke-virtual {v0, v1, p1}, Lu1/A;->c(ZZ)Lu1/A;

    move-result-object p1

    invoke-virtual {p1}, Lu1/A;->e()I

    move-result p1

    return p1
.end method
