.class public final LN/c0;
.super LU/o;
.source "SourceFile"


# instance fields
.field public final f:LG/p0;


# direct methods
.method public constructor <init>(LG/q0;)V
    .locals 0

    invoke-direct {p0, p1}, LU/o;-><init>(LG/q0;)V

    new-instance p1, LG/p0;

    invoke-direct {p1}, LG/p0;-><init>()V

    iput-object p1, p0, LN/c0;->f:LG/p0;

    return-void
.end method


# virtual methods
.method public final f(ILG/n0;Z)LG/n0;
    .locals 11

    iget-object v0, p0, LU/o;->e:LG/q0;

    invoke-virtual {v0, p1, p2, p3}, LG/q0;->f(ILG/n0;Z)LG/n0;

    move-result-object v1

    iget p1, v1, LG/n0;->c:I

    iget-object p3, p0, LN/c0;->f:LG/p0;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p3, v2, v3}, LG/q0;->m(ILG/p0;J)LG/p0;

    move-result-object p1

    invoke-virtual {p1}, LG/p0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v2, p2, LG/n0;->a:Ljava/lang/Object;

    iget-object v3, p2, LG/n0;->b:Ljava/lang/Object;

    iget v4, p2, LG/n0;->c:I

    iget-wide v5, p2, LG/n0;->d:J

    iget-wide v7, p2, LG/n0;->e:J

    sget-object v9, LG/c;->f:LG/c;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, LG/n0;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLG/c;Z)V

    return-object v1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v1, LG/n0;->f:Z

    return-object v1
.end method
