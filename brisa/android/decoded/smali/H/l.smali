.class public final LH/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:LG/q0;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LH/l;->a:J

    sget-object v0, LG/q0;->a:LG/m0;

    iput-object v0, p0, LH/l;->b:LG/q0;

    const/4 v0, 0x0

    iput-object v0, p0, LH/l;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()LH/m;
    .locals 2

    iget-object v0, p0, LH/l;->b:LG/q0;

    invoke-virtual {v0}, LG/q0;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LH/l;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, LH/l;->b:LG/q0;

    invoke-virtual {v1, v0}, LG/q0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    :cond_1
    new-instance v0, LH/m;

    invoke-direct {v0, p0}, LH/m;-><init>(LH/l;)V

    return-object v0
.end method
