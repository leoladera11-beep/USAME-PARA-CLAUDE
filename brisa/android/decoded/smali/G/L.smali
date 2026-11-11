.class public final LG/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LG/L;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LB/A;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB/A;-><init>(IZ)V

    new-instance v3, LG/L;

    invoke-direct {v3, v0}, LG/L;-><init>(LB/A;)V

    sput-object v3, LG/L;->d:LG/L;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/16 v0, 0x24

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, LG/L;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, LG/L;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/L;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LB/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, LG/L;->a:Landroid/net/Uri;

    iget-object v0, p1, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LG/L;->b:Ljava/lang/String;

    iget-object p1, p1, LB/A;->h:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, LG/L;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LG/L;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LG/L;

    iget-object v1, p0, LG/L;->a:Landroid/net/Uri;

    iget-object v3, p1, LG/L;->a:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LG/L;->b:Ljava/lang/String;

    iget-object v3, p1, LG/L;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, LG/L;->c:Landroid/os/Bundle;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object p1, p1, LG/L;->c:Landroid/os/Bundle;

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LG/L;->a:Landroid/net/Uri;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, LG/L;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, LG/L;->c:Landroid/os/Bundle;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method
