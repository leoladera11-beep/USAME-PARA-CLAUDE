.class public final Ly0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/G;


# instance fields
.field public final a:Lb0/G;

.field public final b:Ly0/k;

.field public final c:LJ/D;

.field public d:I

.field public e:I

.field public f:[B

.field public g:Ly0/m;

.field public h:LG/x;

.field public i:Z


# direct methods
.method public constructor <init>(Lb0/G;Ly0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/n;->a:Lb0/G;

    iput-object p2, p0, Ly0/n;->b:Ly0/k;

    const/4 p1, 0x0

    iput p1, p0, Ly0/n;->d:I

    iput p1, p0, Ly0/n;->e:I

    sget-object p1, LJ/W;->b:[B

    iput-object p1, p0, Ly0/n;->f:[B

    new-instance p1, LJ/D;

    invoke-direct {p1}, LJ/D;-><init>()V

    iput-object p1, p0, Ly0/n;->c:LJ/D;

    return-void
.end method


# virtual methods
.method public final b(LG/x;)V
    .locals 6

    iget-object v0, p1, LG/x;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LG/x;->p:Ljava/lang/String;

    invoke-static {v0}, LG/W;->g(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, LF1/i;->g(Z)V

    iget-object v1, p0, Ly0/n;->h:LG/x;

    invoke-virtual {p1, v1}, LG/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Ly0/n;->b:Ly0/k;

    if-nez v1, :cond_2

    iput-object p1, p0, Ly0/n;->h:LG/x;

    invoke-interface {v2, p1}, Ly0/k;->a(LG/x;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, p1}, Ly0/k;->c(LG/x;)Ly0/m;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Ly0/n;->g:Ly0/m;

    :cond_2
    iget-object v1, p0, Ly0/n;->g:Ly0/m;

    iget-object v3, p0, Ly0/n;->a:Lb0/G;

    if-nez v1, :cond_3

    invoke-interface {v3, p1}, Lb0/G;->b(LG/x;)V

    return-void

    :cond_3
    invoke-virtual {p1}, LG/x;->a()LG/w;

    move-result-object v1

    const-string v4, "application/x-media3-cues"

    invoke-static {v4}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LG/w;->o:Ljava/lang/String;

    iput-object v0, v1, LG/w;->k:Ljava/lang/String;

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v1, LG/w;->t:J

    invoke-interface {v2, p1}, Ly0/k;->f(LG/x;)I

    move-result p1

    iput p1, v1, LG/w;->P:I

    new-instance p1, LG/x;

    invoke-direct {p1, v1}, LG/x;-><init>(LG/w;)V

    invoke-interface {v3, p1}, Lb0/G;->b(LG/x;)V

    return-void
.end method

.method public final c(LJ/D;II)V
    .locals 1

    iget-object v0, p0, Ly0/n;->g:Ly0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly0/n;->a:Lb0/G;

    invoke-interface {v0, p1, p2, p3}, Lb0/G;->c(LJ/D;II)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Ly0/n;->h(I)V

    iget-object p3, p0, Ly0/n;->f:[B

    iget v0, p0, Ly0/n;->e:I

    invoke-virtual {p1, v0, p3, p2}, LJ/D;->k(I[BI)V

    iget p1, p0, Ly0/n;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Ly0/n;->e:I

    return-void
.end method

.method public final e(LG/o;IZ)I
    .locals 2

    iget-object v0, p0, Ly0/n;->g:Ly0/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly0/n;->a:Lb0/G;

    invoke-interface {v0, p1, p2, p3}, Lb0/G;->e(LG/o;IZ)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Ly0/n;->h(I)V

    iget-object v0, p0, Ly0/n;->f:[B

    iget v1, p0, Ly0/n;->e:I

    invoke-interface {p1, v0, v1, p2}, LG/o;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Ly0/n;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Ly0/n;->e:I

    return p1
.end method

.method public final f(JIIILb0/F;)V
    .locals 8

    iget-object v0, p0, Ly0/n;->g:Ly0/m;

    if-nez v0, :cond_0

    iget-object v1, p0, Ly0/n;->a:Lb0/G;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lb0/G;->f(JIIILb0/F;)V

    return-void

    :cond_0
    move-wide v2, p1

    move v4, p3

    move v6, p5

    move-object v7, p6

    const/4 v1, 0x0

    if-nez v7, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const-string p2, "DRM on subtitles is not supported"

    invoke-static {p2, p1}, LF1/i;->f(Ljava/lang/String;Z)V

    iget p1, p0, Ly0/n;->e:I

    sub-int/2addr p1, v6

    sub-int p3, p1, p4

    :try_start_0
    iget-object p1, p0, Ly0/n;->g:Ly0/m;

    iget-object p2, p0, Ly0/n;->f:[B

    sget-object p5, Ly0/l;->c:Ly0/l;

    new-instance p6, LM0/b0;

    invoke-direct {p6, p0, v2, v3, v4}, LM0/b0;-><init>(Ly0/n;JI)V

    invoke-interface/range {p1 .. p6}, Ly0/m;->l([BIILy0/l;LJ/k;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-boolean p2, p0, Ly0/n;->i:Z

    if-eqz p2, :cond_3

    const-string p2, "SubtitleTranscodingTO"

    const-string p5, "Parsing subtitles failed, ignoring sample."

    invoke-static {p2, p5, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr p3, p4

    iput p3, p0, Ly0/n;->d:I

    iget p1, p0, Ly0/n;->e:I

    if-ne p3, p1, :cond_2

    iput v1, p0, Ly0/n;->d:I

    iput v1, p0, Ly0/n;->e:I

    :cond_2
    return-void

    :cond_3
    throw p1
.end method

.method public final h(I)V
    .locals 4

    iget-object v0, p0, Ly0/n;->f:[B

    array-length v0, v0

    iget v1, p0, Ly0/n;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ly0/n;->d:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Ly0/n;->f:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-array p1, p1, [B

    :goto_0
    iget v2, p0, Ly0/n;->d:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Ly0/n;->d:I

    iput v1, p0, Ly0/n;->e:I

    iput-object p1, p0, Ly0/n;->f:[B

    return-void
.end method
