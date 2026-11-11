.class public final LL/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:[B

.field public final d:Ljava/util/Map;

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource"

    invoke-static {v0}, LG/Q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, LF1/i;->g(Z)V

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, LF1/i;->g(Z)V

    cmp-long v0, p7, v0

    if-gtz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-nez v0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-static {v3}, LF1/i;->g(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LL/n;->a:Landroid/net/Uri;

    iput p2, p0, LL/n;->b:I

    if-eqz p3, :cond_4

    array-length p1, p3

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-object p3, p0, LL/n;->c:[B

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LL/n;->d:Ljava/util/Map;

    iput-wide p5, p0, LL/n;->e:J

    iput-wide p7, p0, LL/n;->f:J

    iput-object p9, p0, LL/n;->g:Ljava/lang/String;

    iput p10, p0, LL/n;->h:I

    return-void
.end method


# virtual methods
.method public final a()LJ0/c;
    .locals 3

    new-instance v0, LJ0/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LL/n;->a:Landroid/net/Uri;

    iput-object v1, v0, LJ0/c;->e:Ljava/lang/Object;

    iget v1, p0, LL/n;->b:I

    iput v1, v0, LJ0/c;->a:I

    iget-object v1, p0, LL/n;->c:[B

    iput-object v1, v0, LJ0/c;->f:Ljava/lang/Object;

    iget-object v1, p0, LL/n;->d:Ljava/util/Map;

    iput-object v1, v0, LJ0/c;->g:Ljava/lang/Object;

    iget-wide v1, p0, LL/n;->e:J

    iput-wide v1, v0, LJ0/c;->b:J

    iget-wide v1, p0, LL/n;->f:J

    iput-wide v1, v0, LJ0/c;->c:J

    iget-object v1, p0, LL/n;->g:Ljava/lang/String;

    iput-object v1, v0, LJ0/c;->h:Ljava/lang/Object;

    iget v1, p0, LL/n;->h:I

    iput v1, v0, LJ0/c;->d:I

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSpec["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget v2, p0, LL/n;->b:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    const-string v1, "HEAD"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    const-string v1, "POST"

    goto :goto_0

    :cond_2
    const-string v1, "GET"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LL/n;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LL/n;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LL/n;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LL/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LL/n;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
