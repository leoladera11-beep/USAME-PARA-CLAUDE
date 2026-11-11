.class public final LM0/c2;
.super LG/q0;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final e:LG/P;

.field public final f:Z

.field public final g:Z

.field public final h:LG/J;

.field public final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LM0/c2;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM0/d2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LM0/d2;->R0()LG/P;

    move-result-object v0

    iput-object v0, p0, LM0/c2;->e:LG/P;

    invoke-virtual {p1}, LM0/d2;->Q0()Z

    move-result v0

    iput-boolean v0, p0, LM0/c2;->f:Z

    invoke-virtual {p1}, LM0/d2;->T0()Z

    move-result v0

    iput-boolean v0, p0, LM0/c2;->g:Z

    invoke-virtual {p1}, LM0/d2;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LG/J;->f:LG/J;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, LM0/c2;->h:LG/J;

    invoke-virtual {p1}, LM0/d2;->J()J

    move-result-wide v0

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v0

    iput-wide v0, p0, LM0/c2;->i:J

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, LM0/c2;->j:Ljava/lang/Object;

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

    sget-object v8, LG/c;->f:LG/c;

    const/4 v9, 0x0

    sget-object v1, LM0/c2;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, LM0/c2;->i:J

    const-wide/16 v6, 0x0

    move-object v2, v1

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
    .locals 0

    sget-object p1, LM0/c2;->j:Ljava/lang/Object;

    return-object p1
.end method

.method public final m(ILG/p0;J)LG/p0;
    .locals 21

    move-object/from16 v0, p0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    sget-object v2, LM0/c2;->j:Ljava/lang/Object;

    iget-object v3, v0, LM0/c2;->e:LG/P;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v10, v0, LM0/c2;->f:Z

    iget-boolean v11, v0, LM0/c2;->g:Z

    iget-object v12, v0, LM0/c2;->h:LG/J;

    const-wide/16 v13, 0x0

    iget-wide v4, v0, LM0/c2;->i:J

    const/16 v17, 0x0

    move-object/from16 v1, p2

    move-wide v15, v4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v1 .. v20}, LG/p0;->b(Ljava/lang/Object;LG/P;JJJZZLG/J;JJIIJ)V

    const/4 v2, 0x0

    iput-boolean v2, v1, LG/p0;->j:Z

    return-object v1
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
