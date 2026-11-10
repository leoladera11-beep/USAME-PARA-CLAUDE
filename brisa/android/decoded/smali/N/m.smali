.class public final LN/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:I

.field public static final D:Z


# instance fields
.field public final A:Z

.field public final B:Z

.field public final a:Lcom/brisa/local/VideoPlaybackService;

.field public final b:LJ/M;

.field public final c:LN/l;

.field public final d:LN/l;

.field public final e:LN/l;

.field public final f:LN/l;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public final i:LG/e;

.field public final j:I

.field public final k:Z

.field public final l:LN/h0;

.field public final m:LN/g0;

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:LN/e;

.field public final r:J

.field public final s:J

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Z

.field public y:Z

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/brisa/local/d0;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "emu64a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "emu64x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vsoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x7530

    :goto_1
    sput v0, LN/m;->C:I

    const/4 v0, 0x1

    sput-boolean v0, LN/m;->D:Z

    return-void
.end method

.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 7

    new-instance v0, LN/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LN/l;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    new-instance v1, LN/l;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, LN/l;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    new-instance v2, LN/l;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, LN/l;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    new-instance v3, LN/l;

    const/4 v4, 0x3

    invoke-direct {v3, p1, v4}, LN/l;-><init>(Lcom/brisa/local/VideoPlaybackService;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/m;->a:Lcom/brisa/local/VideoPlaybackService;

    iput-object v0, p0, LN/m;->c:LN/l;

    iput-object v1, p0, LN/m;->d:LN/l;

    iput-object v2, p0, LN/m;->e:LN/l;

    iput-object v3, p0, LN/m;->f:LN/l;

    invoke-static {}, LJ/W;->q()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, LN/m;->g:Landroid/os/Looper;

    sget-object p1, LG/e;->i:LG/e;

    iput-object p1, p0, LN/m;->i:LG/e;

    const/4 p1, 0x1

    iput p1, p0, LN/m;->j:I

    iput-boolean p1, p0, LN/m;->k:Z

    sget-object v0, LN/h0;->d:LN/h0;

    iput-object v0, p0, LN/m;->l:LN/h0;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, LN/m;->n:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, LN/m;->o:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, LN/m;->p:J

    sget-object v0, LN/g0;->b:LN/g0;

    iput-object v0, p0, LN/m;->m:LN/g0;

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, LJ/W;->G(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, LJ/W;->G(J)J

    move-result-wide v4

    new-instance v6, LN/e;

    invoke-direct {v6, v0, v1, v4, v5}, LN/e;-><init>(JJ)V

    iput-object v6, p0, LN/m;->q:LN/e;

    sget-object v0, LJ/M;->a:LJ/M;

    iput-object v0, p0, LN/m;->b:LJ/M;

    iput-wide v2, p0, LN/m;->r:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, LN/m;->s:J

    const v0, 0x927c0

    iput v0, p0, LN/m;->t:I

    const v1, 0x7fffffff

    sget-boolean v2, LN/m;->D:Z

    if-eqz v2, :cond_0

    sget v3, LN/m;->C:I

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput v3, p0, LN/m;->u:I

    if-eqz v2, :cond_1

    const v1, 0xea60

    :cond_1
    iput v1, p0, LN/m;->v:I

    iput v0, p0, LN/m;->w:I

    iput-boolean p1, p0, LN/m;->x:Z

    const-string v0, ""

    iput-object v0, p0, LN/m;->z:Ljava/lang/String;

    const/16 v0, -0x3e8

    iput v0, p0, LN/m;->h:I

    new-instance v0, Lcom/brisa/local/j;

    invoke-direct {v0}, Lcom/brisa/local/j;-><init>()V

    iput-boolean p1, p0, LN/m;->A:Z

    iput-boolean p1, p0, LN/m;->B:Z

    return-void
.end method
