.class public final LG2/n;
.super LG2/f;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLr2/d;ILjava/lang/String;ZLC2/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LG2/f;-><init>(Ljava/lang/String;ZLr2/d;I)V

    if-eqz p7, :cond_0

    iget p1, p7, LC2/c;->j:I

    iput p1, p0, LG2/n;->k:I

    iget-object p1, p7, LC2/c;->m:Ljava/lang/String;

    iput-object p1, p0, LG2/n;->o:Ljava/lang/String;

    iget p1, p7, LC2/c;->l:I

    iput p1, p0, LG2/n;->m:I

    iget p1, p7, LC2/c;->k:I

    iput p1, p0, LG2/n;->l:I

    iget p1, p7, LC2/c;->i:I

    iput p1, p0, LG2/n;->n:I

    :cond_0
    iput-object p5, p0, LG2/n;->i:Ljava/lang/String;

    iput-boolean p6, p0, LG2/n;->j:Z

    return-void
.end method


# virtual methods
.method public final a(LG2/f;)Z
    .locals 2

    invoke-super {p0, p1}, LG2/f;->a(LG2/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, LG2/n;

    if-eqz v0, :cond_0

    check-cast p1, LG2/n;

    iget-object v0, p1, LG2/n;->i:Ljava/lang/String;

    iget-object v1, p0, LG2/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LG2/n;->j:Z

    iget-boolean p1, p1, LG2/n;->j:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
