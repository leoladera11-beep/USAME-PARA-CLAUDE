.class public final LM0/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final H:LM0/b2;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;

.field public static final Q:Ljava/lang/String;

.field public static final R:Ljava/lang/String;

.field public static final S:Ljava/lang/String;

.field public static final T:Ljava/lang/String;

.field public static final U:Ljava/lang/String;

.field public static final V:Ljava/lang/String;

.field public static final W:Ljava/lang/String;

.field public static final X:Ljava/lang/String;

.field public static final Y:Ljava/lang/String;

.field public static final Z:Ljava/lang/String;

.field public static final a0:Ljava/lang/String;

.field public static final b0:Ljava/lang/String;

.field public static final c0:Ljava/lang/String;

.field public static final d0:Ljava/lang/String;

.field public static final e0:Ljava/lang/String;

.field public static final f0:Ljava/lang/String;

.field public static final g0:Ljava/lang/String;

.field public static final h0:Ljava/lang/String;

.field public static final i0:Ljava/lang/String;

.field public static final j0:Ljava/lang/String;

.field public static final k0:Ljava/lang/String;

.field public static final l0:Ljava/lang/String;

.field public static final m0:Ljava/lang/String;

.field public static final n0:Ljava/lang/String;

.field public static final o0:Ljava/lang/String;

.field public static final p0:Ljava/lang/String;


# instance fields
.field public final A:I

.field public final B:LG/T;

.field public final C:J

.field public final D:J

.field public final E:J

.field public final F:LG/y0;

.field public final G:LG/w0;

.field public final a:LG/Z;

.field public final b:I

.field public final c:LM0/l2;

.field public final d:LG/f0;

.field public final e:LG/f0;

.field public final f:I

.field public final g:LG/a0;

.field public final h:I

.field public final i:Z

.field public final j:LG/q0;

.field public final k:I

.field public final l:LG/C0;

.field public final m:LG/T;

.field public final n:F

.field public final o:F

.field public final p:I

.field public final q:LG/e;

.field public final r:LI/c;

.field public final s:LG/p;

.field public final t:I

.field public final u:Z

.field public final v:Z

.field public final w:I

.field public final x:Z

.field public final y:Z

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v0, LM0/b2;

    sget-object v3, LM0/l2;->l:LM0/l2;

    sget-object v4, LM0/l2;->k:LG/f0;

    sget-object v7, LG/a0;->d:LG/a0;

    sget-object v10, LG/C0;->d:LG/C0;

    sget-object v11, LG/q0;->a:LG/m0;

    sget-object v13, LG/T;->M:LG/T;

    sget-object v16, LG/e;->i:LG/e;

    sget-object v18, LI/c;->d:LI/c;

    sget-object v19, LG/p;->e:LG/p;

    sget-object v35, LG/y0;->b:LG/y0;

    sget-object v36, LG/w0;->J:LG/w0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v29, 0x1388

    const-wide/16 v31, 0x3a98

    const-wide/16 v33, 0xbb8

    move-object v5, v4

    move-object/from16 v28, v13

    invoke-direct/range {v0 .. v36}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    sput-object v0, LM0/b2;->H:LM0/b2;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->I:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->J:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->K:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->L:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->M:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->N:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->O:Ljava/lang/String;

    const/16 v0, 0x21

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->P:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->Q:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->R:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->S:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->T:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->U:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->V:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->W:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->X:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->Y:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->Z:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->a0:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->b0:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->c0:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->d0:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->e0:Ljava/lang/String;

    const/16 v0, 0x17

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->f0:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->g0:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->h0:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->i0:Ljava/lang/String;

    const/16 v0, 0x1b

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->j0:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->k0:Ljava/lang/String;

    const/16 v0, 0x1d

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->l0:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->m0:Ljava/lang/String;

    const/16 v0, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->n0:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->o0:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/b2;->p0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/b2;->a:LG/Z;

    iput p2, p0, LM0/b2;->b:I

    iput-object p3, p0, LM0/b2;->c:LM0/l2;

    iput-object p4, p0, LM0/b2;->d:LG/f0;

    iput-object p5, p0, LM0/b2;->e:LG/f0;

    iput p6, p0, LM0/b2;->f:I

    iput-object p7, p0, LM0/b2;->g:LG/a0;

    iput p8, p0, LM0/b2;->h:I

    iput-boolean p9, p0, LM0/b2;->i:Z

    iput-object p10, p0, LM0/b2;->l:LG/C0;

    iput-object p11, p0, LM0/b2;->j:LG/q0;

    iput p12, p0, LM0/b2;->k:I

    iput-object p13, p0, LM0/b2;->m:LG/T;

    iput p14, p0, LM0/b2;->n:F

    iput p15, p0, LM0/b2;->o:F

    move/from16 p1, p17

    iput p1, p0, LM0/b2;->p:I

    move-object/from16 p1, p16

    iput-object p1, p0, LM0/b2;->q:LG/e;

    move-object/from16 p1, p18

    iput-object p1, p0, LM0/b2;->r:LI/c;

    move-object/from16 p1, p19

    iput-object p1, p0, LM0/b2;->s:LG/p;

    move/from16 p1, p20

    iput p1, p0, LM0/b2;->t:I

    move/from16 p1, p21

    iput-boolean p1, p0, LM0/b2;->u:Z

    move/from16 p1, p22

    iput-boolean p1, p0, LM0/b2;->v:Z

    move/from16 p1, p23

    iput p1, p0, LM0/b2;->w:I

    move/from16 p1, p24

    iput p1, p0, LM0/b2;->z:I

    move/from16 p1, p25

    iput p1, p0, LM0/b2;->A:I

    move/from16 p1, p26

    iput-boolean p1, p0, LM0/b2;->x:Z

    move/from16 p1, p27

    iput-boolean p1, p0, LM0/b2;->y:Z

    move-object/from16 p1, p28

    iput-object p1, p0, LM0/b2;->B:LG/T;

    move-wide/from16 p1, p29

    iput-wide p1, p0, LM0/b2;->C:J

    move-wide/from16 p1, p31

    iput-wide p1, p0, LM0/b2;->D:J

    move-wide/from16 p1, p33

    iput-wide p1, p0, LM0/b2;->E:J

    move-object/from16 p1, p35

    iput-object p1, p0, LM0/b2;->F:LG/y0;

    move-object/from16 p1, p36

    iput-object p1, p0, LM0/b2;->G:LG/w0;

    return-void
.end method

