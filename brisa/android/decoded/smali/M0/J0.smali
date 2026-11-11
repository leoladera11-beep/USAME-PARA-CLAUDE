.class public final LM0/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LG/g0;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/brisa/local/j;

.field public final e:Landroid/os/Bundle;

.field public final f:Landroid/os/Bundle;

.field public g:LJ/d;

.field public final h:Z

.field public final i:Lu1/C0;

.field public final j:Lu1/C0;

.field public final k:Lu1/C0;

.field public final l:Z

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, LM0/J0;->n:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(LN/x;Lcom/brisa/local/VideoPlaybackService;)V
    .locals 2

    new-instance v0, Lcom/brisa/local/j;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LM0/J0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LM0/J0;->b:LG/g0;

    const-string p1, ""

    iput-object p1, p0, LM0/J0;->c:Ljava/lang/String;

    iput-object v0, p0, LM0/J0;->d:Lcom/brisa/local/j;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, LM0/J0;->e:Landroid/os/Bundle;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, LM0/J0;->f:Landroid/os/Bundle;

    sget-object p1, Lu1/P;->f:Lu1/N;

    sget-object p1, Lu1/C0;->i:Lu1/C0;

    iput-object p1, p0, LM0/J0;->i:Lu1/C0;

    iput-object p1, p0, LM0/J0;->j:Lu1/C0;

    const/4 p2, 0x1

    iput-boolean p2, p0, LM0/J0;->h:Z

    iput-boolean p2, p0, LM0/J0;->l:Z

    iput-object p1, p0, LM0/J0;->k:Lu1/C0;

    return-void
.end method
