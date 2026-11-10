.class public final LU/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/z;


# instance fields
.field public final a:LL/g;

.field public final b:LI0/E;

.field public final c:LB/A;

.field public final d:Lcom/brisa/local/j;

.field public final e:I

.field public f:LG/x;


# direct methods
.method public constructor <init>(LL/g;Lb0/q;)V
    .locals 3

    new-instance v0, LI0/E;

    const/16 v1, 0x15

    invoke-direct {v0, p2, v1}, LI0/E;-><init>(Ljava/lang/Object;I)V

    new-instance p2, LB/A;

    const/16 v1, 0xe

    invoke-direct {p2, v1}, LB/A;-><init>(I)V

    new-instance v1, Lcom/brisa/local/j;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/brisa/local/j;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/V;->a:LL/g;

    iput-object v0, p0, LU/V;->b:LI0/E;

    iput-object p2, p0, LU/V;->c:LB/A;

    iput-object v1, p0, LU/V;->d:Lcom/brisa/local/j;

    const/high16 p1, 0x100000

    iput p1, p0, LU/V;->e:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(LG/P;)LU/a;
    .locals 0

    invoke-virtual {p0, p1}, LU/V;->e(LG/P;)LU/W;

    move-result-object p1

    return-object p1
.end method

.method public final e(LG/P;)LU/W;
    .locals 9

    iget-object v0, p1, LG/P;->b:LG/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LU/W;

    iget-object v3, p0, LU/V;->a:LL/g;

    iget-object v4, p0, LU/V;->b:LI0/E;

    iget-object v0, p0, LU/V;->c:LB/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, LG/P;->b:LG/K;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, LG/P;->b:LG/K;

    iget-object v2, v2, LG/K;->c:LG/H;

    if-nez v2, :cond_0

    sget-object v0, LQ/o;->a:LQ/m;

    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_0
    iget-object v5, v0, LB/A;->f:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, LB/A;->g:Ljava/lang/Object;

    check-cast v6, LG/H;

    invoke-virtual {v2, v6}, LG/H;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iput-object v2, v0, LB/A;->g:Ljava/lang/Object;

    invoke-static {v2}, LB/A;->t(LG/H;)LQ/f;

    move-result-object v2

    iput-object v2, v0, LB/A;->h:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LQ/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v6, p0, LU/V;->d:Lcom/brisa/local/j;

    iget v7, p0, LU/V;->e:I

    iget-object v8, p0, LU/V;->f:LG/x;

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, LU/W;-><init>(LG/P;LL/g;LI0/E;LQ/o;Lcom/brisa/local/j;ILG/x;)V

    return-object v1

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
