.class public abstract LM0/Y1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LN0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN0/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN0/k;-><init>(Landroid/os/Bundle;)V

    sput-object v0, LM0/Y1;->a:LN0/k;

    return-void
.end method

.method public static a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static d(Landroid/os/Parcel;Landroid/os/Parcelable;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static e(LM0/l2;LM0/l2;)Z
    .locals 2

    iget-object p0, p0, LM0/l2;->a:LG/f0;

    iget v0, p0, LG/f0;->b:I

    iget-object p1, p1, LM0/l2;->a:LG/f0;

    iget v1, p1, LG/f0;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LG/f0;->e:I

    iget v1, p1, LG/f0;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LG/f0;->h:I

    iget v1, p1, LG/f0;->h:I

    if-ne v0, v1, :cond_0

    iget p0, p0, LG/f0;->i:I

    iget p1, p1, LG/f0;->i:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(JJ)I
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/16 v1, 0x64

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1, p2, p3}, LJ/W;->J(JJ)I

    move-result p0

    invoke-static {p0, v3, v1}, LJ/W;->g(III)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public static g(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length p1, p0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x2

    return p0
.end method

.method public static h(Landroid/content/Context;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2

    invoke-static {p1}, LM0/Y1;->l(I)Z

    move-result v0

    invoke-static {v0}, LF1/i;->g(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, LM0/X0;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p3, Landroid/content/ComponentName;

    invoke-direct {p3, p0, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    new-instance p0, Landroid/view/KeyEvent;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    const-string p1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static i(LM0/o;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, LM0/o;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static j(LM0/b2;JJJ)J
    .locals 4

    iget-object v0, p0, LM0/b2;->c:LM0/l2;

    iget-object v1, p0, LM0/b2;->c:LM0/l2;

    sget-object v2, LM0/l2;->l:LM0/l2;

    invoke-virtual {v0, v2}, LM0/l2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, v1, LM0/l2;->c:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iget-boolean p4, p0, LM0/b2;->x:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p4, :cond_3

    if-nez p3, :cond_2

    cmp-long p0, p1, v2

    if-nez p0, :cond_4

    :cond_2
    iget-object p0, v1, LM0/l2;->a:LG/f0;

    iget-wide p0, p0, LG/f0;->f:J

    return-wide p0

    :cond_3
    if-nez p3, :cond_5

    cmp-long p3, p1, v2

    if-eqz p3, :cond_5

    :cond_4
    return-wide p1

    :cond_5
    cmp-long p1, p5, v2

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, v1, LM0/l2;->c:J

    sub-long p5, p1, p3

    :goto_2
    iget-object p1, v1, LM0/l2;->a:LG/f0;

    iget-wide p1, p1, LG/f0;->f:J

    long-to-float p3, p5

    iget-object p0, p0, LM0/b2;->g:LG/a0;

    iget p0, p0, LG/a0;->a:F

    mul-float/2addr p3, p0

    float-to-long p3, p3

    add-long/2addr p1, p3

    iget-wide p3, v1, LM0/l2;->d:J

    cmp-long p0, p3, v2

    if-eqz p0, :cond_7

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_7
    return-wide p1
.end method

.method public static k(LG/c0;LG/c0;)LG/c0;
    .locals 3

    if-eqz p0, :cond_3

    iget-object p0, p0, LG/c0;->a:LG/u;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, LG/b0;

    invoke-direct {v0}, LG/b0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LG/u;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, LG/u;->b(I)I

    move-result v2

    invoke-virtual {p1, v2}, LG/c0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, LG/u;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, LG/b0;->a(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, LG/b0;->c()LG/c0;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, LG/c0;->b:LG/c0;

    return-object p0
.end method

.method public static l(I)Z
    .locals 1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-eq p0, v0, :cond_1

    const/16 v0, 0x56

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static m(LM0/b2;LM0/b2;LM0/Z1;LG/c0;ZLM0/o2;)LM0/b2;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v2, LM0/Z1;->a:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, LG/c0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v4, p5

    iget-object v4, v4, LM0/o2;->a:LM0/n2;

    invoke-interface {v4}, LM0/n2;->h()I

    move-result v7

    iget-object v8, v0, LM0/b2;->j:LG/q0;

    invoke-virtual {v8}, LG/q0;->p()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v1, LM0/b2;->c:LM0/l2;

    iget-object v9, v9, LM0/l2;->a:LG/f0;

    iget v9, v9, LG/f0;->b:I

    invoke-virtual {v8}, LG/q0;->o()I

    move-result v10

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0xa

    if-ge v7, v10, :cond_1

    if-eqz v9, :cond_1

    const-string v4, "Inconsistent update from legacy session (interface version="

    const-string v9, "). Index "

    invoke-static {v4, v9, v7}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, LM0/b2;->c:LM0/l2;

    iget-object v7, v7, LM0/l2;->a:LG/f0;

    iget v7, v7, LG/f0;->b:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is out of bounds of timeline (size="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LG/q0;->o()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "). Discarding stale timeline to prevent crash."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "MediaUtils"

    invoke-static {v7, v4}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, LG/q0;->a:LG/m0;

    invoke-virtual {v1, v4}, LM0/b2;->l(LG/q0;)LM0/b2;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Invalid PlayerInfo update, old index: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, LM0/b2;->c:LM0/l2;

    iget-object v10, v10, LM0/l2;->a:LG/f0;

    iget v10, v10, LG/f0;->b:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (count="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LG/q0;->o()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "), new index = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, LM0/b2;->c:LM0/l2;

    iget-object v10, v10, LM0/l2;->a:LG/f0;

    iget v10, v10, LG/f0;->b:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", sent from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, LM0/n2;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", interface version="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, LM0/n2;->h()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v9, :cond_2

    invoke-virtual {v1, v8}, LM0/b2;->l(LG/q0;)LM0/b2;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v4, v1

    :goto_1
    iget-boolean v2, v2, LM0/Z1;->b:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x1e

    invoke-virtual {v3, v2}, LG/c0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, LM0/b2;->F:LG/y0;

    invoke-virtual {v4, v2}, LM0/b2;->b(LG/y0;)LM0/b2;

    move-result-object v4

    :cond_4
    if-eqz p4, :cond_7

    iget v1, v1, LM0/b2;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget v0, v0, LM0/b2;->o:F

    iget-object v8, v4, LM0/b2;->a:LG/Z;

    iget v9, v4, LM0/b2;->b:I

    iget-object v10, v4, LM0/b2;->c:LM0/l2;

    iget-object v11, v4, LM0/b2;->d:LG/f0;

    iget-object v12, v4, LM0/b2;->e:LG/f0;

    iget v13, v4, LM0/b2;->f:I

    iget-object v14, v4, LM0/b2;->g:LG/a0;

    iget v15, v4, LM0/b2;->h:I

    iget-boolean v1, v4, LM0/b2;->i:Z

    iget-object v2, v4, LM0/b2;->j:LG/q0;

    iget v3, v4, LM0/b2;->k:I

    iget-object v7, v4, LM0/b2;->l:LG/C0;

    iget-object v5, v4, LM0/b2;->m:LG/T;

    iget v6, v4, LM0/b2;->n:F

    move/from16 v22, v0

    iget v0, v4, LM0/b2;->p:I

    move/from16 v24, v0

    iget-object v0, v4, LM0/b2;->q:LG/e;

    move-object/from16 v23, v0

    iget-object v0, v4, LM0/b2;->r:LI/c;

    move-object/from16 v25, v0

    iget-object v0, v4, LM0/b2;->s:LG/p;

    move-object/from16 v26, v0

    iget v0, v4, LM0/b2;->t:I

    move/from16 v27, v0

    iget-boolean v0, v4, LM0/b2;->u:Z

    move/from16 v28, v0

    iget-boolean v0, v4, LM0/b2;->v:Z

    move/from16 v29, v0

    iget v0, v4, LM0/b2;->w:I

    move/from16 v30, v0

    iget-boolean v0, v4, LM0/b2;->x:Z

    move/from16 v33, v0

    iget-boolean v0, v4, LM0/b2;->y:Z

    move/from16 v34, v0

    iget v0, v4, LM0/b2;->z:I

    move/from16 v31, v0

    iget v0, v4, LM0/b2;->A:I

    move/from16 v32, v0

    iget-object v0, v4, LM0/b2;->B:LG/T;

    move-object/from16 v35, v0

    move/from16 v18, v1

    iget-wide v0, v4, LM0/b2;->C:J

    move-wide/from16 v36, v0

    iget-wide v0, v4, LM0/b2;->D:J

    move-wide/from16 v38, v0

    iget-wide v0, v4, LM0/b2;->E:J

    move-wide/from16 v40, v0

    iget-object v0, v4, LM0/b2;->F:LG/y0;

    iget-object v1, v4, LM0/b2;->G:LG/w0;

    invoke-virtual {v2}, LG/q0;->p()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v10, LM0/l2;->a:LG/f0;

    iget v4, v4, LG/f0;->b:I

    move-object/from16 v42, v0

    invoke-virtual {v2}, LG/q0;->o()I

    move-result v0

    if-ge v4, v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v42, v0

    :goto_2
    const/16 v16, 0x1

    :goto_3
    invoke-static/range {v16 .. v16}, LF1/i;->o(Z)V

    move-object/from16 v17, v7

    new-instance v7, LM0/b2;

    move-object/from16 v43, v1

    move/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v16, v18

    move-object/from16 v18, v2

    invoke-direct/range {v7 .. v43}, LM0/b2;-><init>(LG/Z;ILM0/l2;LG/f0;LG/f0;ILG/a0;IZLG/C0;LG/q0;ILG/T;FFLG/e;ILI/c;LG/p;IZZIIIZZLG/T;JJJLG/y0;LG/w0;)V

    return-object v7

    :cond_7
    return-object v4
.end method

.method public static n(LG/g0;LM0/O0;)V
    .locals 7

    iget v0, p1, LM0/O0;->b:I

    iget-wide v1, p1, LM0/O0;->c:J

    iget-object v3, p1, LM0/O0;->a:Lu1/P;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x14

    if-ne v0, v4, :cond_1

    invoke-interface {p0, v6}, LG/g0;->S0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, v3}, LG/g0;->L0(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/P;

    invoke-interface {p0, p1}, LG/g0;->N0(LG/P;)V

    return-void

    :cond_1
    invoke-interface {p0, v6}, LG/g0;->S0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p1, LM0/O0;->b:I

    invoke-interface {p0, v3, p1, v1, v2}, LG/g0;->i(Ljava/util/List;IJ)V

    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/P;

    invoke-interface {p0, p1, v1, v2}, LG/g0;->Z(LG/P;J)V

    :cond_3
    return-void
.end method
