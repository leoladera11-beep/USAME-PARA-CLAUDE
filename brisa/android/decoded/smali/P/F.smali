.class public final LP/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:LN0/O;

.field public c:LP/P;

.field public d:LP/c;

.field public final e:F


# direct methods
.method public constructor <init>(Lcom/brisa/local/VideoPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LP/F;->a:Landroid/content/Context;

    sget-object p1, LP/P;->a:LP/P;

    iput-object p1, p0, LP/F;->c:LP/P;

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, LP/F;->e:F

    return-void
.end method
