.class public final LG/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final p:Ljava/lang/Object;

.field public static final q:LG/P;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:LG/P;

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:LG/J;

.field public j:Z

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG/p0;->p:Ljava/lang/Object;

    new-instance v0, LG/D;

    invoke-direct {v0}, LG/D;-><init>()V

    new-instance v1, LG/G;

    invoke-direct {v1}, LG/G;-><init>()V

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v9, Lu1/C0;->i:Lu1/C0;

    new-instance v12, LG/I;

    invoke-direct {v12}, LG/I;-><init>()V

    sget-object v19, LG/L;->d:LG/L;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, v1, LG/G;->b:Landroid/net/Uri;

    const/4 v13, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v1, LG/G;->a:Ljava/util/UUID;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v13

    :goto_1
    invoke-static {v2}, LF1/i;->o(Z)V

    const/4 v2, 0x0

    move-object v4, v2

    if-eqz v3, :cond_3

    new-instance v2, LG/K;

    iget-object v5, v1, LG/G;->a:Ljava/util/UUID;

    if-eqz v5, :cond_2

    new-instance v4, LG/H;

    invoke-direct {v4, v1}, LG/H;-><init>(LG/G;)V

    :cond_2
    move-object v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v11}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    move-object/from16 v16, v2

    :goto_2
    move v1, v13

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    goto :goto_2

    :goto_3
    new-instance v13, LG/P;

    new-instance v15, LG/F;

    invoke-direct {v15, v0}, LG/E;-><init>(LG/D;)V

    new-instance v0, LG/J;

    invoke-direct {v0, v12}, LG/J;-><init>(LG/I;)V

    sget-object v18, LG/T;->M:LG/T;

    const-string v14, "androidx.media3.common.Timeline"

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v19}, LG/P;-><init>(Ljava/lang/String;LG/F;LG/K;LG/J;LG/T;LG/L;)V

    sput-object v13, LG/p0;->q:LG/P;

    const/16 v0, 0x24

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->r:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->s:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->t:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->u:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->v:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->w:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->x:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->y:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->z:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->A:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->B:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->C:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LG/p0;->D:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/p0;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LG/p0;->p:Ljava/lang/Object;

    iput-object v0, p0, LG/p0;->a:Ljava/lang/Object;

    sget-object v0, LG/p0;->q:LG/P;

    iput-object v0, p0, LG/p0;->c:LG/P;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, LG/p0;->i:LG/J;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V
    .locals 0

    iput-object p1, p0, LG/p0;->a:Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    sget-object p1, LG/p0;->q:LG/P;

    :goto_0
    iput-object p1, p0, LG/p0;->c:LG/P;

    if-eqz p2, :cond_1

    iget-object p1, p2, LG/P;->b:LG/K;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, LG/p0;->b:Ljava/lang/Object;

    iput-wide p3, p0, LG/p0;->d:J

    iput-wide p5, p0, LG/p0;->e:J

    iput-wide p7, p0, LG/p0;->f:J

    iput-boolean p9, p0, LG/p0;->g:Z

    iput-boolean p10, p0, LG/p0;->h:Z

    iput-object p11, p0, LG/p0;->i:LG/J;

    iput-wide p12, p0, LG/p0;->k:J

    iput-wide p14, p0, LG/p0;->l:J

    move/from16 p1, p16

    iput p1, p0, LG/p0;->m:I

    move/from16 p1, p17

    iput p1, p0, LG/p0;->n:I

    move-wide/from16 p1, p18

    iput-wide p1, p0, LG/p0;->o:J

    const/4 p1, 0x0

    iput-boolean p1, p0, LG/p0;->j:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, LG/p0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, LG/p0;

    iget-object v0, p0, LG/p0;->a:Ljava/lang/Object;

    iget-object v1, p1, LG/p0;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/p0;->c:LG/P;

    iget-object v1, p1, LG/p0;->c:LG/P;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/p0;->i:LG/J;

    iget-object v1, p1, LG/p0;->i:LG/J;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, LG/p0;->d:J

    iget-wide v2, p1, LG/p0;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, LG/p0;->e:J

    iget-wide v2, p1, LG/p0;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, LG/p0;->f:J

    iget-wide v2, p1, LG/p0;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, LG/p0;->g:Z

    iget-boolean v1, p1, LG/p0;->g:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LG/p0;->h:Z

    iget-boolean v1, p1, LG/p0;->h:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LG/p0;->j:Z

    iget-boolean v1, p1, LG/p0;->j:Z

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, LG/p0;->k:J

    iget-wide v2, p1, LG/p0;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, LG/p0;->l:J

    iget-wide v2, p1, LG/p0;->l:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, LG/p0;->m:I

    iget v1, p1, LG/p0;->m:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LG/p0;->n:I

    iget v1, p1, LG/p0;->n:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, LG/p0;->o:J

    iget-wide v2, p1, LG/p0;->o:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, LG/p0;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/p0;->c:LG/P;

    invoke-virtual {v1}, LG/P;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v0, p0, LG/p0;->i:LG/J;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LG/J;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, LG/p0;->d:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, LG/p0;->e:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, LG/p0;->f:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, LG/p0;->g:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, LG/p0;->h:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, LG/p0;->j:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, LG/p0;->k:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, LG/p0;->l:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, LG/p0;->m:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, LG/p0;->n:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, LG/p0;->o:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
