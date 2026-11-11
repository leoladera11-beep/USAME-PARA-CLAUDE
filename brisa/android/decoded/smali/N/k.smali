.class public final LN/k;
.super LG/Z;
.source "SourceFile"


# instance fields
.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:I

.field public final q:LG/x;

.field public final r:I

.field public final s:LU/A;

.field public final t:Z


# direct methods
.method public constructor <init>(ILjava/lang/Exception;I)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v9}, LN/k;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILG/x;ILU/A;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;ILjava/lang/String;ILG/x;ILU/A;Z)V
    .locals 13

    move/from16 v8, p7

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    .line 12
    const-string v0, "Unexpected runtime error"

    :goto_0
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_2

    .line 13
    :cond_0
    const-string v0, "Remote error"

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", format_supported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v3, LJ/W;->a:Ljava/lang/String;

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    .line 16
    const-string v0, "YES"

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 18
    :cond_3
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    .line 19
    :cond_4
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    .line 20
    :cond_5
    const-string v0, "NO_UNSUPPORTED_SUBTYPE"

    goto :goto_1

    .line 21
    :cond_6
    const-string v0, "NO"

    .line 22
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 23
    const-string v0, "Source error"

    :goto_2
    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 25
    const-string v1, ": null"

    .line 26
    invoke-static {v0, v1}, LB1/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move v4, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v9, p8

    move/from16 v12, p9

    .line 28
    invoke-direct/range {v0 .. v12}, LN/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILG/x;ILU/A;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILG/x;ILU/A;JZ)V
    .locals 8

    move/from16 v0, p12

    .line 2
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide/from16 v6, p10

    invoke-direct/range {v1 .. v7}, LG/Z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eqz v0, :cond_1

    if-ne p4, p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p3

    .line 3
    :goto_1
    invoke-static {v2}, LF1/i;->g(Z)V

    if-nez p2, :cond_2

    const/4 p2, 0x3

    if-ne p4, p2, :cond_3

    :cond_2
    move p1, p3

    .line 4
    :cond_3
    invoke-static {p1}, LF1/i;->g(Z)V

    .line 5
    iput p4, p0, LN/k;->n:I

    .line 6
    iput-object p5, p0, LN/k;->o:Ljava/lang/String;

    .line 7
    iput p6, p0, LN/k;->p:I

    .line 8
    iput-object p7, p0, LN/k;->q:LG/x;

    move/from16 p1, p8

    .line 9
    iput p1, p0, LN/k;->r:I

    move-object/from16 p1, p9

    .line 10
    iput-object p1, p0, LN/k;->s:LU/A;

    .line 11
    iput-boolean v0, p0, LN/k;->t:Z

    return-void
.end method


# virtual methods
.method public final a(LG/Z;)Z
    .locals 2

    invoke-super {p0, p1}, LG/Z;->a(LG/Z;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LJ/W;->a:Ljava/lang/String;

    check-cast p1, LN/k;

    iget v0, p0, LN/k;->n:I

    iget v1, p1, LN/k;->n:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LN/k;->o:Ljava/lang/String;

    iget-object v1, p1, LN/k;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LN/k;->p:I

    iget v1, p1, LN/k;->p:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LN/k;->q:LG/x;

    iget-object v1, p1, LN/k;->q:LG/x;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, LN/k;->r:I

    iget v1, p1, LN/k;->r:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LN/k;->s:LU/A;

    iget-object v1, p1, LN/k;->s:LU/A;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LN/k;->t:Z

    iget-boolean p1, p1, LN/k;->t:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(LU/A;)LN/k;
    .locals 13

    new-instance v0, LN/k;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-wide v10, p0, LG/Z;->f:J

    iget-boolean v12, p0, LN/k;->t:Z

    iget v3, p0, LG/Z;->e:I

    iget v4, p0, LN/k;->n:I

    iget-object v5, p0, LN/k;->o:Ljava/lang/String;

    iget v6, p0, LN/k;->p:I

    iget-object v7, p0, LN/k;->q:LG/x;

    iget v8, p0, LN/k;->r:I

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, LN/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILG/x;ILU/A;JZ)V

    return-object v0
.end method
