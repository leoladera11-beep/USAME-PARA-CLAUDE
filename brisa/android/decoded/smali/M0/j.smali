.class public final LM0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String;

.field public static final B:Ljava/lang/String;

.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;

.field public static final E:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

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
.field public final a:I

.field public final b:I

.field public final c:LM0/q;

.field public final d:Landroid/app/PendingIntent;

.field public final e:LM0/j2;

.field public final f:LG/c0;

.field public final g:LG/c0;

.field public final h:Landroid/os/Bundle;

.field public final i:Landroid/os/Bundle;

.field public final j:LM0/b2;

.field public final k:Lu1/P;

.field public final l:Lu1/P;

.field public final m:Landroid/media/session/MediaSession$Token;

.field public final n:Lu1/P;

.field public final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->p:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->q:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->r:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->s:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->t:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->u:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->v:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->w:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->x:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->y:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->z:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->A:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->B:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->C:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->D:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/j;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILM0/q;Landroid/app/PendingIntent;Lu1/P;Lu1/P;Lu1/P;LM0/j2;LG/c0;LG/c0;Landroid/os/Bundle;Landroid/os/Bundle;LM0/b2;Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM0/j;->a:I

    iput p2, p0, LM0/j;->b:I

    iput-object p3, p0, LM0/j;->c:LM0/q;

    iput-object p4, p0, LM0/j;->d:Landroid/app/PendingIntent;

    iput-object p5, p0, LM0/j;->k:Lu1/P;

    iput-object p6, p0, LM0/j;->l:Lu1/P;

    iput-object p7, p0, LM0/j;->n:Lu1/P;

    iput-object p8, p0, LM0/j;->e:LM0/j2;

    iput-object p9, p0, LM0/j;->f:LG/c0;

    iput-object p10, p0, LM0/j;->g:LG/c0;

    iput-object p11, p0, LM0/j;->h:Landroid/os/Bundle;

    iput-object p12, p0, LM0/j;->i:Landroid/os/Bundle;

    iput-object p13, p0, LM0/j;->j:LM0/b2;

    iput-object p14, p0, LM0/j;->m:Landroid/media/session/MediaSession$Token;

    iput-object p15, p0, LM0/j;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)LM0/j;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, LM0/j;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    instance-of v2, v1, LM0/i;

    if-eqz v2, :cond_0

    check-cast v1, LM0/i;

    iget-object v0, v1, LM0/i;->a:LM0/j;

    return-object v0

    :cond_0
    sget-object v1, LM0/j;->p:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v1, LM0/j;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v1, LM0/j;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lk/e;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LM0/j;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/app/PendingIntent;

    sget-object v3, LM0/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v6

    move v8, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v9}, LM0/c;->i(ILandroid/os/Bundle;)LM0/c;

    move-result-object v9

    invoke-virtual {v6, v9}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lu1/M;->f()Lu1/C0;

    move-result-object v3

    :goto_1
    move-object v8, v3

    goto :goto_2

    :cond_2
    sget-object v3, Lu1/P;->f:Lu1/N;

    sget-object v3, Lu1/C0;->i:Lu1/C0;

    goto :goto_1

    :goto_2
    sget-object v3, LM0/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v6

    move v9, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v10}, LM0/c;->i(ILandroid/os/Bundle;)LM0/c;

    move-result-object v10

    invoke-virtual {v6, v10}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lu1/M;->f()Lu1/C0;

    move-result-object v3

    :goto_4
    move-object v9, v3

    goto :goto_5

    :cond_4
    sget-object v3, Lu1/P;->f:Lu1/N;

    sget-object v3, Lu1/C0;->i:Lu1/C0;

    goto :goto_4

    :goto_5
    sget-object v3, LM0/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v6

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v10}, LM0/c;->i(ILandroid/os/Bundle;)LM0/c;

    move-result-object v10

    invoke-virtual {v6, v10}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v6}, Lu1/M;->f()Lu1/C0;

    move-result-object v2

    :goto_7
    move-object v10, v2

    goto :goto_8

    :cond_6
    sget-object v2, Lu1/P;->f:Lu1/N;

    sget-object v2, Lu1/C0;->i:Lu1/C0;

    goto :goto_7

    :goto_8
    sget-object v2, LM0/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_7

    sget-object v2, LM0/j2;->b:LM0/j2;

    :goto_9
    move-object v11, v2

    goto :goto_a

    :cond_7
    invoke-static {v2}, LM0/j2;->b(Landroid/os/Bundle;)LM0/j2;

    move-result-object v2

    goto :goto_9

    :goto_a
    sget-object v2, LM0/j;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v2, LG/c0;->b:LG/c0;

    :goto_b
    move-object v13, v2

    goto :goto_c

    :cond_8
    invoke-static {v2}, LG/c0;->b(Landroid/os/Bundle;)LG/c0;

    move-result-object v2

    goto :goto_b

    :goto_c
    sget-object v2, LM0/j;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v2, LG/c0;->b:LG/c0;

    :goto_d
    move-object v12, v2

    goto :goto_e

    :cond_9
    invoke-static {v2}, LG/c0;->b(Landroid/os/Bundle;)LG/c0;

    move-result-object v2

    goto :goto_d

    :goto_e
    sget-object v2, LM0/j;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, LM0/j;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v6, LM0/j;->A:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_a

    sget-object v6, LM0/b2;->H:LM0/b2;

    :goto_f
    move-object/from16 v16, v6

    goto :goto_10

    :cond_a
    invoke-static {v5, v6}, LM0/b2;->r(ILandroid/os/Bundle;)LM0/b2;

    move-result-object v6

    goto :goto_f

    :goto_10
    sget-object v6, LM0/j;->D:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Landroid/media/session/MediaSession$Token;

    sget-object v6, LM0/j;->E:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v3

    new-instance v3, LM0/j;

    sget v6, LM0/W1;->m:I

    const-string v6, "androidx.media3.session.IMediaSession"

    invoke-interface {v1, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v6

    if-eqz v6, :cond_b

    instance-of v14, v6, LM0/q;

    if-eqz v14, :cond_b

    check-cast v6, LM0/q;

    goto :goto_11

    :cond_b
    new-instance v6, LM0/p;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v1, v6, LM0/p;->a:Landroid/os/IBinder;

    :goto_11
    if-nez v2, :cond_c

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_c
    move-object v14, v2

    if-nez v0, :cond_d

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_d
    move-object v15, v0

    invoke-direct/range {v3 .. v18}, LM0/j;-><init>(IILM0/q;Landroid/app/PendingIntent;Lu1/P;Lu1/P;Lu1/P;LM0/j2;LG/c0;LG/c0;Landroid/os/Bundle;Landroid/os/Bundle;LM0/b2;Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final b(I)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LM0/j;->p:Ljava/lang/String;

    iget v2, p0, LM0/j;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, LM0/j;->c:LM0/q;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, LM0/j;->q:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lk/e;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, LM0/j;->r:Ljava/lang/String;

    iget-object v2, p0, LM0/j;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, LM0/j;->k:Lu1/P;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    sget-object v3, LM0/j;->s:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM0/c;

    invoke-virtual {v4, p1}, LM0/c;->o(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, LM0/j;->l:Lu1/P;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_5

    const/4 v2, 0x7

    if-lt p1, v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/c;

    invoke-virtual {v3, p1}, LM0/c;->o(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v1, LM0/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    const/16 v2, 0xa

    const/4 v5, 0x1

    invoke-static {v1, v5, v5, v2}, LM0/c;->j(Ljava/util/List;ZZI)Lu1/C0;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget v5, v1, Lu1/C0;->h:I

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v4}, Lu1/P;->m(I)Lu1/N;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Lu1/a;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/c;

    invoke-virtual {v5, p1}, LM0/c;->o(I)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    :goto_3
    iget-object v1, p0, LM0/j;->n:Lu1/P;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM0/c;

    invoke-virtual {v3, p1}, LM0/c;->o(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    sget-object v1, LM0/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    iget-object v1, p0, LM0/j;->e:LM0/j2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, LM0/j2;->a:Lu1/b0;

    invoke-virtual {v1}, Lu1/K;->h()Lu1/R0;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM0/i2;

    invoke-virtual {v5}, LM0/i2;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    sget-object v1, LM0/j2;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, LM0/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, LM0/j;->w:Ljava/lang/String;

    iget-object v2, p0, LM0/j;->f:LG/c0;

    invoke-virtual {v2}, LG/c0;->c()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, LM0/j;->x:Ljava/lang/String;

    iget-object v3, p0, LM0/j;->g:LG/c0;

    invoke-virtual {v3}, LG/c0;->c()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, LM0/j;->y:Ljava/lang/String;

    iget-object v5, p0, LM0/j;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, LM0/j;->z:Ljava/lang/String;

    iget-object v5, p0, LM0/j;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v2, v3}, LM0/Y1;->k(LG/c0;LG/c0;)LG/c0;

    move-result-object v1

    iget-object v2, p0, LM0/j;->j:LM0/b2;

    invoke-virtual {v2, v1, v4, v4}, LM0/b2;->q(LG/c0;ZZ)LM0/b2;

    move-result-object v1

    invoke-virtual {v1, p1}, LM0/b2;->t(I)Landroid/os/Bundle;

    move-result-object p1

    sget-object v1, LM0/j;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p1, LM0/j;->B:Ljava/lang/String;

    iget v1, p0, LM0/j;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, LM0/j;->m:Landroid/media/session/MediaSession$Token;

    if-eqz p1, :cond_9

    sget-object v1, LM0/j;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_9
    iget-object p1, p0, LM0/j;->o:Ljava/lang/String;

    if-eqz p1, :cond_a

    sget-object v1, LM0/j;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method