.method public static r(ILandroid/os/Bundle;)LM0/b2;
    .locals 45

    move/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, LM0/b2;->o0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    instance-of v3, v2, LM0/a2;

    if-eqz v3, :cond_0

    check-cast v2, LM0/a2;

    iget-object v0, v2, LM0/a2;->a:LM0/b2;

    return-object v0

    :cond_0
    sget-object v2, LM0/b2;->a0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move-object v7, v3

    goto/16 :goto_4

    :cond_1
    new-instance v5, LG/Z;

    sget-object v6, LG/Z;->j:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, LG/Z;->k:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, LG/Z;->l:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    :try_start_0
    const-class v9, LG/Z;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v7, v4, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object v7, v3

    goto :goto_1

    :catchall_0
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    sget-object v3, LG/Z;->h:Ljava/lang/String;

    const/16 v8, 0x3e8

    invoke-virtual {v2, v3, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v3, LG/Z;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    :goto_2
    move-object v9, v3

    goto :goto_3

    :cond_4
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_2

    :goto_3
    sget-object v3, LG/Z;->i:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, LG/Z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    move-object v7, v5

    :goto_4
    sget-object v2, LM0/b2;->c0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    sget-object v2, LM0/b2;->b0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, LM0/l2;->l:LM0/l2;

    :goto_5
    move-object v9, v2

    goto :goto_6

    :cond_5
    invoke-static {v0, v2}, LM0/l2;->b(ILandroid/os/Bundle;)LM0/l2;

    move-result-object v2

    goto :goto_5

    :goto_6
    sget-object v2, LM0/b2;->d0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, LM0/l2;->k:LG/f0;

    :goto_7
    move-object v10, v2

    goto :goto_8

    :cond_6
    invoke-static {v0, v2}, LG/f0;->c(ILandroid/os/Bundle;)LG/f0;

    move-result-object v2

    goto :goto_7

    :goto_8
    sget-object v2, LM0/b2;->e0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_7

    sget-object v2, LM0/l2;->k:LG/f0;

    :goto_9
    move-object v11, v2

    goto :goto_a

    :cond_7
    invoke-static {v0, v2}, LG/f0;->c(ILandroid/os/Bundle;)LG/f0;

    move-result-object v2

    goto :goto_9

    :goto_a
    sget-object v2, LM0/b2;->f0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    sget-object v2, LM0/b2;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_8

    sget-object v2, LG/a0;->d:LG/a0;

    move-object v13, v2

    goto :goto_b

    :cond_8
    sget-object v6, LG/a0;->e:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    sget-object v13, LG/a0;->f:Ljava/lang/String;

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    new-instance v13, LG/a0;

    invoke-direct {v13, v6, v2}, LG/a0;-><init>(FF)V

    :goto_b
    sget-object v2, LM0/b2;->J:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    sget-object v2, LM0/b2;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    sget-object v2, LM0/b2;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v2, LG/q0;->a:LG/m0;

    goto :goto_f

    :cond_9
    new-instance v6, LG/l0;

    invoke-direct {v6, v0, v3}, LG/l0;-><init>(II)V

    sget-object v5, LG/q0;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_a

    sget-object v5, Lu1/P;->f:Lu1/N;

    sget-object v5, Lu1/C0;->i:Lu1/C0;

    goto :goto_c

    :cond_a
    invoke-static {v5}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object v5

    invoke-static {v5, v6}, LJ/e;->d(Ljava/util/List;Lt1/j;)Lu1/C0;

    move-result-object v5

    :goto_c
    new-instance v6, LG/l0;

    invoke-direct {v6, v0, v4}, LG/l0;-><init>(II)V

    sget-object v4, LG/q0;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_b

    sget-object v4, Lu1/P;->f:Lu1/N;

    sget-object v4, Lu1/C0;->i:Lu1/C0;

    goto :goto_d

    :cond_b
    invoke-static {v4}, LG/g;->a(Landroid/os/IBinder;)Lu1/P;

    move-result-object v4

    invoke-static {v4, v6}, LJ/e;->d(Ljava/util/List;Lt1/j;)Lu1/C0;

    move-result-object v4

    :goto_d
    sget-object v6, LG/q0;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    new-instance v6, LG/o0;

    if-nez v2, :cond_d

    iget v2, v5, Lu1/C0;->h:I

    new-array v3, v2, [I

    move-object/from16 v19, v3

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_c

    aput v3, v19, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_c
    move-object/from16 v2, v19

    :cond_d
    invoke-direct {v6, v5, v4, v2}, LG/o0;-><init>(Lu1/C0;Lu1/C0;[I)V

    move-object v2, v6

    :goto_f
    sget-object v3, LM0/b2;->n0:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, LM0/b2;->M:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_e

    sget-object v5, LG/C0;->d:LG/C0;

    move-object/from16 v19, v2

    move/from16 v20, v3

    goto :goto_10

    :cond_e
    sget-object v6, LG/C0;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v19, v2

    sget-object v2, LG/C0;->f:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, LG/C0;->g:Ljava/lang/String;

    move/from16 v20, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    new-instance v5, LG/C0;

    invoke-direct {v5, v4, v6, v2}, LG/C0;-><init>(FII)V

    :goto_10
    sget-object v2, LM0/b2;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_f

    sget-object v2, LG/T;->M:LG/T;

    goto :goto_11

    :cond_f
    invoke-static {v0, v2}, LG/T;->b(ILandroid/os/Bundle;)LG/T;

    move-result-object v2

    :goto_11
    sget-object v3, LM0/b2;->O:Ljava/lang/String;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    sget-object v6, LM0/b2;->P:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v21

    sget-object v4, LM0/b2;->p0:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    sget-object v4, LM0/b2;->Q:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_10

    sget-object v4, LG/e;->i:LG/e;

    :goto_12
    move-object/from16 v22, v4

    goto :goto_13

    :cond_10
    invoke-static {v4}, LG/e;->a(Landroid/os/Bundle;)LG/e;

    move-result-object v4

    goto :goto_12

    :goto_13
    sget-object v4, LM0/b2;->g0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_11

    sget-object v4, LI/c;->d:LI/c;

    move-object/from16 v16, v2

    move/from16 v24, v3

    move-object/from16 v25, v5

    goto :goto_16

    :cond_11
    sget-object v6, LI/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_12

    sget-object v6, Lu1/C0;->i:Lu1/C0;

    move-object/from16 v16, v2

    move/from16 v24, v3

    move-object/from16 v25, v5

    goto :goto_15

    :cond_12
    move-object/from16 v16, v2

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v2

    move/from16 v24, v3

    move-object/from16 v25, v5

    const/4 v3, 0x0

    :goto_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_13

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, LI/b;->b(Landroid/os/Bundle;)LI/b;

    move-result-object v5

    invoke-virtual {v2, v5}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_13
    invoke-virtual {v2}, Lu1/M;->f()Lu1/C0;

    move-result-object v6

    :goto_15
    sget-object v2, LI/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v4, LI/c;

    invoke-direct {v4, v6, v2, v3}, LI/c;-><init>(Ljava/util/List;J)V

    :goto_16
    sget-object v2, LM0/b2;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_14

    sget-object v2, LG/p;->e:LG/p;

    move-object/from16 v26, v4

    goto :goto_19

    :cond_14
    sget-object v3, LG/p;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, LG/p;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v26, v4

    sget-object v4, LG/p;->h:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v6, LG/p;->i:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lh/i;

    invoke-direct {v6, v3}, Lh/i;-><init>(I)V

    iput v5, v6, Lh/i;->c:I

    iput v4, v6, Lh/i;->d:I

    if-nez v3, :cond_16

    if-nez v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v4, 0x0

    goto :goto_18

    :cond_16
    :goto_17
    const/4 v4, 0x1

    :goto_18
    invoke-static {v4}, LF1/i;->g(Z)V

    iput-object v2, v6, Lh/i;->e:Ljava/io/Serializable;

    invoke-virtual {v6}, Lh/i;->a()LG/p;

    move-result-object v2

    :goto_19
    sget-object v3, LM0/b2;->S:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, LM0/b2;->T:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    sget-object v4, LM0/b2;->U:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    sget-object v4, LM0/b2;->V:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    sget-object v4, LM0/b2;->W:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    sget-object v4, LM0/b2;->X:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    sget-object v4, LM0/b2;->Y:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    sget-object v4, LM0/b2;->Z:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    sget-object v4, LM0/b2;->h0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_17

    sget-object v4, LG/T;->M:LG/T;

    :goto_1a
    move-object/from16 v34, v4

    goto :goto_1b

    :cond_17
    invoke-static {v0, v4}, LG/T;->b(ILandroid/os/Bundle;)LG/T;

    move-result-object v4

    goto :goto_1a

    :goto_1b
    const/4 v6, 0x4

    if-ge v0, v6, :cond_18

    const-wide/16 v4, 0x0

    :goto_1c
    move-object/from16 v17, v2

    goto :goto_1d

    :cond_18
    const-wide/16 v17, 0x1388

    move-wide/from16 v4, v17

    goto :goto_1c

    :goto_1d
    sget-object v2, LM0/b2;->i0:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    if-ge v0, v6, :cond_19

    move-object/from16 v37, v7

    const-wide/16 v6, 0x0

    goto :goto_1e

    :cond_19
    const-wide/16 v37, 0x3a98

    move-wide/from16 v43, v37

    move-object/from16 v37, v7

    move-wide/from16 v6, v43

    :goto_1e
    sget-object v2, LM0/b2;->j0:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1a

    move/from16 p0, v3

    const-wide/16 v2, 0x0

    goto :goto_1f

    :cond_1a
    const-wide/16 v35, 0xbb8

    move/from16 p0, v3

    move-wide/from16 v2, v35

    :goto_1f
    sget-object v0, LM0/b2;->k0:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v39

    sget-object v0, LM0/b2;->m0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1b

    sget-object v0, LG/y0;->b:LG/y0;

    move-object/from16 v41, v0

    goto :goto_21

    :cond_1b
    sget-object v2, LG/y0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1c

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    goto :goto_20

    :cond_1c
    new-instance v2, LG/v;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, LG/v;-><init>(I)V

    invoke-static {v0, v2}, LJ/e;->d(Ljava/util/List;Lt1/j;)Lu1/C0;

    move-result-object v0

    :goto_20
    new-instance v2, LG/y0;

    invoke-direct {v2, v0}, LG/y0;-><init>(Lu1/C0;)V

    move-object/from16 v41, v2

    :goto_21
    sget-object v0, LM0/b2;->l0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1d

    sget-object v0, LG/w0;->J:LG/w0;

    :goto_22
    move-wide/from16 v43, v6

    move-object/from16 v7, v37

    move-wide/from16 v37, v43

    move-object/from16 v42, v0

    goto :goto_23

    :cond_1d
    invoke-static {v0}, LG/w0;->b(Landroid/os/Bundle;)LG/w0;

    move-result-object v0

    goto :goto_22

    :goto_23
    new-instance v6, LM0/b2;

    move-object/from16 v18, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v25

    move-object/from16 v25, v17

    move-object/from16 v17, v18

    move-wide/from16 v35, v4

    move/from16 v18, v20

    move/from16 v20, v24

    move-object/from16 v24, v26

    move/from16 v26, p0

    invoke-direct/range {v6 .. v42}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v6
.end method


# virtual methods
.method public final a(LG/e;)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v17, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v18, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v2

    move-object/from16 v2, v29

    move-object/from16 v29, v30

    move-wide/from16 v30, v31

    move-wide/from16 v32, v33

    move-wide/from16 v34, v35

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, p1

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final b(LG/y0;)LM0/b2;
    .locals 40

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v17, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v18, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v26, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v31, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v36, v1

    iget-object v1, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v2, v30

    move-wide/from16 v38, v36

    move-object/from16 v36, p1

    move-object/from16 v37, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move-object/from16 v29, v31

    move-wide/from16 v30, v32

    move-wide/from16 v32, v34

    move-wide/from16 v34, v38

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final c(IZ)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v17, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v18, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v29, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v34, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v2, v22

    move/from16 v21, p1

    move/from16 v22, p2

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final d(IIZ)LM0/b2;
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, v0, LM0/b2;->A:I

    if-ne v4, v1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    move/from16 v30, v3

    goto :goto_0

    :cond_0
    move/from16 v30, v2

    :goto_0
    iget-object v15, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v15}, LG/q0;->p()Z

    move-result v1

    iget-object v7, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v7, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v15}, LG/q0;->o()I

    move-result v5

    if-ge v1, v5, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, LF1/i;->o(Z)V

    move/from16 v29, v4

    new-instance v4, LM0/b2;

    iget-object v5, v0, LM0/b2;->a:LG/Z;

    iget v6, v0, LM0/b2;->b:I

    iget-object v8, v0, LM0/b2;->d:LG/f0;

    iget-object v9, v0, LM0/b2;->e:LG/f0;

    iget v10, v0, LM0/b2;->f:I

    iget-object v11, v0, LM0/b2;->g:LG/a0;

    iget v12, v0, LM0/b2;->h:I

    iget-boolean v13, v0, LM0/b2;->i:Z

    iget-object v14, v0, LM0/b2;->l:LG/C0;

    iget v1, v0, LM0/b2;->k:I

    iget-object v2, v0, LM0/b2;->m:LG/T;

    iget v3, v0, LM0/b2;->n:F

    move/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v21, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v22, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v23, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v24, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v25, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v31, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v32, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v35, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v37, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move/from16 v27, p1

    move/from16 v28, p2

    move/from16 v26, p3

    move-object/from16 v39, v1

    move-object/from16 v40, v2

    move/from16 v18, v3

    invoke-direct/range {v4 .. v40}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v4
.end method

.method public final e(LG/a0;)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    iget v8, v0, LM0/b2;->o:F

    move-object/from16 v16, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v17, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v18, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v2

    move-object/from16 v2, v29

    move-object/from16 v29, v30

    move-wide/from16 v30, v31

    move-wide/from16 v32, v33

    move-wide/from16 v34, v35

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v8

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final f(ILG/Z;)LM0/b2;
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, v0, LM0/b2;->v:Z

    iget v5, v0, LM0/b2;->z:I

    move/from16 v6, p1

    if-ne v6, v1, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    move/from16 v30, v3

    goto :goto_0

    :cond_0
    move/from16 v30, v2

    :goto_0
    iget-object v15, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v15}, LG/q0;->p()Z

    move-result v1

    iget-object v7, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v7, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v15}, LG/q0;->o()I

    move-result v8

    if-ge v1, v8, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, LF1/i;->o(Z)V

    move/from16 v26, v4

    new-instance v4, LM0/b2;

    iget v6, v0, LM0/b2;->b:I

    iget-object v8, v0, LM0/b2;->d:LG/f0;

    iget-object v9, v0, LM0/b2;->e:LG/f0;

    iget v10, v0, LM0/b2;->f:I

    iget-object v11, v0, LM0/b2;->g:LG/a0;

    iget v12, v0, LM0/b2;->h:I

    iget-boolean v13, v0, LM0/b2;->i:Z

    iget-object v14, v0, LM0/b2;->l:LG/C0;

    iget v1, v0, LM0/b2;->k:I

    iget-object v2, v0, LM0/b2;->m:LG/T;

    iget v3, v0, LM0/b2;->n:F

    move/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v21, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v22, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v23, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v24, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v31, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v32, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v35, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v37, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move/from16 v29, p1

    move-object/from16 v39, v1

    move-object/from16 v40, v2

    move/from16 v18, v3

    move/from16 v28, v5

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v40}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v4
.end method

