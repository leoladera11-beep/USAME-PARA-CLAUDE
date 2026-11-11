.class public final LM0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;


# instance fields
.field public final a:LM0/i2;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/net/Uri;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Landroid/os/Bundle;

.field public final h:Ly1/a;

.field public final i:Z

.field public final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->k:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->l:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->m:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->n:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->o:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->p:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->q:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->r:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->s:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/c;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LM0/i2;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLy1/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/c;->a:LM0/i2;

    iput p2, p0, LM0/c;->b:I

    iput p3, p0, LM0/c;->c:I

    iput p4, p0, LM0/c;->d:I

    iput-object p5, p0, LM0/c;->e:Landroid/net/Uri;

    iput-object p6, p0, LM0/c;->f:Ljava/lang/CharSequence;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, LM0/c;->g:Landroid/os/Bundle;

    iput-boolean p8, p0, LM0/c;->i:Z

    iput-object p9, p0, LM0/c;->h:Ly1/a;

    iput-object p10, p0, LM0/c;->j:Ljava/lang/Object;

    return-void
.end method

.method public static a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Parameter has incorrect type."

    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    instance-of p0, p1, LG/w0;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_1
    instance-of p0, p1, LG/T;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_2
    instance-of p0, p1, LG/P;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_3
    instance-of p0, p1, LG/h0;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_4
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_1
    instance-of p0, p1, Ljava/lang/Float;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_5
    instance-of p0, p1, Ljava/lang/Boolean;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_6
    instance-of p0, p1, Ljava/lang/Integer;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_7
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_2
    instance-of p0, p1, Ljava/lang/Long;

    invoke-static {v0, p0}, LF1/i;->f(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(ILjava/util/List;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM0/c;

    iget-object v2, v2, LM0/c;->h:Ly1/a;

    invoke-virtual {v2, v0}, Ly1/a;->b(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static d(LM0/i2;)LM0/c;
    .locals 5

    iget-object v0, p0, LM0/i2;->b:Ljava/lang/String;

    iget-object p0, p0, LM0/i2;->c:Landroid/os/Bundle;

    const-string v1, "androidx.media3.session.PLAYER_COMMAND_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "androidx.media3.session.CUSTOM_COMMAND_PARAMETER"

    if-eqz v1, :cond_1

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, LM0/c;->m(I)I

    move-result v1

    invoke-static {p0, v4, v1, v3}, LM0/c;->l(Landroid/os/Bundle;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, LG2/a;

    invoke-direct {v1, v2}, LG2/a;-><init>(I)V

    iget-object v3, v1, LG2/a;->e:Ljava/lang/Object;

    check-cast v3, LM0/i2;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v3, v2}, LF1/i;->f(Ljava/lang/String;Z)V

    iput v0, v1, LG2/a;->b:I

    invoke-static {v0}, LM0/c;->m(I)I

    move-result v0

    invoke-static {v0, p0}, LM0/c;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v1, LG2/a;->j:Ljava/lang/Object;

    invoke-virtual {v1}, LG2/a;->a()LM0/c;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x9c4a

    if-ne v0, v1, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p0, v4, v1, v3}, LM0/c;->l(Landroid/os/Bundle;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, LG2/a;

    invoke-direct {v1, v2}, LG2/a;-><init>(I)V

    new-instance v2, LM0/i2;

    invoke-direct {v2, v0}, LM0/i2;-><init>(I)V

    invoke-virtual {v1, v2, p0}, LG2/a;->d(LM0/i2;Ljava/lang/Object;)V

    invoke-virtual {v1}, LG2/a;->a()LM0/c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/List;LM0/j2;LG/c0;)Lu1/C0;
    .locals 18

    new-instance v0, Lu1/M;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu1/I;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    move-object/from16 v2, p0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/c;

    iget-object v4, v3, LM0/c;->a:LM0/i2;

    move-object/from16 v5, p1

    if-eqz v4, :cond_1

    iget-object v6, v5, LM0/j2;->a:Lu1/b0;

    invoke-virtual {v6, v4}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v6, p2

    goto :goto_2

    :cond_1
    :goto_1
    iget v4, v3, LM0/c;->b:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    move-object/from16 v6, p2

    invoke-virtual {v6, v4}, LG/c0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v0, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    move-object/from16 v6, p2

    :cond_3
    iget-boolean v4, v3, LM0/c;->i:Z

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    new-instance v7, LM0/c;

    iget-object v8, v3, LM0/c;->a:LM0/i2;

    iget v9, v3, LM0/c;->b:I

    iget v10, v3, LM0/c;->c:I

    iget v11, v3, LM0/c;->d:I

    iget-object v12, v3, LM0/c;->e:Landroid/net/Uri;

    iget-object v13, v3, LM0/c;->f:Ljava/lang/CharSequence;

    new-instance v14, Landroid/os/Bundle;

    iget-object v4, v3, LM0/c;->g:Landroid/os/Bundle;

    invoke-direct {v14, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, LM0/c;->h:Ly1/a;

    iget-object v3, v3, LM0/c;->j:Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    invoke-direct/range {v7 .. v17}, LM0/c;-><init>(LM0/i2;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLy1/a;Ljava/lang/Object;)V

    move-object v3, v7

    :goto_3
    invoke-virtual {v0, v3}, Lu1/I;->c(Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object v0

    return-object v0
.end method

.method public static i(ILandroid/os/Bundle;)LM0/c;
    .locals 14

    sget-object v0, LM0/c;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, LM0/i2;->a(Landroid/os/Bundle;)LM0/i2;

    move-result-object v0

    :goto_0
    sget-object v1, LM0/c;->l:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, LM0/c;->m:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, LM0/c;->n:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, LM0/c;->o:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-lt p0, v7, :cond_2

    sget-object v7, LM0/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v8

    :goto_2
    sget-object v9, LM0/c;->q:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    sget-object v10, LM0/c;->r:Ljava/lang/String;

    invoke-virtual {p1, v10, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    sget-object v11, LM0/c;->s:Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    new-instance v12, LG2/a;

    invoke-direct {v12, v10, v3}, LG2/a;-><init>(II)V

    sget-object v3, LM0/c;->t:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v10, v0, LM0/i2;->a:I

    const v13, 0x9c4a

    if-ne v10, v13, :cond_3

    const/4 v10, 0x5

    goto :goto_3

    :cond_3
    move v10, v4

    :goto_3
    invoke-static {p1, v3, v10, p0}, LM0/c;->l(Landroid/os/Bundle;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v12, v0, v10}, LG2/a;->d(LM0/i2;Ljava/lang/Object;)V

    :cond_4
    if-eq v1, v2, :cond_6

    invoke-static {v1}, LM0/c;->m(I)I

    move-result v0

    invoke-static {p1, v3, v0, p0}, LM0/c;->l(Landroid/os/Bundle;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v12, LG2/a;->e:Ljava/lang/Object;

    check-cast p1, LM0/i2;

    if-nez p1, :cond_5

    move p1, v8

    goto :goto_4

    :cond_5
    move p1, v4

    :goto_4
    const-string v0, "sessionCommand is already set. Only one of sessionCommand and playerCommand should be set."

    invoke-static {v0, p1}, LF1/i;->f(Ljava/lang/String;Z)V

    iput v1, v12, LG2/a;->b:I

    invoke-static {v1}, LM0/c;->m(I)I

    move-result p1

    invoke-static {p1, p0}, LM0/c;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v12, LG2/a;->j:Ljava/lang/Object;

    :cond_6
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p1, "content"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.resource"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    invoke-virtual {v12, v9}, LG2/a;->b(Landroid/net/Uri;)V

    :cond_8
    iput-object v5, v12, LG2/a;->g:Ljava/lang/CharSequence;

    if-nez v6, :cond_9

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_9
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p0, v12, LG2/a;->h:Ljava/lang/Object;

    iput-boolean v7, v12, LG2/a;->d:Z

    if-nez v11, :cond_a

    new-array v11, v8, [I

    const/4 p0, 0x6

    aput p0, v11, v4

    :cond_a
    array-length p0, v11

    if-eqz p0, :cond_b

    move v4, v8

    :cond_b
    invoke-static {v4}, LF1/i;->g(Z)V

    array-length p0, v11

    if-nez p0, :cond_c

    sget-object p0, Ly1/a;->g:Ly1/a;

    goto :goto_5

    :cond_c
    new-instance p0, Ly1/a;

    array-length p1, v11

    invoke-static {v11, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    array-length v0, p1

    invoke-direct {p0, v0, p1}, Ly1/a;-><init>(I[I)V

    :goto_5
    iput-object p0, v12, LG2/a;->i:Ljava/io/Serializable;

    invoke-virtual {v12}, LG2/a;->a()LM0/c;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/List;ZZI)Lu1/C0;
    .locals 11

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lu1/P;->f:Lu1/N;

    sget-object p0, Lu1/C0;->i:Lu1/C0;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x6

    if-ge v2, v5, :cond_6

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/c;

    iget-boolean v9, v5, LM0/c;->i:Z

    iget-object v10, v5, LM0/c;->h:Ly1/a;

    if-eqz v9, :cond_5

    invoke-virtual {v5}, LM0/c;->b()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_1
    iget v9, v10, Ly1/a;->f:I

    if-ge v5, v9, :cond_5

    invoke-virtual {v10, v5}, Ly1/a;->b(I)I

    move-result v9

    if-ne v9, v8, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    if-ne v3, v1, :cond_3

    if-ne v9, v7, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    if-ne v4, v1, :cond_4

    if-ne v9, v6, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p1

    if-eq v3, v1, :cond_7

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM0/c;

    invoke-virtual {p2, v7, p3}, LM0/c;->e(II)LM0/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_7
    if-eq v4, v1, :cond_8

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM0/c;

    invoke-virtual {p2, v6, p3}, LM0/c;->e(II)LM0/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_b

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM0/c;

    iget-boolean v1, p2, LM0/c;->i:Z

    if-eqz v1, :cond_a

    invoke-virtual {p2}, LM0/c;->b()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    if-eq v0, v3, :cond_a

    if-eq v0, v4, :cond_a

    iget-object v1, p2, LM0/c;->h:Ly1/a;

    invoke-virtual {v1, v8}, Ly1/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2, v8, p3}, LM0/c;->e(II)LM0/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Lu1/M;->f()Lu1/C0;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;LG/c0;Landroid/os/Bundle;)Lu1/C0;
    .locals 9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lu1/P;->f:Lu1/N;

    sget-object p0, Lu1/C0;->i:Lu1/C0;

    return-object p0

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iget-object v2, p1, LG/c0;->a:LG/u;

    invoke-virtual {v2, v0}, LG/u;->a([I)Z

    move-result v0

    const/16 v2, 0x9

    const/16 v3, 0x8

    filled-new-array {v2, v3}, [I

    move-result-object v2

    iget-object p1, p1, LG/c0;->a:LG/u;

    invoke-virtual {p1, v2}, LG/u;->a([I)Z

    move-result p1

    const-string v2, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {p2, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v4, -0x1

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    const/4 v2, 0x1

    if-nez p1, :cond_5

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v3

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v4

    :goto_3
    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object p2

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/c;

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v3, v0, :cond_7

    if-ne p1, v4, :cond_6

    new-instance v6, Ly1/a;

    filled-new-array {v7, v1}, [I

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ly1/a;-><init>(I[I)V

    invoke-virtual {v5, v6}, LM0/c;->f(Ly1/a;)LM0/c;

    move-result-object v5

    invoke-virtual {p2, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance v8, Ly1/a;

    filled-new-array {v7, v6, v1}, [I

    move-result-object v7

    invoke-direct {v8, v6, v7}, Ly1/a;-><init>(I[I)V

    invoke-virtual {v5, v8}, LM0/c;->f(Ly1/a;)LM0/c;

    move-result-object v5

    invoke-virtual {p2, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-ne v3, p1, :cond_8

    new-instance v8, Ly1/a;

    filled-new-array {v6, v1}, [I

    move-result-object v6

    invoke-direct {v8, v7, v6}, Ly1/a;-><init>(I[I)V

    invoke-virtual {v5, v8}, LM0/c;->f(Ly1/a;)LM0/c;

    move-result-object v5

    invoke-virtual {p2, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    new-instance v6, Ly1/a;

    filled-new-array {v1}, [I

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ly1/a;-><init>(I[I)V

    invoke-virtual {v5, v6}, LM0/c;->f(Ly1/a;)LM0/c;

    move-result-object v5

    invoke-virtual {p2, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lu1/M;->f()Lu1/C0;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/os/Bundle;Ljava/lang/String;II)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    packed-switch p2, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LG/w0;->b(Landroid/os/Bundle;)LG/w0;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p0}, LG/T;->b(ILandroid/os/Bundle;)LG/T;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p0}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LG/h0;->a(Landroid/os/Bundle;)LG/h0;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0x13

    if-eq p0, v0, :cond_3

    const/16 v0, 0x18

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    :pswitch_0
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x7

    return p0

    :cond_4
    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_5
    return v0

    :cond_6
    :pswitch_2
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "androidx.media3.session.PLAYER_COMMAND_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "androidx.media3.session.SESSION_COMMAND_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 5

    iget-object v0, p0, LM0/c;->j:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, LM0/c;->a:LM0/i2;

    if-eqz v3, :cond_3

    iget v3, v3, LM0/i2;->a:I

    if-eqz v3, :cond_2

    const v4, 0x9c4a

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x13

    iget v4, p0, LM0/c;->b:I

    if-eq v4, v3, :cond_5

    const/16 v3, 0x18

    if-eq v4, v3, :cond_4

    const/16 v3, 0x1d

    if-eq v4, v3, :cond_5

    const/16 v3, 0x1f

    if-eq v4, v3, :cond_5

    packed-switch v4, :pswitch_data_0

    return v2

    :cond_4
    :pswitch_0
    return v1

    :cond_5
    :pswitch_1
    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e(II)LM0/c;
    .locals 14

    const/4 v0, 0x1

    iget-object v1, p0, LM0/c;->a:LM0/i2;

    if-eqz v1, :cond_0

    iget v2, v1, LM0/i2;->a:I

    if-nez v2, :cond_0

    new-instance v1, Ly1/a;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ly1/a;-><init>(I[I)V

    invoke-virtual {p0, v1}, LM0/c;->f(Ly1/a;)LM0/c;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, LM0/c;->j:Ljava/lang/Object;

    if-eqz v3, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "androidx.media3.session.CUSTOM_COMMAND_PARAMETER"

    move/from16 v4, p2

    invoke-virtual {p0, v3, v4, v2}, LM0/c;->p(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "androidx.media3.session.SESSION_COMMAND_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, LM0/i2;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "androidx.media3.session.PLAYER_COMMAND_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, LM0/c;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v4, LM0/i2;

    invoke-direct {v4, v1, v2}, LM0/i2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, LM0/c;

    new-instance v12, Ly1/a;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v12, v0, p1}, Ly1/a;-><init>(I[I)V

    const/4 v13, 0x0

    const/4 v5, -0x1

    iget v6, p0, LM0/c;->c:I

    iget v7, p0, LM0/c;->d:I

    iget-object v8, p0, LM0/c;->e:Landroid/net/Uri;

    iget-object v9, p0, LM0/c;->f:Ljava/lang/CharSequence;

    iget-object v10, p0, LM0/c;->g:Landroid/os/Bundle;

    iget-boolean v11, p0, LM0/c;->i:Z

    invoke-direct/range {v3 .. v13}, LM0/c;-><init>(LM0/i2;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLy1/a;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LM0/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LM0/c;

    iget-object v1, p0, LM0/c;->a:LM0/i2;

    iget-object v3, p1, LM0/c;->a:LM0/i2;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LM0/c;->b:I

    iget v3, p1, LM0/c;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LM0/c;->c:I

    iget v3, p1, LM0/c;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LM0/c;->d:I

    iget v3, p1, LM0/c;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LM0/c;->e:Landroid/net/Uri;

    iget-object v3, p1, LM0/c;->e:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LM0/c;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, LM0/c;->f:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, LM0/c;->i:Z

    iget-boolean v3, p1, LM0/c;->i:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LM0/c;->h:Ly1/a;

    iget-object v3, p1, LM0/c;->h:Ly1/a;

    invoke-virtual {v1, v3}, Ly1/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LM0/c;->j:Ljava/lang/Object;

    iget-object p1, p1, LM0/c;->j:Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f(Ly1/a;)LM0/c;
    .locals 12

    iget-object v0, p0, LM0/c;->h:Ly1/a;

    invoke-virtual {v0, p1}, Ly1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, LM0/c;

    new-instance v8, Landroid/os/Bundle;

    iget-object v0, p0, LM0/c;->g:Landroid/os/Bundle;

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v9, p0, LM0/c;->i:Z

    iget-object v11, p0, LM0/c;->j:Ljava/lang/Object;

    iget-object v2, p0, LM0/c;->a:LM0/i2;

    iget v3, p0, LM0/c;->b:I

    iget v4, p0, LM0/c;->c:I

    iget v5, p0, LM0/c;->d:I

    iget-object v6, p0, LM0/c;->e:Landroid/net/Uri;

    iget-object v7, p0, LM0/c;->f:Ljava/lang/CharSequence;

    move-object v10, p1

    invoke-direct/range {v1 .. v11}, LM0/c;-><init>(LM0/i2;IIILandroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/Bundle;ZLy1/a;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final h(LG/g0;)V
    .locals 3

    iget-boolean v0, p0, LM0/c;->i:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x13

    iget-object v1, p0, LM0/c;->j:Ljava/lang/Object;

    iget v2, p0, LM0/c;->b:I

    if-eq v2, v0, :cond_8

    const/16 v0, 0x18

    if-eq v2, v0, :cond_5

    const/16 v0, 0x1d

    if-eq v2, v0, :cond_4

    const/16 v0, 0x1f

    if-eq v2, v0, :cond_3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, LG/g0;->b0(I)V

    return-void

    :pswitch_1
    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, LG/g0;->B(Z)V

    return-void

    :cond_1
    invoke-interface {p1}, LG/g0;->w0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, LG/g0;->B(Z)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, LG/g0;->h(F)V

    return-void

    :pswitch_3
    invoke-interface {p1}, LG/g0;->E0()V

    return-void

    :pswitch_4
    invoke-interface {p1}, LG/g0;->H0()V

    return-void

    :pswitch_5
    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, LG/g0;->n(I)V

    return-void

    :pswitch_6
    invoke-interface {p1}, LG/g0;->C0()V

    return-void

    :pswitch_7
    invoke-interface {p1}, LG/g0;->C()V

    return-void

    :pswitch_8
    invoke-interface {p1}, LG/g0;->M0()V

    return-void

    :pswitch_9
    invoke-interface {p1}, LG/g0;->P()V

    return-void

    :pswitch_a
    if-eqz v1, :cond_9

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, LG/g0;->y0(J)V

    return-void

    :pswitch_b
    invoke-interface {p1}, LG/g0;->S()V

    return-void

    :pswitch_c
    invoke-interface {p1}, LG/g0;->u()V

    return-void

    :pswitch_d
    invoke-interface {p1}, LG/g0;->e()V

    return-void

    :pswitch_e
    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, LG/g0;->l(Z)V

    return-void

    :cond_2
    invoke-interface {p1}, LG/g0;->z()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, LG/g0;->l(Z)V

    return-void

    :cond_3
    if-eqz v1, :cond_9

    check-cast v1, LG/P;

    invoke-interface {p1, v1}, LG/g0;->G0(LG/P;)V

    return-void

    :cond_4
    if-eqz v1, :cond_9

    check-cast v1, LG/w0;

    invoke-interface {p1, v1}, LG/g0;->n0(LG/w0;)V

    return-void

    :cond_5
    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, LG/g0;->J0(F)V

    return-void

    :cond_6
    invoke-interface {p1}, LG/g0;->R()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    invoke-interface {p1}, LG/g0;->x()V

    return-void

    :cond_7
    invoke-interface {p1}, LG/g0;->t0()V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    check-cast v1, LG/T;

    invoke-interface {p1, v1}, LG/g0;->X(LG/T;)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, LM0/c;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, LM0/c;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, LM0/c;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, LM0/c;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v8, p0, LM0/c;->h:Ly1/a;

    iget-object v9, p0, LM0/c;->j:Ljava/lang/Object;

    iget-object v1, p0, LM0/c;->a:LM0/i2;

    iget-object v5, p0, LM0/c;->f:Ljava/lang/CharSequence;

    iget-object v7, p0, LM0/c;->e:Landroid/net/Uri;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final o(I)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, LM0/c;->a:LM0/i2;

    if-eqz v1, :cond_0

    sget-object v2, LM0/c;->k:Ljava/lang/String;

    invoke-virtual {v1}, LM0/i2;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 v1, -0x1

    iget v2, p0, LM0/c;->b:I

    if-eq v2, v1, :cond_1

    sget-object v1, LM0/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v1, p0, LM0/c;->c:I

    if-eqz v1, :cond_2

    sget-object v2, LM0/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget v1, p0, LM0/c;->d:I

    if-eqz v1, :cond_3

    sget-object v2, LM0/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v1, ""

    iget-object v2, p0, LM0/c;->f:Ljava/lang/CharSequence;

    if-eq v2, v1, :cond_4

    sget-object v1, LM0/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, LM0/c;->g:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, LM0/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v1, p0, LM0/c;->e:Landroid/net/Uri;

    if-eqz v1, :cond_6

    sget-object v2, LM0/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    iget-boolean v1, p0, LM0/c;->i:Z

    if-nez v1, :cond_7

    sget-object v2, LM0/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-object v1, p0, LM0/c;->h:Ly1/a;

    iget v2, v1, Ly1/a;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_8

    invoke-virtual {v1, v4}, Ly1/a;->b(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    :cond_8
    iget-object v2, v1, Ly1/a;->e:[I

    iget v1, v1, Ly1/a;->f:I

    invoke-static {v2, v4, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    sget-object v2, LM0/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_9
    iget-object v1, p0, LM0/c;->j:Ljava/lang/Object;

    if-eqz v1, :cond_a

    sget-object v1, LM0/c;->t:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, LM0/c;->p(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_a
    return-object v0
.end method

.method public final p(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LM0/c;->a:LM0/i2;

    if-eqz v1, :cond_1

    iget v1, v1, LM0/i2;->a:I

    const v2, 0x9c4a

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, LM0/c;->b:I

    invoke-static {v1}, LM0/c;->m(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, LM0/c;->j:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v2, LG/w0;

    invoke-virtual {v2}, LG/w0;->c()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    check-cast v2, LG/T;

    invoke-virtual {v2, p2}, LG/T;->c(I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    check-cast v2, LG/P;

    invoke-virtual {v2, p2, v0}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    check-cast v2, LG/h0;

    invoke-virtual {v2}, LG/h0;->c()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_4
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    :pswitch_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :pswitch_7
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
