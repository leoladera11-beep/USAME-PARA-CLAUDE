.class public final LW1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LB0/b;

.field public final b:La1/g;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:LP/B;

.field public final f:Z

.field public final g:LW1/b;

.field public final h:Z

.field public i:Z

.field public final j:LW1/b;

.field public k:LW1/i;

.field public final l:LW1/b;

.field public final m:Ljavax/net/SocketFactory;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:Li2/c;

.field public final q:LW1/d;

.field public r:I

.field public s:I

.field public final t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LB0/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LB0/b;-><init>(I)V

    iput-object v0, p0, LW1/p;->a:LB0/b;

    new-instance v0, La1/g;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, La1/g;-><init>(I)V

    iput-object v0, p0, LW1/p;->b:La1/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LW1/p;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LW1/p;->d:Ljava/util/ArrayList;

    new-instance v0, LP/B;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    iput-object v0, p0, LW1/p;->e:LP/B;

    const/4 v0, 0x1

    iput-boolean v0, p0, LW1/p;->f:Z

    sget-object v1, LW1/b;->e:LW1/b;

    iput-object v1, p0, LW1/p;->g:LW1/b;

    iput-boolean v0, p0, LW1/p;->h:Z

    iput-boolean v0, p0, LW1/p;->i:Z

    sget-object v0, LW1/b;->f:LW1/b;

    iput-object v0, p0, LW1/p;->j:LW1/b;

    sget-object v0, LW1/i;->c:LW1/b;

    iput-object v0, p0, LW1/p;->k:LW1/i;

    iput-object v1, p0, LW1/p;->l:LW1/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LW1/p;->m:Ljavax/net/SocketFactory;

    sget-object v0, LW1/q;->E:Ljava/util/List;

    iput-object v0, p0, LW1/p;->n:Ljava/util/List;

    sget-object v0, LW1/q;->D:Ljava/util/List;

    iput-object v0, p0, LW1/p;->o:Ljava/util/List;

    sget-object v0, Li2/c;->a:Li2/c;

    iput-object v0, p0, LW1/p;->p:Li2/c;

    sget-object v0, LW1/d;->c:LW1/d;

    iput-object v0, p0, LW1/p;->q:LW1/d;

    const/16 v0, 0x2710

    iput v0, p0, LW1/p;->r:I

    iput v0, p0, LW1/p;->s:I

    iput v0, p0, LW1/p;->t:I

    return-void
.end method
