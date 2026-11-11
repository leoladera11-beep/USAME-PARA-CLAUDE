.class public Lb0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/z;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/s;->a:I

    iput-object p4, p0, Lb0/s;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lb0/s;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lb0/s;->a:I

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lb0/s;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lb0/s;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lb0/s;->b:J

    .line 5
    new-instance p1, Lb0/y;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Lb0/A;->c:Lb0/A;

    goto :goto_0

    :cond_0
    new-instance p2, Lb0/A;

    invoke-direct {p2, v0, v1, p3, p4}, Lb0/A;-><init>(JJ)V

    .line 7
    :goto_0
    invoke-direct {p1, p2, p2}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    .line 8
    iput-object p1, p0, Lb0/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget v0, p0, Lb0/s;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(J)Lb0/y;
    .locals 13

    iget v0, p0, Lb0/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/s;->c:Ljava/lang/Object;

    check-cast v0, Ld0/b;

    iget-object v1, v0, Ld0/b;->i:[Ld0/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Ld0/e;->b(J)Lb0/y;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, v0, Ld0/b;->i:[Ld0/e;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Ld0/e;->b(J)Lb0/y;

    move-result-object v3

    iget-object v4, v3, Lb0/y;->a:Lb0/A;

    iget-wide v4, v4, Lb0/A;->b:J

    iget-object v6, v1, Lb0/y;->a:Lb0/A;

    iget-wide v6, v6, Lb0/A;->b:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :pswitch_0
    iget-object p1, p0, Lb0/s;->c:Ljava/lang/Object;

    check-cast p1, Lb0/y;

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lb0/s;->c:Ljava/lang/Object;

    check-cast v0, Lb0/t;

    iget-object v1, v0, Lb0/t;->k:LW0/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lb0/t;->k:LW0/c;

    iget-object v2, v1, LW0/c;->f:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v1, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, [J

    iget v3, v0, Lb0/t;->e:I

    int-to-long v3, v3

    mul-long/2addr v3, p1

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    iget-wide v3, v0, Lb0/t;->j:J

    const-wide/16 v9, 0x1

    sub-long v11, v3, v9

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, LJ/W;->h(JJJ)J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, LJ/W;->d([JJZ)I

    move-result v3

    const-wide/16 v7, 0x0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-wide v9, v7

    goto :goto_1

    :cond_2
    aget-wide v9, v2, v3

    :goto_1
    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    aget-wide v7, v1, v3

    :goto_2
    mul-long/2addr v9, v5

    iget v0, v0, Lb0/t;->e:I

    int-to-long v11, v0

    div-long/2addr v9, v11

    iget-wide v11, p0, Lb0/s;->b:J

    add-long/2addr v7, v11

    new-instance v4, Lb0/A;

    invoke-direct {v4, v9, v10, v7, v8}, Lb0/A;-><init>(JJ)V

    cmp-long p1, v9, p1

    if-eqz p1, :cond_5

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    if-ne v3, p1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    aget-wide p1, v2, v3

    aget-wide v2, v1, v3

    mul-long/2addr p1, v5

    int-to-long v0, v0

    div-long/2addr p1, v0

    add-long/2addr v11, v2

    new-instance v0, Lb0/A;

    invoke-direct {v0, p1, p2, v11, v12}, Lb0/A;-><init>(JJ)V

    new-instance p1, Lb0/y;

    invoke-direct {p1, v4, v0}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    goto :goto_4

    :cond_5
    :goto_3
    new-instance p1, Lb0/y;

    invoke-direct {p1, v4, v4}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    :goto_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()J
    .locals 2

    iget v0, p0, Lb0/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lb0/s;->b:J

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Lb0/s;->b:J

    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lb0/s;->c:Ljava/lang/Object;

    check-cast v0, Lb0/t;

    invoke-virtual {v0}, Lb0/t;->b()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
