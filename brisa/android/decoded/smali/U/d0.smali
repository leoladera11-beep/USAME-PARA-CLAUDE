.class public final LU/d0;
.super LG/q0;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final e:J

.field public final f:J

.field public final g:Z

.field public final h:LG/P;

.field public final i:LG/J;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LU/d0;->j:Ljava/lang/Object;

    new-instance v0, LG/D;

    invoke-direct {v0}, LG/D;-><init>()V

    new-instance v1, LG/G;

    invoke-direct {v1}, LG/G;-><init>()V

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v9, Lu1/C0;->i:Lu1/C0;

    new-instance v12, LG/I;

    invoke-direct {v12}, LG/I;-><init>()V

    sget-object v2, LG/L;->d:LG/L;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, v1, LG/G;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, v1, LG/G;->a:Ljava/util/UUID;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, LF1/i;->o(Z)V

    if-eqz v3, :cond_3

    new-instance v2, LG/K;

    iget-object v4, v1, LG/G;->a:Ljava/util/UUID;

    if-eqz v4, :cond_2

    new-instance v4, LG/H;

    invoke-direct {v4, v1}, LG/H;-><init>(LG/G;)V

    :goto_2
    move-object v5, v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :goto_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v11}, LG/K;-><init>(Landroid/net/Uri;Ljava/lang/String;LG/H;LG/C;Ljava/util/List;Ljava/lang/String;Lu1/P;J)V

    :cond_3
    new-instance v1, LG/P;

    new-instance v1, LG/F;

    invoke-direct {v1, v0}, LG/E;-><init>(LG/D;)V

    new-instance v0, LG/J;

    invoke-direct {v0, v12}, LG/J;-><init>(LG/I;)V

    sget-object v0, LG/T;->M:LG/T;

    return-void
.end method

.method public constructor <init>(JZZLG/P;)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p4, p5, LG/P;->c:LG/J;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LU/d0;->e:J

    iput-wide p1, p0, LU/d0;->f:J

    iput-boolean p3, p0, LU/d0;->g:Z

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, LU/d0;->h:LG/P;

    iput-object p4, p0, LU/d0;->i:LG/J;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, LU/d0;->j:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final f(ILG/n0;Z)LG/n0;
    .locals 10

    const/4 v0, 0x1

    invoke-static {p1, v0}, LF1/i;->i(II)V

    if-eqz p3, :cond_0

    sget-object p1, LU/d0;->j:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v8, LG/c;->f:LG/c;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, LU/d0;->e:J

    const-wide/16 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    return-object v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LF1/i;->i(II)V

    sget-object p1, LU/d0;->j:Ljava/lang/Object;

    return-object p1
.end method

.method public final m(ILG/p0;J)LG/p0;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, LF1/i;->i(II)V

    sget-object v3, LG/p0;->p:Ljava/lang/Object;

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    iget-object v4, v0, LU/d0;->h:LG/P;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v11, v0, LU/d0;->g:Z

    const/4 v12, 0x0

    iget-object v13, v0, LU/d0;->i:LG/J;

    const-wide/16 v14, 0x0

    iget-wide v1, v0, LU/d0;->f:J

    const/16 v18, 0x0

    move-wide/from16 v16, v1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v21}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    return-object p2
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
