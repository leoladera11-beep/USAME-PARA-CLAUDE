.class public LB/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/d;
.implements LI0/C;
.implements Lz1/u;
.implements Lq2/t;


# instance fields
.field public final synthetic e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, LB/A;->e:I

    packed-switch p1, :pswitch_data_0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    return-void

    .line 29
    :pswitch_0
    sget-object p1, LS/i;->e:LS/i;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LB/A;->e:I

    iput-object p2, p0, LB/A;->h:Ljava/lang/Object;

    iput-object p3, p0, LB/A;->f:Ljava/lang/Object;

    iput-object p4, p0, LB/A;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, LB/A;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LB/D;LB/C;LC/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB/A;->e:I

    const-string v0, "store"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, LB/A;->g:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LG/T;Lz1/B;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LB/A;->e:I

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iget-object v0, p1, LG/T;->k:[B

    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 210
    iget-object p1, p1, LG/T;->n:Landroid/net/Uri;

    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    .line 211
    iput-object p2, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LH/a;)V
    .locals 1

    const/16 v0, 0x16

    iput v0, p0, LB/A;->e:I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LB/A;->h:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/X0;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LB/A;->e:I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lh/e;

    .line 194
    invoke-direct {v0}, Lh/j;-><init>()V

    .line 195
    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 196
    new-instance v0, Lh/e;

    .line 197
    invoke-direct {v0}, Lh/j;-><init>()V

    .line 198
    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/t0;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LB/A;->e:I

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    .line 232
    new-instance p1, LN0/e;

    invoke-direct {p1, p0}, LN0/e;-><init>(LB/A;)V

    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/t1;LN0/P;LM0/q1;LM0/N0;)V
    .locals 0

    const/16 p3, 0x8

    iput p3, p0, LB/A;->e:I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    iput-object p2, p0, LB/A;->f:Ljava/lang/Object;

    iput-object p4, p0, LB/A;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN/g;LO/j;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, LB/A;->e:I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    .line 241
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    .line 242
    iput-object p2, p0, LB/A;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LN/x;Lcom/brisa/local/VideoPlaybackService;)V
    .locals 3

    const/16 v0, 0xa

    iput v0, p0, LB/A;->e:I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 245
    new-instance v0, LN/w;

    invoke-direct {v0, p0}, LN/w;-><init>(LB/A;)V

    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;

    .line 246
    iget-object v1, p1, LN/x;->v:LJ/M;

    .line 247
    iget-object p1, p1, LN/x;->t:Landroid/os/Looper;

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v1, p1, v2}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p1

    .line 249
    new-instance v1, LM0/A;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-static {p2, v1, v0}, LN/v;->i(Lcom/brisa/local/VideoPlaybackService;LM0/A;LN/w;)V

    return-void
.end method

.method public constructor <init>(LP/E;)V
    .locals 4

    const/16 v0, 0xc

    iput v0, p0, LB/A;->e:I

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 234
    invoke-static {v0}, LJ/W;->l(LZ/l;)Landroid/os/Handler;

    move-result-object v0

    .line 235
    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;

    .line 236
    new-instance v1, LP/D;

    invoke-direct {v1, p0}, LP/D;-><init>(LB/A;)V

    iput-object v1, p0, LB/A;->f:Ljava/lang/Object;

    .line 237
    iget-object p1, p1, LP/E;->a:Landroid/media/AudioTrack;

    .line 238
    new-instance v2, LM0/A;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, LM0/A;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v2, v1}, LB/r;->r(Landroid/media/AudioTrack;LM0/A;LP/D;)V

    return-void
.end method

