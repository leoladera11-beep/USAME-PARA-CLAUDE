.class public final synthetic LW/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/k;


# instance fields
.field public final synthetic e:LW/o;

.field public final synthetic f:LW/j;


# direct methods
.method public synthetic constructor <init>(LW/o;LW/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/c;->e:LW/o;

    iput-object p2, p0, LW/c;->f:LW/j;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 11

    check-cast p1, LG/x;

    iget-object v0, p0, LW/c;->e:LW/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LW/c;->f:LW/j;

    iget-boolean v1, v1, LW/j;->A0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    iget-object v1, v0, LW/o;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_0
    iget v1, p1, LG/x;->J:I

    iget-object v3, p1, LG/x;->p:Ljava/lang/String;

    const/4 v4, -0x1

    if-eq v1, v4, :cond_f

    const/4 v5, 0x2

    if-le v1, v5, :cond_f

    const-string v1, "audio/ac4"

    const-string v6, "audio/eac3-joc"

    const/4 v7, 0x0

    const/16 v8, 0x20

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move v9, v4

    goto :goto_1

    :sswitch_0
    const-string v9, "audio/eac3"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move v9, v5

    goto :goto_1

    :sswitch_2
    const-string v9, "audio/ac3"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    move v9, v2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    move v9, v7

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_f

    iget-object v9, v0, LW/o;->h:LH/c;

    if-eqz v9, :cond_f

    iget-boolean v9, v9, LH/c;->e:Z

    if-eqz v9, :cond_f

    :goto_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_e

    iget-object v8, v0, LW/o;->h:LH/c;

    if-eqz v8, :cond_e

    iget-boolean v9, v8, LH/c;->e:Z

    if-eqz v9, :cond_e

    iget-object v8, v8, LH/c;->f:Ljava/lang/Object;

    check-cast v8, Landroid/media/Spatializer;

    if-eqz v8, :cond_e

    invoke-static {v8}, LG/d;->k(Landroid/media/Spatializer;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, LW/o;->h:LH/c;

    iget-object v8, v8, LH/c;->f:Ljava/lang/Object;

    check-cast v8, Landroid/media/Spatializer;

    if-eqz v8, :cond_e

    invoke-static {v8}, LG/d;->n(Landroid/media/Spatializer;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v0, LW/o;->h:LH/c;

    iget-object v0, v0, LW/o;->i:LG/e;

    iget-object v9, v8, LH/c;->f:Ljava/lang/Object;

    check-cast v9, Landroid/media/Spatializer;

    if-eqz v9, :cond_b

    iget-boolean v10, v8, LH/c;->e:Z

    if-eqz v10, :cond_b

    invoke-static {v9}, LG/d;->k(Landroid/media/Spatializer;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v8, LH/c;->f:Ljava/lang/Object;

    check-cast v9, Landroid/media/Spatializer;

    if-eqz v9, :cond_b

    invoke-static {v9}, LG/d;->n(Landroid/media/Spatializer;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, p1, LG/x;->J:I

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v1, 0x10

    if-ne v9, v1, :cond_9

    const/16 v1, 0xc

    goto :goto_3

    :cond_6
    const-string v6, "audio/iamf"

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-ne v9, v4, :cond_9

    const/4 v1, 0x6

    goto :goto_3

    :cond_7
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x12

    if-eq v9, v1, :cond_8

    const/16 v1, 0x15

    if-ne v9, v1, :cond_9

    :cond_8
    const/16 v1, 0x18

    goto :goto_3

    :cond_9
    move v1, v9

    :goto_3
    iget v3, p1, LG/x;->K:I

    if-eq v3, v4, :cond_a

    if-ne v9, v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v1}, LJ/W;->n(I)I

    move-result v3

    :goto_4
    if-nez v3, :cond_c

    :cond_b
    move p1, v7

    goto :goto_5

    :cond_c
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget p1, p1, LG/x;->L:I

    if-eq p1, v4, :cond_d

    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_d
    iget-object p1, v8, LH/c;->f:Ljava/lang/Object;

    check-cast p1, Landroid/media/Spatializer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LG/d;->d(Ljava/lang/Object;)Landroid/media/Spatializer;

    move-result-object p1

    invoke-virtual {v0}, LG/e;->c()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-static {p1, v0, v1}, LG/d;->l(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    :goto_5
    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    return v7

    :cond_f
    :goto_6
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
