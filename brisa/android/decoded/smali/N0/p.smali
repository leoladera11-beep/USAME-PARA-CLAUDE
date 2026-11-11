.class public final LN0/p;
.super LC2/b;
.source "SourceFile"


# instance fields
.field public final synthetic k:LM0/y1;


# direct methods
.method public constructor <init>(LM0/y1;)V
    .locals 0

    iput-object p1, p0, LN0/p;->k:LM0/y1;

    invoke-direct {p0, p1}, LC2/b;-><init>(LM0/y1;)V

    return-void
.end method


# virtual methods
.method public final k()LN0/P;
    .locals 2

    iget-object v0, p0, LN0/p;->k:LM0/y1;

    iget-object v1, v0, LM0/y1;->f:LN0/m;

    if-eqz v1, :cond_1

    iget-object v0, v0, LM0/y1;->c:LN0/m;

    if-ne v1, v0, :cond_0

    new-instance v0, LN0/P;

    iget-object v1, p0, LC2/b;->g:Ljava/lang/Object;

    check-cast v1, LN0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LN0/n;->d(LN0/o;)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-direct {v0, v1}, LN0/P;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v0

    :cond_0
    iget-object v0, v1, LN0/m;->d:LN0/P;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
