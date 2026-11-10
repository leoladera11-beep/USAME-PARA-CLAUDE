.class public final LP/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG/x;

.field public b:LG/e;

.field public c:Landroid/media/AudioDeviceInfo;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(LG/x;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, LP/k;->a:LG/x;

    .line 20
    sget-object p1, LG/e;->i:LG/e;

    iput-object p1, p0, LP/k;->b:LG/e;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, LP/k;->e:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, LP/k;->f:I

    .line 23
    iput p1, p0, LP/k;->h:I

    return-void
.end method

.method public constructor <init>(LP/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, LP/k;->a:LG/x;

    .line 3
    iput-object v0, p0, LP/k;->a:LG/x;

    .line 4
    iget-object v0, p1, LP/k;->b:LG/e;

    .line 5
    iput-object v0, p0, LP/k;->b:LG/e;

    .line 6
    iget-object v0, p1, LP/k;->c:Landroid/media/AudioDeviceInfo;

    .line 7
    iput-object v0, p0, LP/k;->c:Landroid/media/AudioDeviceInfo;

    .line 8
    iget-boolean v0, p1, LP/k;->d:Z

    .line 9
    iput-boolean v0, p0, LP/k;->d:Z

    .line 10
    iget v0, p1, LP/k;->e:I

    .line 11
    iput v0, p0, LP/k;->e:I

    .line 12
    iget v0, p1, LP/k;->f:I

    .line 13
    iput v0, p0, LP/k;->f:I

    .line 14
    iget-boolean v0, p1, LP/k;->g:Z

    .line 15
    iput-boolean v0, p0, LP/k;->g:Z

    .line 16
    iget p1, p1, LP/k;->h:I

    .line 17
    iput p1, p0, LP/k;->h:I

    return-void
.end method