.method public final g(LG/T;)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget v15, v0, LM0/b2;->n:F

    iget v14, v0, LM0/b2;->o:F

    move-object/from16 v16, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v17, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v18, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v2

    move-object/from16 v2, v29

    move-object/from16 v29, v30

    move-wide/from16 v30, v31

    move-wide/from16 v32, v33

    move-wide/from16 v34, v35

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v14

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final h(ILG/f0;LG/f0;)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    iget v5, v0, LM0/b2;->o:F

    iget-object v6, v0, LM0/b2;->q:LG/e;

    iget v7, v0, LM0/b2;->p:I

    move-object/from16 v16, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v29, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v34, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move/from16 v18, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v7, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final i(I)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    iget v9, v0, LM0/b2;->o:F

    move-object/from16 v16, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v17, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v18, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v2

    move-object/from16 v2, v29

    move-object/from16 v29, v30

    move-wide/from16 v30, v31

    move-wide/from16 v32, v33

    move-wide/from16 v34, v35

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v9

    move/from16 v9, p1

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final j(LM0/l2;)LM0/b2;
    .locals 40

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    move-object/from16 v4, p1

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v17, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v18, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v26, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v31, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v36, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-wide/from16 v38, v36

    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move-object/from16 v2, v30

    move-object/from16 v29, v31

    move-wide/from16 v30, v32

    move-wide/from16 v32, v34

    move-wide/from16 v34, v38

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final k(Z)LM0/b2;
    .locals 38

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    iget v10, v0, LM0/b2;->o:F

    move-object/from16 v16, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v17, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v18, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v2

    move-object/from16 v2, v29

    move-object/from16 v29, v30

    move-wide/from16 v30, v31

    move-wide/from16 v32, v33

    move-wide/from16 v34, v35

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v10

    move/from16 v10, p1

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final l(LG/q0;)LM0/b2;
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v1

    iget-object v5, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v5, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual/range {p1 .. p1}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v2, LM0/b2;

    iget-object v3, v0, LM0/b2;->a:LG/Z;

    iget v4, v0, LM0/b2;->b:I

    iget-object v6, v0, LM0/b2;->d:LG/f0;

    iget-object v7, v0, LM0/b2;->e:LG/f0;

    iget v8, v0, LM0/b2;->f:I

    iget-object v9, v0, LM0/b2;->g:LG/a0;

    iget v10, v0, LM0/b2;->h:I

    iget-boolean v11, v0, LM0/b2;->i:Z

    iget-object v12, v0, LM0/b2;->l:LG/C0;

    iget v14, v0, LM0/b2;->k:I

    iget-object v15, v0, LM0/b2;->m:LG/T;

    iget v1, v0, LM0/b2;->n:F

    iget v13, v0, LM0/b2;->o:F

    move/from16 v16, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v18, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v26, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v1

    move-object/from16 v38, v2

    move-object/from16 v2, v17

    move/from16 v17, v13

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v38}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v17, v2

    return-object v17