.method public constructor <init>(LR0/y;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, LB/A;->e:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    .line 25
    new-instance p1, LR0/b;

    invoke-direct {p1}, LR0/b;-><init>()V

    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lz1/B;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LB/A;->e:I

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 206
    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    .line 207
    iput-object p2, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb0/q;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, LB/A;->e:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LB/A;->e:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, LB/i;

    invoke-direct {v0, p1}, LB/i;-><init>(LB/g;)V

    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    iput p2, p0, LB/A;->e:I

    packed-switch p2, :pswitch_data_0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p2, LG/w;

    invoke-direct {p2}, LG/w;-><init>()V

    .line 35
    const-string v0, "video/mp2t"

    invoke-static {v0}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, LG/w;->n:Ljava/lang/String;

    .line 36
    invoke-static {p1}, LG/W;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, LG/w;->o:Ljava/lang/String;

    .line 37
    new-instance p1, LG/x;

    invoke-direct {p1, p2}, LG/x;-><init>(LG/w;)V

    .line 38
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    return-void

    .line 39
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p2, LW0/c;

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 41
    invoke-direct {p2, v0, v1}, LW0/c;-><init>(IZ)V

    .line 42
    iput-object p2, p0, LB/A;->g:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, LB/A;->h:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, LB/A;->e:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH0/c;

    mul-int/lit8 v2, v0, 0x2

    .line 19
    iget-object v3, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v3, [J

    iget-wide v4, v1, LH0/c;->b:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 20
    iget-wide v4, v1, LH0/c;->c:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p1, [J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method public constructor <init>(Lk/i;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x14

    iput v2, v0, LB/A;->e:I

    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, LB/A;->h:Ljava/lang/Object;

    .line 54
    iput-object v1, v0, LB/A;->g:Ljava/lang/Object;

    .line 55
    iget-object v2, v1, Lk/i;->u:Ljava/util/ArrayList;

    iget-object v3, v1, Lk/i;->c:Ljava/util/ArrayList;

    iget-object v4, v1, Lk/i;->d:Ljava/util/ArrayList;

    .line 56
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, v1, Lk/i;->a:Landroid/content/Context;

    iget-object v7, v1, Lk/i;->q:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, v0, LB/A;->f:Ljava/lang/Object;

    .line 57
    iget-object v6, v1, Lk/i;->t:Landroid/app/Notification;

    .line 58
    iget-wide v7, v6, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->icon:I

    iget v9, v6, Landroid/app/Notification;->iconLevel:I

    .line 59
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 60
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    .line 61
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v6, Landroid/app/Notification;->vibrate:[J

    .line 62
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->ledARGB:I

    iget v10, v6, Landroid/app/Notification;->ledOnMS:I

    iget v11, v6, Landroid/app/Notification;->ledOffMS:I

    .line 63
    invoke-virtual {v7, v8, v10, v11}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v11

    .line 64
    :goto_0
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v11

    .line 65
    :goto_1
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_2

    :cond_2
    move v8, v11

    .line 66
    :goto_2
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->defaults:I

    .line 67
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v1, Lk/i;->e:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v1, Lk/i;->f:Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 70
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v1, Lk/i;->g:Landroid/app/PendingIntent;

    .line 71
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 72
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v6, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    move v10, v11

    .line 73
    :goto_3
    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v1, Lk/i;->h:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 76
    invoke-virtual {v7, v11, v11, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 77
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-boolean v7, v1, Lk/i;->k:Z

    .line 78
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v7, v1, Lk/i;->i:I

    .line 79
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 80
    iget-object v5, v1, Lk/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ""

    const-string v13, "android.support.allowGeneratedReplies"

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/g;

    .line 81
    iget-object v15, v7, Lk/g;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v15, :cond_4

    .line 82
    iget v15, v7, Lk/g;->e:I

    if-eqz v15, :cond_4

    .line 83
    invoke-static {v9, v8, v15}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    iput-object v8, v7, Lk/g;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 84
    :cond_4
    iget-object v8, v7, Lk/g;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 85
    iget-boolean v15, v7, Lk/g;->c:Z

    iget-object v10, v7, Lk/g;->a:Landroid/os/Bundle;

    .line 86
    new-instance v12, Landroid/app/Notification$Action$Builder;

    if-eqz v8, :cond_5

    .line 87
    invoke-static {v8, v9}, Lo/a;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object v8, v9

    .line 88
    :goto_5
    iget-object v9, v7, Lk/g;->f:Ljava/lang/CharSequence;

    .line 89
    iget-object v14, v7, Lk/g;->g:Landroid/app/PendingIntent;

    .line 90
    invoke-direct {v12, v8, v9, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz v10, :cond_6

    .line 91
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_6

    .line 92
    :cond_6
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 93
    :goto_6
    invoke-virtual {v8, v13, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    invoke-virtual {v12, v15}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 96
    const-string v10, "android.support.action.semanticAction"

    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_7

    .line 97
    invoke-static {v12}, LN0/n;->k(Landroid/app/Notification$Action$Builder;)V

    :cond_7
    const/16 v10, 0x1d

    if-lt v9, v10, :cond_8

    .line 98
    invoke-static {v12}, Lcom/brisa/local/n;->e(Landroid/app/Notification$Action$Builder;)V

    :cond_8
    const/16 v10, 0x1f

    if-lt v9, v10, :cond_9

    .line 99
    invoke-static {v12}, LO/h;->o(Landroid/app/Notification$Action$Builder;)V

    .line 100
    :cond_9
    const-string v9, "android.support.action.showsUserInterface"

    .line 101
    iget-boolean v7, v7, Lk/g;->d:Z

    .line 102
    invoke-virtual {v8, v9, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {v12, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 104
    iget-object v7, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    goto :goto_4

    .line 105
    :cond_a
    iget-object v5, v1, Lk/i;->o:Landroid/os/Bundle;

    if-eqz v5, :cond_b

    .line 106
    iget-object v7, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 107
    :cond_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    iget-object v7, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    iget-boolean v9, v1, Lk/i;->j:Z

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 109
    iget-object v7, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    iget-boolean v9, v1, Lk/i;->n:Z

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, v1, Lk/i;->m:Ljava/lang/String;

    .line 110
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 111
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v9, 0x0

    .line 112
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 113
    iget-object v7, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v7, Landroid/app/Notification$Builder;

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 114
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v10, v1, Lk/i;->p:I

    .line 115
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 116
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v6, v6, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 117
    invoke-virtual {v7, v9, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    const/16 v10, 0x1c

    if-ge v5, v10, :cond_10

    if-nez v3, :cond_c

    const/4 v5, 0x0

    goto :goto_7

    .line 118
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_f

    :goto_7
    if-nez v5, :cond_d

    goto :goto_8

    :cond_d
    if-nez v2, :cond_e

    move-object v2, v5

    goto :goto_8

    .line 120
    :cond_e
    new-instance v6, Lh/f;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v7

    invoke-direct {v6, v9}, Lh/f;-><init>(I)V

    .line 121
    invoke-virtual {v6, v5}, Lh/f;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-virtual {v6, v2}, Lh/f;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8

    .line 124
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_10
    :goto_8
    if-eqz v2, :cond_11

    .line 127
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 128
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    iget-object v6, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v6, Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 130
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 131
    iget-object v2, v1, Lk/i;->o:Landroid/os/Bundle;

    if-nez v2, :cond_12

    .line 132
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lk/i;->o:Landroid/os/Bundle;

    .line 133
    :cond_12
    iget-object v2, v1, Lk/i;->o:Landroid/os/Bundle;

    .line 134
    const-string v5, "android.car.EXTENSIONS"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_13

    .line 135
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 136
    :cond_13
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 137
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move v9, v11

    .line 138
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_17

    .line 139
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 140
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk/g;

    .line 141
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 142
    iget-object v15, v12, Lk/g;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v15, :cond_14

    .line 143
    iget v15, v12, Lk/g;->e:I

    if-eqz v15, :cond_14

    const/4 v11, 0x0

    .line 144
    invoke-static {v11, v8, v15}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v15

    iput-object v15, v12, Lk/g;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 145
    :cond_14
    iget-object v11, v12, Lk/g;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 146
    iget-object v15, v12, Lk/g;->a:Landroid/os/Bundle;

    if-eqz v11, :cond_15

    .line 147
    invoke-virtual {v11}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result v11

    :goto_b
    move-object/from16 v16, v3

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    goto :goto_b

    :goto_c
    const-string v3, "icon"

    invoke-virtual {v14, v3, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string v3, "title"

    .line 149
    iget-object v11, v12, Lk/g;->f:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {v14, v3, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    const-string v3, "actionIntent"

    .line 152
    iget-object v11, v12, Lk/g;->g:Landroid/app/PendingIntent;

    .line 153
    invoke-virtual {v14, v3, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v15, :cond_16

    .line 154
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    .line 155
    :cond_16
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 156
    :goto_d
    iget-boolean v11, v12, Lk/g;->c:Z

    .line 157
    invoke-virtual {v3, v13, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v11, "extras"

    invoke-virtual {v14, v11, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    const-string v3, "remoteInputs"

    const/4 v11, 0x0

    invoke-virtual {v14, v3, v11}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 160
    const-string v3, "showsUserInterface"

    .line 161
    iget-boolean v11, v12, Lk/g;->d:Z

    .line 162
    invoke-virtual {v14, v3, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v3, "semanticAction"

    const/4 v11, 0x0

    invoke-virtual {v14, v3, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {v7, v10, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    const/4 v11, 0x0

    goto :goto_a

    :cond_17
    move-object/from16 v16, v3

    .line 165
    const-string v3, "invisible_actions"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    iget-object v3, v1, Lk/i;->o:Landroid/os/Bundle;

    if-nez v3, :cond_18

    .line 168
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Lk/i;->o:Landroid/os/Bundle;

    .line 169
    :cond_18
    iget-object v3, v1, Lk/i;->o:Landroid/os/Bundle;

    .line 170
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 171
    iget-object v2, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_e

    :cond_19
    move-object/from16 v16, v3

    .line 172
    :goto_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    iget-object v3, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lk/i;->o:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v11, 0x0

    .line 174
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 175
    iget-object v3, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 177
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    .line 178
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 179
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 180
    iget-object v3, v1, Lk/i;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 181
    iget-object v3, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 183
    invoke-virtual {v3, v4, v4, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_1a
    const/16 v10, 0x1c

    if-lt v2, v10, :cond_1b

    .line 185
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    const/16 v10, 0x1d

    goto :goto_f

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :goto_f
    if-lt v2, v10, :cond_1d

    .line 188
    iget-object v3, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    iget-boolean v4, v1, Lk/i;->s:Z

    invoke-static {v3, v4}, Lcom/brisa/local/n;->g(Landroid/app/Notification$Builder;Z)V

    .line 189
    iget-object v3, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v3, Landroid/app/Notification$Builder;

    invoke-static {v3}, Lcom/brisa/local/n;->f(Landroid/app/Notification$Builder;)V

    :cond_1d
    const/16 v10, 0x1f

    if-lt v2, v10, :cond_1e

    .line 190
    iget v1, v1, Lk/i;->r:I

    if-eqz v1, :cond_1e

    .line 191
    iget-object v2, v0, LB/A;->f:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Builder;

    invoke-static {v2, v1}, LO/h;->p(Landroid/app/Notification$Builder;I)V

    :cond_1e
    return-void
.end method

.method public constructor <init>(Lo2/p;Ln2/b;Lo2/f;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, LB/A;->e:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, LB/A;->g:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BLz1/B;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LB/A;->e:I

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, LB/A;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    .line 203
    iput-object p2, p0, LB/A;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([LH/o;)V
    .locals 5

    const/16 v0, 0xd

    iput v0, p0, LB/A;->e:I

    .line 212
    new-instance v0, LP/U;

    invoke-direct {v0}, LP/U;-><init>()V

    new-instance v1, LH/u;

    .line 213
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 214
    iput v2, v1, LH/u;->c:F

    .line 215
    iput v2, v1, LH/u;->d:F

    .line 216
    sget-object v2, LH/k;->e:LH/k;

    iput-object v2, v1, LH/u;->e:LH/k;

    .line 217
    iput-object v2, v1, LH/u;->f:LH/k;

    .line 218
    iput-object v2, v1, LH/u;->g:LH/k;

    .line 219
    iput-object v2, v1, LH/u;->h:LH/k;

    .line 220
    sget-object v2, LH/o;->a:Ljava/nio/ByteBuffer;

    iput-object v2, v1, LH/u;->k:Ljava/nio/ByteBuffer;

    .line 221
    iput-object v2, v1, LH/u;->l:Ljava/nio/ByteBuffer;

    const/4 v2, -0x1

    .line 222
    iput v2, v1, LH/u;->b:I

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [LH/o;

    iput-object v2, p0, LB/A;->f:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 225
    array-length v4, p1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;

    .line 227
    iput-object v1, p0, LB/A;->h:Ljava/lang/Object;

    .line 228
    array-length v3, p1

    aput-object v0, v2, v3

    .line 229
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method

.method public static O(Lo2/p;Ln2/b;)LB/A;
    .locals 2

    invoke-virtual {p0}, Lo2/p;->w()Lo2/g;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, v0, Lo2/g;->n:Lo2/f;

    goto :goto_1

    :cond_0
    new-instance v0, Lo2/g;

    invoke-direct {v0}, Lo2/g;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lo2/f;->g:Z

    if-eqz v1, :cond_3

    new-instance v1, Lo2/r;

    invoke-direct {v1, p0, p1, v0}, LB/A;-><init>(Lo2/p;Ln2/b;Lo2/f;)V

    const/4 p1, 0x0

    iput-boolean p1, v1, Lo2/r;->i:Z

    :goto_2
    if-eqz p0, :cond_2

    instance-of p1, p0, Lo2/j;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lo2/j;

    iget-object p1, p1, Lo2/j;->h:Lp2/E;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lp2/E;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, v1, Lo2/r;->i:Z

    return-object v1

    :cond_1
    iget-object p0, p0, Lo2/p;->e:Lo2/j;

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, LB/A;

    invoke-direct {v1, p0, p1, v0}, LB/A;-><init>(Lo2/p;Ln2/b;Lo2/f;)V

    return-object v1
.end method

.method public static t(LG/H;)LQ/f;
    .locals 14

    new-instance v0, LA0/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA0/d;-><init>(I)V

    new-instance v4, LH/c;

    iget-object v2, p0, LG/H;->b:Landroid/net/Uri;

    const/4 v10, 0x0

    if-nez v2, :cond_0

    move-object v2, v10

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-boolean v3, p0, LG/H;->f:Z

    invoke-direct {v4, v2, v3, v0}, LH/c;-><init>(Ljava/lang/String;ZLA0/d;)V

    iget-object v0, p0, LG/H;->c:Lu1/T;

    iget-object v2, v0, Lu1/T;->e:Lu1/b0;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lu1/T;->b()Lu1/E0;

    move-result-object v2

    iput-object v2, v0, Lu1/T;->e:Lu1/b0;

    :cond_1
    invoke-virtual {v2}, Lu1/K;->h()Lu1/R0;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, LH/c;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, v4, LH/c;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget v0, LG/m;->a:I

    new-instance v9, Lcom/brisa/local/j;

    const/16 v0, 0x18

    invoke-direct {v9, v0}, Lcom/brisa/local/j;-><init>(I)V

    iget-object v3, p0, LG/H;->a:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, p0, LG/H;->d:Z

    iget-boolean v8, p0, LG/H;->e:Z

    iget-object v0, p0, LG/H;->g:Lu1/P;

    invoke-static {v0}, LS1/e;->t(Ljava/util/Collection;)[I

    move-result-object v0

    array-length v2, v0

    const/4 v7, 0x0

    move v11, v7

    :goto_2
    if-ge v11, v2, :cond_5

    aget v12, v0, v11

    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    if-ne v12, v1, :cond_3

    goto :goto_3

    :cond_3
    move v12, v7

    goto :goto_4

    :cond_4
    :goto_3
    move v12, v1

    :goto_4
    invoke-static {v12}, LF1/i;->g(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [I

    new-instance v2, LQ/f;

    invoke-direct/range {v2 .. v9}, LQ/f;-><init>(Ljava/util/UUID;LH/c;Ljava/util/HashMap;Z[IZLcom/brisa/local/j;)V

    iget-object p0, p0, LG/H;->h:[B

    if-eqz p0, :cond_6

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    :cond_6
    iget-object p0, v2, LQ/f;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    invoke-static {p0}, LF1/i;->o(Z)V

    iput-object v10, v2, LQ/f;->v:[B

    return-object v2
.end method


# virtual methods
.method public A(Ljava/lang/Object;)LM0/N0;
    .locals 2

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/N0;

    return-object p1
.end method

.method public B()J
    .locals 2

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lb0/j;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lb0/j;->h:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public C(I)I
    .locals 5

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    const/4 v1, -0x1

    if-gez p1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v2, LR0/y;

    iget-object v2, v2, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, LR0/b;->g(I)I

    move-result v4

    sub-int v4, v3, v4

    sub-int v4, p1, v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, LR0/b;->i(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    return v1
.end method

.method public D(LM0/N0;)LM0/h2;
    .locals 2

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/g;

    if-eqz p1, :cond_0

    iget-object p1, p1, LM0/g;->b:LM0/h2;

    return-object p1

    :cond_0
    return-object v1
.end method

.method public E(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public G(LO1/b;Ljava/lang/String;)LB/B;
    .locals 7

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, LB/C;

    const-string v1, "key"

    invoke-static {p2, v1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LB/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LB/D;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB/B;

    iget-object p1, p1, LO1/b;->a:Ljava/lang/Class;

    sget-object v3, LO1/b;->b:Ljava/util/Map;

    const-string v4, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>"

    invoke-static {v3, v4}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    instance-of v4, v2, LE1/a;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    instance-of v4, v2, LO1/c;

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, LO1/c;

    invoke-interface {v4}, LO1/c;->a()I

    move-result v4

    goto :goto_0

    :cond_0
    instance-of v4, v2, LN1/a;

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    instance-of v4, v2, LN1/o;

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    if-ne v4, v3, :cond_5

    move v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, LO1/g;->a:LO1/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LO1/b;

    invoke-direct {v3, p1}, LO1/b;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Lj1/a;->d(LQ1/a;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, p1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    invoke-static {v2, p1}, LO1/d;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_6
    new-instance v2, LC/c;

    iget-object v3, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v3, LC/b;

    invoke-direct {v2, v3}, LC/c;-><init>(LC/b;)V

    iget-object v3, v2, LC/b;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    sget-object v4, LD/b;->a:LD/b;

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v0, p1, v2}, LB/C;->b(Ljava/lang/Class;LC/b;)LB/B;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget-object v2, LC/a;->b:LC/a;

    const-string v3, "extras"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, LB/C;->b(Ljava/lang/Class;LC/b;)LB/B;

    move-result-object p1

    :goto_3
    const-string v0, "viewModel"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LB/B;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, LB/B;->a()V

    :cond_7
    return-object p1
.end method

.method public H(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, LR0/T;->a:Landroid/view/View;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, LR0/T;->p:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iput v2, p1, LR0/T;->o:I

    goto :goto_0

    :cond_0
    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ls/g;->c(Landroid/view/View;)I

    move-result v2

    iput v2, p1, LR0/T;->o:I

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iput v3, p1, LR0/T;->p:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object p1, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v1, v3}, Ls/g;->s(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public I(I)V
    .locals 6

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Ln2/b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ln2/b;->a(C)Ln2/b;

    move-result-object v0

    iget-object v1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Lo2/f;

    iget v2, v1, Lo2/f;->h:I

    mul-int/2addr p1, v2

    iget v1, v1, Lo2/f;->i:I

    sget-object v2, Ln2/e;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "width must be >= 0"

    invoke-static {v5, v4}, LS1/e;->l(Ljava/lang/String;Z)V

    const/4 v4, -0x1

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-static {v3}, LS1/e;->m(Z)V

    if-eq v1, v4, :cond_2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    sget-object v1, Ln2/e;->a:[Ljava/lang/String;

    const/16 v3, 0x15

    if-ge p1, v3, :cond_3

    aget-object p1, v1, p1

    goto :goto_3

    :cond_3
    new-array v1, p1, [C

    :goto_2
    if-ge v2, p1, :cond_4

    const/16 v3, 0x20

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Ln2/b;->b(Ljava/lang/String;)Ln2/b;

    return-void
.end method

.method public J(LL/h;Landroid/net/Uri;Ljava/util/Map;JJLU/T;)V
    .locals 7

    new-instance v1, Lb0/j;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lb0/j;-><init>(LG/o;JJ)V

    iput-object v1, p0, LB/A;->h:Ljava/lang/Object;

    iget-object p1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p1, Lb0/n;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast p1, Lb0/q;

    invoke-interface {p1, p2, p3}, Lb0/q;->f(Landroid/net/Uri;Ljava/util/Map;)[Lb0/n;

    move-result-object p1

    array-length p3, p1

    sget-object p4, Lu1/P;->f:Lu1/N;

    const-string p4, "expectedSize"

    invoke-static {p3, p4}, Lu1/s;->e(ILjava/lang/String;)V

    new-instance p4, Lu1/M;

    invoke-direct {p4, p3}, Lu1/I;-><init>(I)V

    array-length p3, p1

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-ne p3, p5, :cond_1

    aget-object p1, p1, p6

    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_1
    array-length p3, p1

    move p7, p6

    :goto_0
    if-ge p7, p3, :cond_7

    aget-object v0, p1, p7

    :try_start_0
    invoke-interface {v0, v1}, Lb0/n;->d(Lb0/o;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, LB/A;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p6, v1, Lb0/j;->j:I

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-interface {v0}, Lb0/n;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p4, v0}, Lu1/I;->d(Ljava/lang/Iterable;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lb0/n;

    if-nez v0, :cond_4

    iget-wide v5, v1, Lb0/j;->h:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, p6

    goto :goto_2

    :cond_4
    :goto_1
    move v0, p5

    :goto_2
    invoke-static {v0}, LF1/i;->o(Z)V

    iput p6, v1, Lb0/j;->j:I

    goto :goto_5

    :goto_3
    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Lb0/n;

    if-nez p2, :cond_6

    iget-wide p2, v1, Lb0/j;->h:J

    cmp-long p2, p2, v3

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move p5, p6

    :cond_6
    :goto_4
    invoke-static {p5}, LF1/i;->o(Z)V

    iput p6, v1, Lb0/j;->j:I

    throw p1

    :catch_0
    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lb0/n;

    if-nez v0, :cond_4

    iget-wide v5, v1, Lb0/j;->h:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_3

    goto :goto_1

    :goto_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_7
    :goto_6
    iget-object p3, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p3, Lb0/n;

    if-eqz p3, :cond_8

    :goto_7
    iget-object p1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p1, Lb0/n;

    invoke-interface {p1, p8}, Lb0/n;->b(Lb0/p;)V

    return-void

    :cond_8
    new-instance p3, LU/m0;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "None of the available extractors ("

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p6, LK/a;

    const-string p7, ", "

    invoke-direct {p6, p7}, LK/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lu1/P;->l([Ljava/lang/Object;)Lu1/C0;

    move-result-object p1

    new-instance p7, LP/B;

    const/4 p8, 0x7

    invoke-direct {p7, p8}, LP/B;-><init>(I)V

    invoke-static {p1, p7}, Lu1/s;->v(Ljava/util/List;Lt1/j;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p7, p1}, LK/a;->b(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Lu1/M;->f()Lu1/C0;

    move-result-object p2

    invoke-direct {p3, p1, p2}, LU/m0;-><init>(Ljava/lang/String;Lu1/C0;)V

    throw p3
.end method

.method public K(LM0/N0;)Z
    .locals 2

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public L(LM0/N0;I)Z
    .locals 2

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/g;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-eqz p1, :cond_0

    iget-object p1, p1, LM0/g;->e:LG/c0;

    invoke-virtual {p1, p2}, LG/c0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LM0/X0;->x()V

    iget-object p1, v0, LM0/X0;->t:LM0/d2;

    invoke-virtual {p1}, LM0/d2;->w()LG/c0;

    move-result-object p1

    invoke-virtual {p1, p2}, LG/c0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public M(LM0/N0;LM0/i2;)Z
    .locals 2

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/g;

    if-eqz p1, :cond_1

    iget-object p1, p1, LM0/g;->d:LM0/j2;

    iget-object p1, p1, LM0/j2;->a:Lu1/b0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lu1/K;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, LM0/i2;->b:Ljava/lang/String;

    invoke-static {p1}, LM0/c;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public N(LB/d;)V
    .locals 2

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LB/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB/z;->run()V

    :cond_0
    new-instance v0, LB/z;

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LB/i;

    invoke-direct {v0, v1, p1}, LB/z;-><init>(LB/i;LB/d;)V

    iput-object v0, p0, LB/A;->h:Ljava/lang/Object;

    iget-object p1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public P(LX/a;)V
    .locals 1

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LO/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LN/g;

    iget-object v0, v0, LN/g;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN/f;

    if-eqz p1, :cond_0

    monitor-enter p1

    :try_start_0
    iget v0, p1, LN/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, LN/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public Q(LM0/N0;)V
    .locals 4

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    invoke-virtual {v0, p1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Lh/e;

    iget-object v2, v0, LM0/g;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, LM0/g;->b:LM0/h2;

    invoke-virtual {v0}, LM0/h2;->a()V

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LM0/X0;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, LM0/X0;->l:Landroid/os/Handler;

    new-instance v2, LM0/d;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LM0/d;-><init>(LM0/X0;LM0/N0;I)V

    invoke-static {v1, v2}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public R(Landroid/media/MediaCodec;)V
    .locals 1

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, LS/a;->c(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method

.method public S(I)V
    .locals 2

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0}, LS/a;->b(Landroid/media/LoudnessCodecController;)V

    const/4 v0, 0x0

    iput-object v0, p0, LB/A;->h:Ljava/lang/Object;

    :cond_0
    new-instance v0, LS/h;

    invoke-direct {v0, p0}, LS/h;-><init>(LB/A;)V

    invoke-static {p1, v0}, LS/a;->a(ILS/h;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-static {p1, v1}, LS/a;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p1, LR0/T;->o:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->I()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p1, LR0/T;->p:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, LR0/T;->a:Landroid/view/View;

    sget-object v2, Ls/u;->a:Ljava/lang/reflect/Field;

    invoke-static {v0, v1}, Ls/g;->s(Landroid/view/View;I)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p1, LR0/T;->o:I

    :cond_1
    return-void
.end method

.method public U()V
    .locals 9

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lb/e;

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lb/e;->h:Landroid/os/Bundle;

    iget-object v3, v0, Lb/e;->g:Ljava/util/HashMap;

    iget-object v4, v0, Lb/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lb/e;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    iget-object v5, v0, Lb/e;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, v0, Lb/e;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ": "

    const-string v6, "Dropping pending result for request "

    const-string v7, "ActivityResultRegistry"

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lb/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public V()V
    .locals 2

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v0, v0, LM0/X0;->l:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->o(Z)V

    :cond_1
    return-void
.end method

.method public a(J)I
    .locals 2

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, LJ/W;->a([JJZ)I

    move-result p1

    array-length p2, v0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(LJ/S;Lb0/p;LI0/J;)V
    .locals 0

    iput-object p1, p0, LB/A;->g:Ljava/lang/Object;

    invoke-virtual {p3}, LI0/J;->a()V

    invoke-virtual {p3}, LI0/J;->b()V

    iget p1, p3, LI0/J;->d:I

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lb0/p;->v(II)Lb0/G;

    move-result-object p1

    iput-object p1, p0, LB/A;->h:Ljava/lang/Object;

    iget-object p2, p0, LB/A;->f:Ljava/lang/Object;

    check-cast p2, LG/x;

    invoke-interface {p1, p2}, Lb0/G;->b(LG/x;)V

    return-void
.end method

.method public c(I)J
    .locals 4

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, LF1/i;->g(Z)V

    array-length v3, v0

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, LF1/i;->g(Z)V

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, LB/A;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f09004b

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LO0/u;

    iget-object v0, v0, LO0/u;->a:LO0/z;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LO0/z;->h(Landroid/view/View;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The media route button placeholder missing layout params."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, LM0/L0;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->g:Lh/e;

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LN0/P;

    invoke-virtual {v0, v1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget v0, LM0/t1;->B:I

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LM0/t1;

    iget-object v0, v0, LM0/t1;->h:Lh/e;

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LN0/P;

    invoke-virtual {v0, v1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, LM0/t1;

    iget-object v1, v1, LM0/t1;->i:LM0/X0;

    invoke-virtual {v1}, LM0/X0;->l()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v1, p1, LM0/L0;->a:Z

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, LM0/t1;

    iget-object v1, v1, LM0/t1;->f:LB/A;

    iget-object v2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget-object v3, v2, LM0/N0;->a:LN0/P;

    iget-object v4, p1, LM0/L0;->b:LM0/j2;

    iget-object p1, p1, LM0/L0;->c:LG/c0;

    invoke-virtual {v1, v3, v2, v4, p1}, LB/A;->i(Ljava/lang/Object;LM0/N0;LM0/j2;LG/c0;)V

    iget-object p1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    iget-object v1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    iget-boolean v2, p1, LM0/X0;->z:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, LM0/X0;->m(LM0/N0;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, LM0/X0;->e:Lcom/brisa/local/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object v1, p1, LM0/t1;->l:LM0/p1;

    iget-object v2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    iget-wide v3, p1, LM0/t1;->t:J

    const/16 p1, 0x3e9

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/s1;

    :try_start_0
    iget-object v1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LM0/N0;

    invoke-interface {v0, v1}, LM0/s1;->a(LM0/N0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v2, LM0/N0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionLegacyStub"

    invoke-static {v2, v1, v0}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public e(J)Ljava/util/List;
    .locals 9

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v5, [J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v7, v5, v6

    cmp-long v7, v7, p1

    if-gtz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH0/c;

    iget-object v6, v5, LH0/c;->a:LI/b;

    iget v7, v6, LI/b;->e:F

    const v8, -0x800001

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, LH0/d;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LH0/d;-><init>(I)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH0/c;

    iget-object p1, p1, LH0/c;->a:LI/b;

    invoke-virtual {p1}, LI/b;->a()LI/a;

    move-result-object p1

    rsub-int/lit8 p2, v3, -0x1

    int-to-float p2, p2

    iput p2, p1, LI/a;->e:F

    const/4 p2, 0x1

    iput p2, p1, LI/a;->f:I

    invoke-virtual {p1}, LI/a;->a()LI/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public f(LJ/D;)V
    .locals 13

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, LJ/S;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LJ/S;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v1, LJ/S;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v6, v1, LJ/S;->b:J

    add-long/2addr v2, v6

    :goto_0
    move-wide v7, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, LJ/S;->d()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v1

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LJ/S;

    monitor-enter v2

    :try_start_1
    iget-wide v0, v2, LJ/S;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    cmp-long v2, v7, v4

    if-eqz v2, :cond_3

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v2, LG/x;

    iget-wide v3, v2, LG/x;->u:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, LG/x;->a()LG/w;

    move-result-object v2

    iput-wide v0, v2, LG/w;->t:J

    new-instance v0, LG/x;

    invoke-direct {v0, v2}, LG/x;-><init>(LG/w;)V

    iput-object v0, p0, LB/A;->f:Ljava/lang/Object;

    iget-object v1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Lb0/G;

    invoke-interface {v1, v0}, Lb0/G;->b(LG/x;)V

    :cond_2
    invoke-virtual {p1}, LJ/D;->a()I

    move-result v10

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lb0/G;

    invoke-interface {v0, v10, p1}, Lb0/G;->a(ILJ/D;)V

    iget-object p1, p0, LB/A;->h:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lb0/G;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lb0/G;->f(JIIILb0/F;)V

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    return v0
.end method

.method public h(Lo2/p;I)V
    .locals 1

    instance-of v0, p1, Lo2/j;

    if-eqz v0, :cond_0

    check-cast p1, Lo2/j;

    invoke-virtual {p0, p1, p2}, LB/A;->n(Lo2/j;I)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Object;LM0/N0;LM0/j2;LG/c0;)V
    .locals 11

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    invoke-virtual {p0}, LB/A;->V()V

    invoke-virtual {p0, p1}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Lh/e;

    invoke-virtual {v1, p1, p2}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LG/q0;->a:LG/m0;

    sget-object v2, LG/y0;->b:LG/y0;

    iget-object v3, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/X0;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, LM0/X0;->x()V

    iget-object v1, v3, LM0/X0;->t:LM0/d2;

    invoke-virtual {v1}, LM0/d2;->X0()LG/q0;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v1, v4}, LM0/d2;->S0(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, LM0/d2;->E()LG/y0;

    move-result-object v2

    :cond_0
    move-object v9, v3

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v9, v1

    goto :goto_0

    :goto_1
    new-instance v4, LM0/g;

    new-instance v6, LM0/h2;

    invoke-direct {v6}, LM0/h2;-><init>()V

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v10}, LM0/g;-><init>(Ljava/lang/Object;LM0/h2;LM0/j2;LG/c0;LG/q0;LG/y0;)V

    invoke-virtual {v0, p2, v4}, Lh/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    move-object v7, p3

    move-object v8, p4

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, p1, LM0/g;->d:LM0/j2;

    iput-object v8, p1, LM0/g;->e:LG/c0;

    return-void
.end method

.method public j(Lo2/p;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo2/x;

    if-ne v0, v1, :cond_0

    check-cast p1, Lo2/x;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LB/A;->o(Lo2/x;II)V

    return-void

    :cond_0
    instance-of v0, p1, Lo2/j;

    if-eqz v0, :cond_1

    check-cast p1, Lo2/j;

    invoke-virtual {p0, p1, p2}, LB/A;->l(Lo2/j;I)V

    return-void

    :cond_1
    check-cast p1, Lo2/o;

    invoke-virtual {p0, p1, p2}, LB/A;->m(Lo2/o;I)V

    return-void
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 2

    iget p1, p0, LB/A;->e:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object v0, p1, LM0/t1;->g:Lh/e;

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, LN0/P;

    invoke-virtual {v0, v1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    sget v0, LM0/t1;->B:I

    iget-object p1, p1, LM0/t1;->h:Lh/e;

    invoke-virtual {p1, v1}, Lh/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public l(Lo2/j;I)V
    .locals 1

    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ln2/b;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    invoke-virtual {p1, p2, v0}, Lo2/j;->v(Ln2/b;Lo2/f;)V

    return-void
.end method

.method public m(Lo2/o;I)V
    .locals 1

    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ln2/b;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    invoke-virtual {p1, p2, v0}, Lo2/p;->v(Ln2/b;Lo2/f;)V

    return-void
.end method

.method public n(Lo2/j;I)V
    .locals 1

    iget-object p2, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p2, Ln2/b;

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    invoke-virtual {p1, p2, v0}, Lo2/j;->Q(Ln2/b;Lo2/f;)V

    return-void
.end method

.method public o(Lo2/x;II)V
    .locals 2

    or-int/lit8 p2, p2, 0x1

    iget-object p3, p0, LB/A;->g:Ljava/lang/Object;

    check-cast p3, Ln2/b;

    invoke-virtual {p1}, Lo2/o;->F()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Lo2/f;

    sget-object v1, Lo2/l;->a:[C

    iget-object v1, v0, Lo2/f;->e:Lo2/k;

    iget-object v0, v0, Lo2/f;->f:Ljava/nio/charset/Charset;

    invoke-static {p1, p3, v1, v0, p2}, Lo2/l;->c(Ljava/lang/String;Ln2/b;Lo2/k;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public p(LM0/N0;ILM0/f;)V
    .locals 2

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM0/g;

    if-eqz p1, :cond_0

    iget-object v0, p1, LM0/g;->g:LG/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LG/b0;

    invoke-direct {v1, v0}, LG/b0;-><init>(LG/c0;)V

    iget-object v0, v1, LG/b0;->a:LE/b;

    invoke-virtual {v0, p2}, LE/b;->a(I)V

    invoke-virtual {v1}, LG/b0;->c()LG/c0;

    move-result-object p2

    iput-object p2, p1, LM0/g;->g:LG/c0;

    iget-object p1, p1, LM0/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public q(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LB/A;->C(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    invoke-virtual {v1, p2, p3}, LR0/b;->j(IZ)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, LB/A;->H(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    return-void
.end method

.method public r(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-gez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LB/A;->C(I)I

    move-result p2

    :goto_0
    iget-object v1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    invoke-virtual {v1, p2, p4}, LR0/b;->j(IZ)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, LB/A;->H(Landroid/view/View;)V

    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, LR0/T;->i()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p4}, LR0/T;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget v1, p4, LR0/T;->i:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p4, LR0/T;->i:I

    :cond_4
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, LB/A;->e:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LW0/c;

    iget-object v1, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, LW0/c;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, LW0/c;->f:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, v1, LW0/c;->g:Ljava/lang/Object;

    check-cast v1, LW0/c;

    const-string v2, ", "

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v1, LR0/b;

    invoke-virtual {v1}, LR0/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public u(I)V
    .locals 4

    invoke-virtual {p0, p1}, LB/A;->C(I)I

    move-result p1

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, LR0/b;

    invoke-virtual {v0, p1}, LR0/b;->n(I)Z

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)LR0/T;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LR0/T;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LR0/T;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, LR0/T;->a(I)V

    :cond_2
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public v(LM0/g;)V
    .locals 4

    iget-object v0, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/X0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LB/A;->V()V

    :cond_1
    iget-object v1, p1, LM0/g;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM0/f;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p1, LM0/g;->f:Z

    return-void

    :cond_2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, p1, LM0/g;->a:Ljava/lang/Object;

    invoke-virtual {p0, v3}, LB/A;->A(Ljava/lang/Object;)LM0/N0;

    invoke-interface {v1}, LM0/f;->run()Lz1/B;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/B;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, LJ/U;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v0, p1}, LJ/U;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lz1/s;->e:Lz1/s;

    invoke-interface {v1, v2, p1}, Lz1/B;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public w(LM0/N0;)V
    .locals 4

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->g:Ljava/lang/Object;

    check-cast v0, Lh/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM0/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, LM0/g;->g:LG/c0;

    sget-object v2, LG/c0;->b:LG/c0;

    iput-object v2, v0, LM0/g;->g:LG/c0;

    iget-object v2, v0, LM0/g;->c:Ljava/util/ArrayDeque;

    new-instance v3, LM0/e;

    invoke-direct {v3, p0, p1, v1}, LM0/e;-><init>(LB/A;LM0/N0;LG/c0;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, LM0/g;->f:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, v0, LM0/g;->f:Z

    invoke-virtual {p0, v0}, LB/A;->v(LM0/g;)V

    return-void
.end method

.method public x(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, LB/A;->C(I)I

    move-result p1

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public y()I
    .locals 2

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, LR0/y;

    iget-object v0, v0, LR0/y;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, LB/A;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public z()Lu1/P;
    .locals 1

    invoke-virtual {p0}, LB/A;->V()V

    iget-object v0, p0, LB/A;->f:Ljava/lang/Object;

    check-cast v0, Lh/e;

    invoke-virtual {v0}, Lh/e;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lu1/P;->k(Ljava/util/Collection;)Lu1/P;

    move-result-object v0

    return-object v0
.end method
