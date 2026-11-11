.class public final enum Lp2/g1;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CdataSection"

    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 10

    invoke-virtual {p2}, Lp2/a;->e()V

    const/4 v0, 0x0

    const-string v1, "]]>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v2, p2, Lp2/a;->h:I

    :goto_0
    iget v3, p2, Lp2/a;->i:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    iget-object v3, p2, Lp2/a;->g:[C

    aget-char v3, v3, v2

    const/4 v5, 0x1

    if-eq v0, v3, :cond_0

    :goto_1
    add-int/2addr v2, v5

    iget v3, p2, Lp2/a;->i:I

    if-ge v2, v3, :cond_0

    iget-object v3, p2, Lp2/a;->g:[C

    aget-char v3, v3, v2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v6, v2, 0x3

    iget v7, p2, Lp2/a;->i:I

    if-ge v2, v7, :cond_2

    if-gt v6, v7, :cond_2

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-object v9, p2, Lp2/a;->g:[C

    aget-char v9, v9, v7

    if-ne v8, v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    if-ne v7, v6, :cond_2

    iget v0, p2, Lp2/a;->h:I

    sub-int/2addr v2, v0

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_3
    if-eq v2, v4, :cond_4

    iget-object v0, p2, Lp2/a;->g:[C

    iget-object v3, p2, Lp2/a;->e:[Ljava/lang/String;

    iget v4, p2, Lp2/a;->h:I

    invoke-static {v0, v3, v4, v2}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v3, p2, Lp2/a;->h:I

    add-int/2addr v3, v2

    iput v3, p2, Lp2/a;->h:I

    goto :goto_4

    :cond_4
    iget v0, p2, Lp2/a;->i:I

    iget v2, p2, Lp2/a;->h:I

    sub-int v3, v0, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    invoke-virtual {p2}, Lp2/a;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, -0x2

    iget-object v3, p2, Lp2/a;->g:[C

    iget-object v4, p2, Lp2/a;->e:[Ljava/lang/String;

    sub-int v5, v0, v2

    invoke-static {v3, v4, v2, v5}, Lp2/a;->q([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput v0, p2, Lp2/a;->h:I

    move-object v0, v2

    :goto_4
    iget-object v2, p1, Lp2/T;->g:LW0/c;

    invoke-virtual {v2, v0}, LW0/c;->d(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lp2/a;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lp2/a;->y()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    return-void

    :cond_7
    :goto_5
    new-instance p2, Lp2/H;

    iget-object v0, p1, Lp2/T;->g:LW0/c;

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2}, Lp2/I;-><init>()V

    iget-object v1, p2, Lp2/I;->d:LW0/c;

    invoke-virtual {v1}, LW0/c;->y()V

    iput-object v0, v1, LW0/c;->g:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lp2/T;->g(Lp2/Q;)V

    sget-object p2, Lp2/l1;->e:Lp2/e0;

    invoke-virtual {p1, p2}, Lp2/T;->m(Lp2/l1;)V

    return-void
.end method