.end method

.method public final m(LM0/f2;I)LM0/b2;
    .locals 40

    move-object/from16 v0, p0

    new-instance v1, LM0/l2;

    new-instance v2, LG/f0;

    iget-object v14, v0, LM0/b2;->c:LM0/l2;

    iget-object v3, v14, LM0/l2;->a:LG/f0;

    iget-object v4, v3, LG/f0;->a:Ljava/lang/Object;

    iget-object v5, v3, LG/f0;->c:LG/P;

    iget-object v6, v3, LG/f0;->d:Ljava/lang/Object;

    iget v7, v3, LG/f0;->e:I

    iget-wide v8, v3, LG/f0;->f:J

    iget-wide v10, v3, LG/f0;->g:J

    iget v12, v3, LG/f0;->h:I

    iget v13, v3, LG/f0;->i:I

    move-object v3, v4

    move/from16 v4, p2

    invoke-direct/range {v2 .. v13}, LG/f0;-><init>(Ljava/lang/Object;ILG/P;Ljava/lang/Object;IJJII)V

    iget-boolean v3, v14, LM0/l2;->b:Z

    iget-wide v4, v14, LM0/l2;->c:J

    iget-wide v6, v14, LM0/l2;->d:J

    iget-wide v8, v14, LM0/l2;->e:J

    iget v10, v14, LM0/l2;->f:I

    iget-wide v11, v14, LM0/l2;->g:J

    move-object v13, v1

    move-object/from16 p2, v2

    iget-wide v1, v14, LM0/l2;->h:J

    move-wide v15, v1

    iget-wide v1, v14, LM0/l2;->i:J

    move-wide/from16 v17, v1

    iget-wide v1, v14, LM0/l2;->j:J

    move-wide/from16 v38, v1

    move-object v1, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v38

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v18}, LM0/l2;-><init>(LG/f0;ZJJJIJJJJ)V

    move-object v13, v1

    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v13, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual/range {p1 .. p1}, LM0/f2;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    move-object v4, v13

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    iget v12, v0, LM0/b2;->o:F

    iget-object v13, v0, LM0/b2;->q:LG/e;

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v18, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v19, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v20, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v21, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v23, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v26, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v28, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v29, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v30, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v34, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v16, v12

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final n(LG/q0;LM0/l2;I)LM0/b2;
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, LG/q0;->p()Z

    move-result v1

    move-object/from16 v5, p2

    if-nez v1, :cond_1

    iget-object v1, v5, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual/range {p1 .. p1}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v2, LM0/b2;

    iget-object v3, v0, LM0/b2;->a:LG/Z;

    iget v4, v0, LM0/b2;->b:I

    iget-object v6, v0, LM0/b2;->d:LG/f0;

    iget-object v7, v0, LM0/b2;->e:LG/f0;

    iget v8, v0, LM0/b2;->f:I

    iget-object v9, v0, LM0/b2;->g:LG/a0;

    iget v10, v0, LM0/b2;->h:I

    iget-boolean v11, v0, LM0/b2;->i:Z

    iget-object v12, v0, LM0/b2;->l:LG/C0;

    iget-object v15, v0, LM0/b2;->m:LG/T;

    iget v1, v0, LM0/b2;->n:F

    iget v13, v0, LM0/b2;->o:F

    iget-object v14, v0, LM0/b2;->q:LG/e;

    move/from16 v16, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v26, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v1

    move-object/from16 v38, v2

    move-object/from16 v18, v14

    move-object/from16 v2, v17

    move/from16 v14, p3

    move/from16 v17, v13

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v38}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v17, v2

    return-object v17
.end method

