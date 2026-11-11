.class public final LN/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LG/x;

.field public final c:LG/x;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;LG/x;LG/x;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    invoke-static {v1}, LF1/i;->g(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, LF1/i;->g(Z)V

    iput-object p1, p0, LN/d;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LN/d;->b:LG/x;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, LN/d;->c:LG/x;

    iput p4, p0, LN/d;->d:I

    iput p5, p0, LN/d;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, LN/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LN/d;

    iget v2, p0, LN/d;->d:I

    iget v3, p1, LN/d;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, LN/d;->e:I

    iget v3, p1, LN/d;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, LN/d;->a:Ljava/lang/String;

    iget-object v3, p1, LN/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LN/d;->b:LG/x;

    iget-object v3, p1, LN/d;->b:LG/x;

    invoke-virtual {v2, v3}, LG/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LN/d;->c:LG/x;

    iget-object p1, p1, LN/d;->c:LG/x;

    invoke-virtual {v2, p1}, LG/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, LN/d;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LN/d;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LN/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LN/d;->b:LG/x;

    invoke-virtual {v0}, LG/x;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LN/d;->c:LG/x;

    invoke-virtual {v1}, LG/x;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
