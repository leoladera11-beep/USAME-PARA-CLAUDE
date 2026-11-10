.class public final LA0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/g;
.implements Lv0/b;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, LN0/O;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LN0/O;-><init>(I)V

    iput-object p1, p0, LA0/d;->g:Ljava/lang/Object;

    const/16 p1, 0x1f40

    .line 4
    iput p1, p0, LA0/d;->e:I

    .line 5
    iput p1, p0, LA0/d;->f:I

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x100

    .line 7
    new-array p1, p1, [LA0/d;

    iput-object p1, p0, LA0/d;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, LA0/d;->e:I

    .line 9
    iput p1, p0, LA0/d;->f:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, LA0/d;->g:Ljava/lang/Object;

    .line 12
    iput p1, p0, LA0/d;->e:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 13
    :cond_0
    iput p1, p0, LA0/d;->f:I

    return-void
.end method

.method public constructor <init>(LK/e;LG/x;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object p1, p1, LK/e;->g:LJ/D;

    iput-object p1, p0, LA0/d;->g:Ljava/lang/Object;

    const/16 v0, 0xc

    .line 16
    invoke-virtual {p1, v0}, LJ/D;->N(I)V

    .line 17
    invoke-virtual {p1}, LJ/D;->E()I

    move-result v0

    .line 18
    const-string v1, "audio/raw"

    iget-object v2, p2, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iget v1, p2, LG/x;->M:I

    iget p2, p2, LG/x;->J:I

    .line 20
    invoke-static {v1}, LJ/W;->o(I)I

    move-result v1

    mul-int/2addr v1, p2

    .line 21
    rem-int p2, v0, v1

    if-eqz p2, :cond_0

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BoxParsers"

    invoke-static {v0, p2}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 23
    :cond_1
    iput v0, p0, LA0/d;->e:I

    .line 24
    invoke-virtual {p1}, LJ/D;->E()I

    move-result p1

    iput p1, p0, LA0/d;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p2, p0, LA0/d;->e:I

    iput p3, p0, LA0/d;->f:I

    iput-object p1, p0, LA0/d;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LA0/d;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LA0/d;->f:I

    return v0
.end method

.method public c()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, LA0/d;->e:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, LA0/d;->g:Ljava/lang/Object;

    check-cast v0, LJ/D;

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public t()LL/h;
    .locals 4

    new-instance v0, LL/s;

    iget-object v1, p0, LA0/d;->g:Ljava/lang/Object;

    check-cast v1, LN0/O;

    iget v2, p0, LA0/d;->e:I

    iget v3, p0, LA0/d;->f:I

    invoke-direct {v0, v2, v3, v1}, LL/s;-><init>(IILN0/O;)V

    return-object v0
.end method