.method public final o(LG/w0;)LM0/b2;
    .locals 40

    move-object/from16 v0, p0

    iget-object v12, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v12}, LG/q0;->p()Z

    move-result v1

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_1

    iget-object v1, v4, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v12}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v1, LM0/b2;

    iget-object v2, v0, LM0/b2;->a:LG/Z;

    iget v3, v0, LM0/b2;->b:I

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    iget-object v6, v0, LM0/b2;->e:LG/f0;

    iget v7, v0, LM0/b2;->f:I

    iget-object v8, v0, LM0/b2;->g:LG/a0;

    iget v9, v0, LM0/b2;->h:I

    iget-boolean v10, v0, LM0/b2;->i:Z

    iget-object v11, v0, LM0/b2;->l:LG/C0;

    iget v13, v0, LM0/b2;->k:I

    iget-object v14, v0, LM0/b2;->m:LG/T;

    iget v15, v0, LM0/b2;->n:F

    move-object/from16 v16, v1

    iget v1, v0, LM0/b2;->o:F

    move/from16 v17, v1

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v18, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v26, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v31, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v32, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v36, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    move-object/from16 v2, v30

    move-wide/from16 v38, v36

    move-object/from16 v37, p1

    move-object/from16 v36, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move-object/from16 v29, v31

    move-wide/from16 v30, v32

    move-wide/from16 v32, v34

    move-wide/from16 v34, v38

    invoke-direct/range {v1 .. v37}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final p(F)LM0/b2;
    .locals 39

    move-object/from16 v0, p0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    move/from16 v17, p1

    goto :goto_0

    :cond_0
    iget v1, v0, LM0/b2;->n:F

    move/from16 v17, v1

    :goto_0
    iget-object v13, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v13}, LG/q0;->p()Z

    move-result v1

    iget-object v5, v0, LM0/b2;->c:LM0/l2;

    if-nez v1, :cond_2

    iget-object v1, v5, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual {v13}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, LF1/i;->o(Z)V

    new-instance v2, LM0/b2;

    iget-object v3, v0, LM0/b2;->a:LG/Z;

    iget v4, v0, LM0/b2;->b:I

    iget-object v6, v0, LM0/b2;->d:LG/f0;

    iget-object v7, v0, LM0/b2;->e:LG/f0;

    iget v8, v0, LM0/b2;->f:I

    iget-object v9, v0, LM0/b2;->g:LG/a0;

    iget v10, v0, LM0/b2;->h:I

    iget-boolean v11, v0, LM0/b2;->i:Z

    iget-object v12, v0, LM0/b2;->l:LG/C0;

    iget v14, v0, LM0/b2;->k:I

    iget-object v15, v0, LM0/b2;->m:LG/T;

    iget-object v1, v0, LM0/b2;->q:LG/e;

    move-object/from16 v18, v1

    iget v1, v0, LM0/b2;->p:I

    move/from16 v19, v1

    iget-object v1, v0, LM0/b2;->r:LI/c;

    move-object/from16 v20, v1

    iget-object v1, v0, LM0/b2;->s:LG/p;

    move-object/from16 v21, v1

    iget v1, v0, LM0/b2;->t:I

    move/from16 v22, v1

    iget-boolean v1, v0, LM0/b2;->u:Z

    move/from16 v23, v1

    iget-boolean v1, v0, LM0/b2;->v:Z

    move/from16 v24, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v25, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v26, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v27, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v28, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v29, v1

    iget-object v1, v0, LM0/b2;->B:LG/T;

    move-object/from16 v30, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v31, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v33, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v35, v1

    iget-object v1, v0, LM0/b2;->F:LG/y0;

    iget-object v2, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v37, v1

    move-object/from16 v38, v2

    move-object/from16 v2, v16

    move/from16 v16, p1

    invoke-direct/range {v2 .. v38}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    move-object/from16 v16, v2

    return-object v16
.end method

