.class public abstract Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/e;

.field public b:Lb0/G;

.field public c:Lb0/p;

.field public d:Lw0/g;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:LW0/c;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw0/e;

    invoke-direct {v0}, Lw0/e;-><init>()V

    iput-object v0, p0, Lw0/i;->a:Lw0/e;

    new-instance v0, LW0/c;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LW0/c;-><init>(IZ)V

    iput-object v0, p0, Lw0/i;->j:LW0/c;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lw0/i;->g:J

    return-void
.end method

.method public abstract b(LJ/D;)J
.end method

.method public abstract c(LJ/D;JLW0/c;)Z
.end method

.method public d(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, LW0/c;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, LW0/c;-><init>(IZ)V

    iput-object p1, p0, Lw0/i;->j:LW0/c;

    iput-wide v0, p0, Lw0/i;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lw0/i;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lw0/i;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lw0/i;->e:J

    iput-wide v0, p0, Lw0/i;->g:J

    return-void
.end method
