.class public final Lp2/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp2/E;->h:I

    iput v0, p0, Lp2/E;->i:I

    iput-object p1, p0, Lp2/E;->f:Ljava/lang/String;

    iput-object p2, p0, Lp2/E;->g:Ljava/lang/String;

    iput-object p3, p0, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lp2/E;->g()V

    return-void
.end method


# virtual methods
.method public final a()Lp2/E;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/E;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(I)Z
    .locals 1

    iget v0, p0, Lp2/E;->i:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)Z
    .locals 1

    iget v0, p0, Lp2/E;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp2/E;->a()Lp2/E;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lp2/E;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lp2/E;->h:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp2/E;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp2/E;

    iget-object v1, p0, Lp2/E;->f:Ljava/lang/String;

    iget-object v3, p1, Lp2/E;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp2/E;->e:Ljava/lang/String;

    iget-object v3, p1, Lp2/E;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp2/E;->g:Ljava/lang/String;

    iget-object v3, p1, Lp2/E;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lp2/E;->h:I

    iget p1, p1, Lp2/E;->h:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(I)V
    .locals 6

    and-int/lit16 v0, p1, 0x180

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp2/E;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ln2/e;->e(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_1

    const/16 v5, 0x3e

    if-eq v2, v5, :cond_1

    const/16 v5, 0x2f

    if-eq v2, v5, :cond_1

    if-eqz v2, :cond_1

    const v5, 0xfffd

    if-eq v2, v5, :cond_1

    invoke-static {v2}, Ln2/e;->i(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "Data and RcData tag names must start with an ASCII letter and contain no whitespace, \'<\', \'>\', \'/\', null, or replacement characters"

    invoke-static {v0, v2}, LS1/e;->l(Ljava/lang/String;Z)V

    :cond_3
    iget v0, p0, Lp2/E;->h:I

    or-int/2addr p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Lp2/E;->h:I

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lp2/E;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "http://www.w3.org/2000/svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v0, p0, Lp2/E;->g:Ljava/lang/String;

    const/16 v1, 0x81

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v3, Lp2/b;->b:[Ljava/lang/String;

    invoke-static {v0, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_1
    move v2, v1

    goto :goto_2

    :pswitch_1
    sget-object v3, Lp2/b;->c:[Ljava/lang/String;

    invoke-static {v0, v3}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :pswitch_2
    sget-object v1, Lp2/b;->h:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x20

    :cond_3
    sget-object v1, Lp2/b;->i:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v2, v2, 0x40

    :cond_4
    sget-object v1, Lp2/b;->g:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v2, v2, 0x10

    :cond_5
    sget-object v1, Lp2/b;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v2, v2, 0x1

    :cond_6
    sget-object v1, Lp2/b;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v2, v2, 0x2

    :cond_7
    sget-object v1, Lp2/b;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v2, v2, 0x4

    :cond_8
    sget-object v1, Lp2/b;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit8 v1, v2, 0x8

    move v2, v1

    :cond_9
    sget-object v1, Lp2/b;->j:[Ljava/lang/String;

    invoke-static {v0, v1}, Ln2/e;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    or-int/lit16 v2, v2, 0x80

    :cond_a
    :goto_2
    iput v2, p0, Lp2/E;->i:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bdeeb30 -> :sswitch_2
        -0x11a64b39 -> :sswitch_1
        0x66d36ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lp2/l1;
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lp2/E;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lp2/l1;->g:Lp2/A0;

    return-object v0

    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lp2/E;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lp2/l1;->i:Lp2/W0;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lp2/E;->f:Ljava/lang/String;

    iget-object v1, p0, Lp2/E;->e:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp2/E;->f:Ljava/lang/String;

    return-object v0
.end method