.method public final q(LG/c0;ZZ)LM0/b2;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, LG/c0;->a(I)Z

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, LG/c0;->a(I)Z

    move-result v3

    iget-object v4, v0, LM0/b2;->c:LM0/l2;

    invoke-virtual {v4, v2, v3}, LM0/l2;->a(ZZ)LM0/l2;

    move-result-object v8

    iget-object v5, v0, LM0/b2;->d:LG/f0;

    invoke-virtual {v5, v2, v3}, LG/f0;->b(ZZ)LG/f0;

    move-result-object v9

    iget-object v5, v0, LM0/b2;->e:LG/f0;

    invoke-virtual {v5, v2, v3}, LG/f0;->b(ZZ)LG/f0;

    move-result-object v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, LM0/b2;->j:LG/q0;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v7}, LG/q0;->p()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, LM0/l2;->a:LG/f0;

    iget v2, v2, LG/f0;->b:I

    invoke-virtual {v7}, LG/q0;->o()I

    move-result v3

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, LG/p0;

    invoke-direct {v3}, LG/p0;-><init>()V

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v2, v3, v11, v12}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v2

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v3

    iget v4, v2, LG/p0;->m:I

    :goto_0
    iget v11, v2, LG/p0;->n:I

    if-gt v4, v11, :cond_1

    new-instance v11, LG/n0;

    invoke-direct {v11}, LG/n0;-><init>()V

    invoke-virtual {v7, v4, v11, v5}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v11

    iput v6, v11, LG/n0;->c:I

    invoke-virtual {v3, v11}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v4, v2, LG/p0;->m:I

    sub-int/2addr v11, v4

    iput v11, v2, LG/p0;->n:I

    iput v6, v2, LG/p0;->m:I

    new-instance v7, LG/o0;

    invoke-static {v2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    invoke-virtual {v3}, Lu1/M;->f()Lu1/C0;

    move-result-object v3

    filled-new-array {v6}, [I

    move-result-object v4

    invoke-direct {v7, v2, v3, v4}, LG/o0;-><init>(Lu1/C0;Lu1/C0;[I)V

    :cond_2
    :goto_1
    move-object/from16 v16, v7

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    if-nez v3, :cond_2

    :cond_4
    sget-object v7, LG/q0;->a:LG/m0;

    goto :goto_1

    :goto_2
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, LG/c0;->a(I)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, LG/T;->M:LG/T;

    :goto_3
    move-object/from16 v18, v3

    goto :goto_4

    :cond_5
    iget-object v3, v0, LM0/b2;->m:LG/T;

    goto :goto_3

    :goto_4
    const/16 v3, 0x16

    invoke-virtual {v1, v3}, LG/c0;->a(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v19, v3

    move/from16 v20, v19

    goto :goto_5

    :cond_6
    iget v3, v0, LM0/b2;->n:F

    iget v4, v0, LM0/b2;->o:F

    move/from16 v19, v3

    move/from16 v20, v4

    :goto_5
    const/16 v3, 0x15

    invoke-virtual {v1, v3}, LG/c0;->a(I)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, LG/e;->i:LG/e;

    :goto_6
    move-object/from16 v21, v3

    goto :goto_7

    :cond_7
    iget-object v3, v0, LM0/b2;->q:LG/e;

    goto :goto_6

    :goto_7
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, LG/c0;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, LI/c;->d:LI/c;

    :goto_8
    move-object/from16 v23, v3

    goto :goto_9

    :cond_8
    iget-object v3, v0, LM0/b2;->r:LI/c;

    goto :goto_8

    :goto_9
    const/16 v3, 0x17

    invoke-virtual {v1, v3}, LG/c0;->a(I)Z

    move-result v3

    if-nez v3, :cond_9

    move/from16 v25, v6

    move/from16 v26, v25

    goto :goto_a

    :cond_9
    iget v3, v0, LM0/b2;->t:I

    iget-boolean v4, v0, LM0/b2;->u:Z

    move/from16 v25, v3

    move/from16 v26, v4

    :goto_a
    invoke-virtual {v1, v2}, LG/c0;->a(I)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, LG/T;->M:LG/T;

    :goto_b
    move-object/from16 v33, v2

    goto :goto_c

    :cond_a
    iget-object v2, v0, LM0/b2;->B:LG/T;

    goto :goto_b

    :goto_c
    if-nez p3, :cond_c

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, LG/c0;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    iget-object v1, v0, LM0/b2;->F:LG/y0;

    :goto_d
    move-object/from16 v40, v1

    goto :goto_f

    :cond_c
    :goto_e
    sget-object v1, LG/y0;->b:LG/y0;

    goto :goto_d

    :goto_f
    invoke-virtual/range {v16 .. v16}, LG/q0;->p()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v8, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    invoke-virtual/range {v16 .. v16}, LG/q0;->o()I

    move-result v2

    if-ge v1, v2, :cond_d

    goto :goto_10

    :cond_d
    move v5, v6

    :cond_e
    :goto_10
    invoke-static {v5}, LF1/i;->o(Z)V

    new-instance v5, LM0/b2;

    iget-object v6, v0, LM0/b2;->a:LG/Z;

    iget v7, v0, LM0/b2;->b:I

    iget v11, v0, LM0/b2;->f:I

    iget-object v12, v0, LM0/b2;->g:LG/a0;

    iget v13, v0, LM0/b2;->h:I

    iget-boolean v14, v0, LM0/b2;->i:Z

    iget-object v15, v0, LM0/b2;->l:LG/C0;

    iget v1, v0, LM0/b2;->k:I

    iget v2, v0, LM0/b2;->p:I

    iget-object v3, v0, LM0/b2;->s:LG/p;

    iget-boolean v4, v0, LM0/b2;->v:Z

    move/from16 v17, v1

    iget v1, v0, LM0/b2;->w:I

    move/from16 v28, v1

    iget v1, v0, LM0/b2;->z:I

    move/from16 v29, v1

    iget v1, v0, LM0/b2;->A:I

    move/from16 v30, v1

    iget-boolean v1, v0, LM0/b2;->x:Z

    move/from16 v31, v1

    iget-boolean v1, v0, LM0/b2;->y:Z

    move/from16 v32, v1

    move/from16 v22, v2

    iget-wide v1, v0, LM0/b2;->C:J

    move-wide/from16 v34, v1

    iget-wide v1, v0, LM0/b2;->D:J

    move-wide/from16 v36, v1

    iget-wide v1, v0, LM0/b2;->E:J

    move-wide/from16 v38, v1

    iget-object v1, v0, LM0/b2;->G:LG/w0;

    move-object/from16 v41, v1

    move-object/from16 v24, v3

    move/from16 v27, v4

    invoke-direct/range {v5 .. v41}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v5
.end method

.method public final s()LG/P;
    .locals 5

    iget-object v0, p0, LM0/b2;->j:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, LM0/b2;->c:LM0/l2;

    iget-object v1, v1, LM0/l2;->a:LG/f0;

    iget v1, v1, LG/f0;->b:I

    new-instance v2, LG/p0;

    invoke-direct {v2}, LG/p0;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v0

    iget-object v0, v0, LG/p0;->c:LG/P;

    return-object v0
.end method

.method public final t(I)Landroid/os/Bundle;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, LM0/b2;->a:LG/Z;

    if-eqz v3, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, LG/Z;->h:Ljava/lang/String;

    iget v6, v3, LG/Z;->e:I

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v5, LG/Z;->i:Ljava/lang/String;

    iget-wide v6, v3, LG/Z;->f:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v5, LG/Z;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, LG/Z;->m:Ljava/lang/String;

    iget-object v6, v3, LG/Z;->g:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v5, LG/Z;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, LG/Z;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v3, LM0/b2;->a0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget v3, v0, LM0/b2;->b:I

    if-eqz v3, :cond_2

    sget-object v4, LM0/b2;->c0:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, v0, LM0/b2;->c:LM0/l2;

    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    sget-object v5, LM0/l2;->l:LM0/l2;

    invoke-virtual {v3, v5}, LM0/l2;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    sget-object v5, LM0/b2;->b0:Ljava/lang/String;

    invoke-virtual {v3, v1}, LM0/l2;->c(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v3, v0, LM0/b2;->d:LG/f0;

    if-lt v1, v4, :cond_5

    sget-object v5, LM0/l2;->k:LG/f0;

    invoke-virtual {v5, v3}, LG/f0;->a(LG/f0;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    sget-object v5, LM0/b2;->d0:Ljava/lang/String;

    invoke-virtual {v3, v1}, LG/f0;->d(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v3, v0, LM0/b2;->e:LG/f0;

    if-lt v1, v4, :cond_7

    sget-object v4, LM0/l2;->k:LG/f0;

    invoke-virtual {v4, v3}, LG/f0;->a(LG/f0;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    sget-object v4, LM0/b2;->e0:Ljava/lang/String;

    invoke-virtual {v3, v1}, LG/f0;->d(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    iget v3, v0, LM0/b2;->f:I

    if-eqz v3, :cond_9

    sget-object v4, LM0/b2;->f0:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    sget-object v3, LG/a0;->d:LG/a0;

    iget-object v4, v0, LM0/b2;->g:LG/a0;

    invoke-virtual {v4, v3}, LG/a0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v5, LG/a0;->e:Ljava/lang/String;

    iget v6, v4, LG/a0;->a:F

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v5, LG/a0;->f:Ljava/lang/String;

    iget v4, v4, LG/a0;->b:F

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v4, LM0/b2;->I:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget v3, v0, LM0/b2;->h:I

    if-eqz v3, :cond_b

    sget-object v4, LM0/b2;->J:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget-boolean v3, v0, LM0/b2;->i:Z

    if-eqz v3, :cond_c

    sget-object v4, LM0/b2;->K:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    sget-object v3, LG/q0;->a:LG/m0;

    iget-object v4, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v4, v3}, LG/q0;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-nez v3, :cond_2f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, LG/q0;->o()I

    move-result v9

    new-instance v10, LG/p0;

    invoke-direct {v10}, LG/p0;-><init>()V

    move v11, v5

    :goto_0
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v11, v9, :cond_1b

    invoke-virtual {v4, v11, v10, v7, v8}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-wide/from16 v16, v7

    sget-object v7, LG/P;->g:LG/P;

    iget-object v8, v14, LG/p0;->c:LG/P;

    invoke-virtual {v7, v8}, LG/P;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, LG/p0;->r:Ljava/lang/String;

    iget-object v8, v14, LG/p0;->c:LG/P;

    invoke-virtual {v8, v1, v5}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_d
    iget-wide v7, v14, LG/p0;->d:J

    cmp-long v18, v7, v12

    if-eqz v18, :cond_e

    move-wide/from16 v18, v12

    sget-object v12, LG/p0;->s:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_e
    move-wide/from16 v18, v12

    :goto_1
    iget-wide v7, v14, LG/p0;->e:J

    cmp-long v12, v7, v18

    if-eqz v12, :cond_f

    sget-object v12, LG/p0;->t:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    iget-wide v7, v14, LG/p0;->f:J

    cmp-long v12, v7, v18

    if-eqz v12, :cond_10

    sget-object v12, LG/p0;->u:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    iget-boolean v7, v14, LG/p0;->g:Z

    if-eqz v7, :cond_11

    sget-object v8, LG/p0;->v:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11
    iget-boolean v7, v14, LG/p0;->h:Z

    if-eqz v7, :cond_12

    sget-object v8, LG/p0;->w:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_12
    iget-object v7, v14, LG/p0;->i:LG/J;

    if-eqz v7, :cond_13

    sget-object v8, LG/p0;->x:Ljava/lang/String;

    invoke-virtual {v7}, LG/J;->c()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v15, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_13
    iget-boolean v7, v14, LG/p0;->j:Z

    if-eqz v7, :cond_14

    sget-object v8, LG/p0;->y:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_14
    iget-wide v7, v14, LG/p0;->k:J

    cmp-long v12, v7, v16

    if-eqz v12, :cond_15

    sget-object v12, LG/p0;->z:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_15
    iget-wide v7, v14, LG/p0;->l:J

    cmp-long v12, v7, v18

    if-eqz v12, :cond_16

    sget-object v12, LG/p0;->A:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_16
    iget v7, v14, LG/p0;->m:I

    if-eqz v7, :cond_17

    sget-object v8, LG/p0;->B:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    iget v7, v14, LG/p0;->n:I

    if-eqz v7, :cond_18

    sget-object v8, LG/p0;->C:Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget-wide v7, v14, LG/p0;->o:J

    cmp-long v12, v7, v16

    if-eqz v12, :cond_19

    sget-object v12, LG/p0;->D:Ljava/lang/String;

    invoke-virtual {v15, v12, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_19
    iget-object v7, v14, LG/p0;->a:Ljava/lang/Object;

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_1a

    sget-object v8, LG/p0;->E:Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v16

    goto/16 :goto_0

    :cond_1b
    move-wide/from16 v16, v7

    move-wide/from16 v18, v12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, LG/q0;->h()I

    move-result v8

    new-instance v10, LG/n0;

    invoke-direct {v10}, LG/n0;-><init>()V

    move v11, v5

    :goto_2
    if-ge v11, v8, :cond_2c

    invoke-virtual {v4, v11, v10, v6}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iget v14, v12, LG/n0;->c:I

    if-eqz v14, :cond_1c

    sget-object v15, LG/n0;->h:Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1c
    iget-wide v14, v12, LG/n0;->d:J

    cmp-long v20, v14, v18

    if-eqz v20, :cond_1d

    move/from16 v20, v5

    sget-object v5, LG/n0;->i:Ljava/lang/String;

    invoke-virtual {v13, v5, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :cond_1d
    move/from16 v20, v5

    :goto_3
    iget-wide v14, v12, LG/n0;->e:J

    cmp-long v5, v14, v16

    if-eqz v5, :cond_1e

    sget-object v5, LG/n0;->j:Ljava/lang/String;

    invoke-virtual {v13, v5, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    iget-boolean v5, v12, LG/n0;->f:Z

    if-eqz v5, :cond_1f

    sget-object v14, LG/n0;->k:Ljava/lang/String;

    invoke-virtual {v13, v14, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1f
    iget-object v5, v12, LG/n0;->g:LG/c;

    sget-object v14, LG/c;->f:LG/c;

    invoke-virtual {v5, v14}, LG/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    sget-object v5, LG/n0;->l:Ljava/lang/String;

    iget-object v14, v12, LG/n0;->g:LG/c;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v21, v8

    iget-object v8, v14, LG/c;->e:[LG/a;

    move-object/from16 v22, v10

    array-length v10, v8

    move-object/from16 v23, v8

    move/from16 v8, v20

    :goto_4
    if-ge v8, v10, :cond_24

    move/from16 v24, v8

    aget-object v8, v23, v24

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v25, v10

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move/from16 v26, v11

    sget-object v11, LG/a;->m:Ljava/lang/String;

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    iget-wide v2, v8, LG/a;->a:J

    invoke-virtual {v10, v11, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v2, LG/a;->n:Ljava/lang/String;

    iget v3, v8, LG/a;->b:I

    invoke-virtual {v10, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, LG/a;->t:Ljava/lang/String;

    iget v3, v8, LG/a;->c:I

    invoke-virtual {v10, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, LG/a;->o:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, v8, LG/a;->d:[Landroid/net/Uri;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v2, LG/a;->u:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v8, LG/a;->e:[LG/P;

    array-length v0, v11

    move-object/from16 v29, v11

    move/from16 v11, v20

    :goto_5
    const/16 v30, 0x0

    if-ge v11, v0, :cond_21

    move/from16 v31, v0

    aget-object v0, v29, v11

    if-nez v0, :cond_20

    move/from16 v32, v11

    :goto_6
    move-object/from16 v0, v30

    goto :goto_7

    :cond_20
    move/from16 v32, v11

    const/4 v11, 0x1

    invoke-virtual {v0, v1, v11}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v30

    goto :goto_6

    :goto_7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v32, 0x1

    move/from16 v0, v31

    goto :goto_5

    :cond_21
    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v0, LG/a;->p:Ljava/lang/String;

    iget-object v2, v8, LG/a;->f:[I

    invoke-virtual {v10, v0, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v0, LG/a;->q:Ljava/lang/String;

    iget-object v2, v8, LG/a;->g:[J

    invoke-virtual {v10, v0, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    sget-object v0, LG/a;->r:Ljava/lang/String;

    iget-wide v2, v8, LG/a;->j:J

    invoke-virtual {v10, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, LG/a;->s:Ljava/lang/String;

    iget-boolean v2, v8, LG/a;->k:Z

    invoke-virtual {v10, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, LG/a;->v:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v8, LG/a;->h:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v0, LG/a;->x:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v8, LG/a;->i:[LG/b;

    array-length v11, v3

    move-object/from16 v29, v3

    move/from16 v3, v20

    :goto_8
    if-ge v3, v11, :cond_23

    move/from16 v31, v3

    aget-object v3, v29, v31

    if-nez v3, :cond_22

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v32, v11

    move-object/from16 v11, v30

    goto :goto_9

    :cond_22
    move/from16 v32, v11

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LG/b;->d:Ljava/lang/String;

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    iget-wide v4, v3, LG/b;->a:J

    invoke-virtual {v11, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, LG/b;->e:Ljava/lang/String;

    iget-wide v4, v3, LG/b;->b:J

    invoke-virtual {v11, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, LG/b;->f:Ljava/lang/String;

    iget-object v3, v3, LG/b;->c:Ljava/lang/String;

    invoke-virtual {v11, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v31, 0x1

    move/from16 v1, p1

    move/from16 v11, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    goto :goto_8

    :cond_23
    move-object/from16 v33, v4

    move-object/from16 v34, v5

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v0, LG/a;->w:Ljava/lang/String;

    iget-boolean v1, v8, LG/a;->l:Z

    invoke-virtual {v10, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    goto/16 :goto_4

    :cond_24
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v26, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, LG/c;->h:Ljava/lang/String;

    invoke-virtual {v15, v0, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_25
    iget-wide v0, v14, LG/c;->b:J

    cmp-long v2, v0, v16

    if-eqz v2, :cond_26

    sget-object v2, LG/c;->i:Ljava/lang/String;

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_26
    iget-wide v0, v14, LG/c;->c:J

    cmp-long v2, v0, v18

    if-eqz v2, :cond_27

    sget-object v2, LG/c;->j:Ljava/lang/String;

    invoke-virtual {v15, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_27
    iget v0, v14, LG/c;->d:I

    if-eqz v0, :cond_28

    sget-object v1, LG/c;->k:Ljava/lang/String;

    invoke-virtual {v15, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_28
    move-object/from16 v0, v34

    invoke-virtual {v13, v0, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    :cond_29
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v33, v4

    move/from16 v21, v8

    move-object/from16 v22, v10

    move/from16 v26, v11

    :goto_a
    iget-object v0, v12, LG/n0;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2a

    sget-object v1, LG/n0;->m:Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, v12, LG/n0;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2b

    sget-object v1, LG/n0;->n:Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v5, v20

    move/from16 v8, v21

    move-object/from16 v10, v22

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v33

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_2c
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v33, v4

    move/from16 v20, v5

    new-array v0, v9, [I

    move-object/from16 v1, v33

    const/4 v11, 0x1

    if-lez v9, :cond_2d

    invoke-virtual {v1, v11}, LG/q0;->a(Z)I

    move-result v2

    aput v2, v0, v20

    :cond_2d
    move v2, v11

    :goto_b
    if-ge v2, v9, :cond_2e

    add-int/lit8 v3, v2, -0x1

    aget v3, v0, v3

    move/from16 v4, v20

    invoke-virtual {v1, v3, v4, v11}, LG/q0;->e(IIZ)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x1

    const/16 v20, 0x0

    goto :goto_b

    :cond_2e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, LG/q0;->b:Ljava/lang/String;

    new-instance v3, LG/g;

    move-object/from16 v4, v28

    invoke-direct {v3, v4}, LG/g;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v2, LG/q0;->c:Ljava/lang/String;

    new-instance v3, LG/g;

    invoke-direct {v3, v7}, LG/g;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v2, LG/q0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v0, LM0/b2;->L:Ljava/lang/String;

    move-object/from16 v2, v27

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_c
    move-object/from16 v0, p0

    goto :goto_d

    :cond_2f
    move-wide/from16 v16, v7

    goto :goto_c

    :goto_d
    iget v1, v0, LM0/b2;->k:I

    if-eqz v1, :cond_30

    sget-object v3, LM0/b2;->n0:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_30
    sget-object v1, LG/C0;->d:LG/C0;

    iget-object v3, v0, LM0/b2;->l:LG/C0;

    invoke-virtual {v3, v1}, LG/C0;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_34

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v5, v3, LG/C0;->a:I

    if-eqz v5, :cond_31

    sget-object v6, LG/C0;->e:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_31
    iget v5, v3, LG/C0;->b:I

    if-eqz v5, :cond_32

    sget-object v6, LG/C0;->f:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_32
    iget v3, v3, LG/C0;->c:F

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_33

    sget-object v5, LG/C0;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_33
    sget-object v3, LM0/b2;->M:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_34
    sget-object v1, LG/T;->M:LG/T;

    iget-object v3, v0, LM0/b2;->m:LG/T;

    invoke-virtual {v3, v1}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, LM0/b2;->N:Ljava/lang/String;

    move/from16 v5, p1

    invoke-virtual {v3, v5}, LG/T;->c(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_e

    :cond_35
    move/from16 v5, p1

    :goto_e
    iget v1, v0, LM0/b2;->n:F

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_36

    sget-object v3, LM0/b2;->O:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_36
    iget v1, v0, LM0/b2;->o:F

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_37

    sget-object v3, LM0/b2;->P:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_37
    iget v1, v0, LM0/b2;->p:I

    if-eqz v1, :cond_38

    sget-object v3, LM0/b2;->p0:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_38
    sget-object v1, LG/e;->i:LG/e;

    iget-object v3, v0, LM0/b2;->q:LG/e;

    invoke-virtual {v3, v1}, LG/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    sget-object v1, LM0/b2;->Q:Ljava/lang/String;

    invoke-virtual {v3}, LG/e;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_39
    sget-object v1, LI/c;->d:LI/c;

    iget-object v3, v0, LM0/b2;->r:LI/c;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v4, LI/c;->e:Ljava/lang/String;

    iget-object v6, v3, LI/c;->a:Lu1/C0;

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v7

    const/4 v8, 0x0

    :goto_f
    iget v9, v6, Lu1/C0;->h:I

    if-ge v8, v9, :cond_3b

    invoke-virtual {v6, v8}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LI/b;

    iget-object v9, v9, LI/b;->d:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3a

    goto :goto_10

    :cond_3a
    invoke-virtual {v6, v8}, Lu1/C0;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LI/b;

    invoke-virtual {v7, v9}, Lu1/I;->c(Ljava/lang/Object;)V

    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_3b
    invoke-virtual {v7}, Lu1/M;->f()Lu1/C0;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    iget v8, v6, Lu1/C0;->h:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lu1/P;->m(I)Lu1/N;

    move-result-object v6

    :goto_11
    invoke-virtual {v6}, Lu1/a;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-virtual {v6}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LI/b;

    invoke-virtual {v8}, LI/b;->c()Landroid/os/Bundle;

    move-result-object v9

    iget-object v8, v8, LI/b;->d:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3c

    sget-object v10, LI/b;->w:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3c
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3d
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v4, LI/c;->f:Ljava/lang/String;

    iget-wide v6, v3, LI/c;->b:J

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v3, LM0/b2;->g0:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3e
    sget-object v1, LG/p;->e:LG/p;

    iget-object v3, v0, LM0/b2;->s:LG/p;

    invoke-virtual {v3, v1}, LG/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v4, v3, LG/p;->a:I

    if-eqz v4, :cond_3f

    sget-object v6, LG/p;->f:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3f
    iget v4, v3, LG/p;->b:I

    if-eqz v4, :cond_40

    sget-object v6, LG/p;->g:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_40
    iget v4, v3, LG/p;->c:I

    if-eqz v4, :cond_41

    sget-object v6, LG/p;->h:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_41
    iget-object v3, v3, LG/p;->d:Ljava/lang/String;

    if-eqz v3, :cond_42

    sget-object v4, LG/p;->i:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    sget-object v3, LM0/b2;->R:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_43
    iget v1, v0, LM0/b2;->t:I

    if-eqz v1, :cond_44

    sget-object v3, LM0/b2;->S:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_44
    iget-boolean v1, v0, LM0/b2;->u:Z

    if-eqz v1, :cond_45

    sget-object v3, LM0/b2;->T:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_45
    iget-boolean v1, v0, LM0/b2;->v:Z

    if-eqz v1, :cond_46

    sget-object v3, LM0/b2;->U:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_46
    iget v1, v0, LM0/b2;->w:I

    const/4 v11, 0x1

    if-eq v1, v11, :cond_47

    sget-object v3, LM0/b2;->V:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_47
    iget v1, v0, LM0/b2;->z:I

    if-eqz v1, :cond_48

    sget-object v3, LM0/b2;->W:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_48
    iget v1, v0, LM0/b2;->A:I

    const/4 v11, 0x1

    if-eq v1, v11, :cond_49

    sget-object v3, LM0/b2;->X:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_49
    iget-boolean v1, v0, LM0/b2;->x:Z

    if-eqz v1, :cond_4a

    sget-object v3, LM0/b2;->Y:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4a
    iget-boolean v1, v0, LM0/b2;->y:Z

    if-eqz v1, :cond_4b

    sget-object v3, LM0/b2;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4b
    sget-object v1, LG/T;->M:LG/T;

    iget-object v3, v0, LM0/b2;->B:LG/T;

    invoke-virtual {v3, v1}, LG/T;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    sget-object v1, LM0/b2;->h0:Ljava/lang/String;

    invoke-virtual {v3, v5}, LG/T;->c(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4c
    const/4 v1, 0x6

    if-ge v5, v1, :cond_4d

    move-wide/from16 v3, v16

    goto :goto_12

    :cond_4d
    const-wide/16 v3, 0x1388

    :goto_12
    iget-wide v6, v0, LM0/b2;->C:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_4e

    sget-object v3, LM0/b2;->i0:Ljava/lang/String;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_4e
    if-ge v5, v1, :cond_4f

    move-wide/from16 v3, v16

    goto :goto_13

    :cond_4f
    const-wide/16 v3, 0x3a98

    :goto_13
    iget-wide v6, v0, LM0/b2;->D:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_50

    sget-object v3, LM0/b2;->j0:Ljava/lang/String;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_50
    if-ge v5, v1, :cond_51

    move-wide/from16 v7, v16

    goto :goto_14

    :cond_51
    const-wide/16 v7, 0xbb8

    :goto_14
    iget-wide v3, v0, LM0/b2;->E:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_52

    sget-object v1, LM0/b2;->k0:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_52
    sget-object v1, LG/y0;->b:LG/y0;

    iget-object v3, v0, LM0/b2;->F:LG/y0;

    invoke-virtual {v3, v1}, LG/y0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v4, LG/y0;->c:Ljava/lang/String;

    iget-object v3, v3, LG/y0;->a:Lu1/P;

    new-instance v5, LG/v;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, LG/v;-><init>(I)V

    invoke-static {v3, v5}, LJ/e;->i(Ljava/util/Collection;Lt1/j;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v3, LM0/b2;->m0:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_53
    sget-object v1, LG/w0;->J:LG/w0;

    iget-object v3, v0, LM0/b2;->G:LG/w0;

    invoke-virtual {v3, v1}, LG/w0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    sget-object v1, LM0/b2;->l0:Ljava/lang/String;

    invoke-virtual {v3}, LG/w0;->c()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_54
    return-object v2
.end method
