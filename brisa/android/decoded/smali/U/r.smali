.class public final LU/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final a:J

.field public final b:LL/n;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/util/Map;

.field public final e:J

.field public final f:J

.field public final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, LU/r;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(LU/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, LU/q;->a:J

    iput-wide v0, p0, LU/r;->a:J

    iget-object v0, p1, LU/q;->b:LL/n;

    iput-object v0, p0, LU/r;->b:LL/n;

    iget-object v0, p1, LU/q;->d:Landroid/net/Uri;

    iput-object v0, p0, LU/r;->c:Landroid/net/Uri;

    iget-object v0, p1, LU/q;->e:Ljava/util/Map;

    iput-object v0, p0, LU/r;->d:Ljava/util/Map;

    iget-wide v0, p1, LU/q;->c:J

    iput-wide v0, p0, LU/r;->e:J

    iget-wide v0, p1, LU/q;->f:J

    iput-wide v0, p0, LU/r;->f:J

    iget-wide v0, p1, LU/q;->g:J

    iput-wide v0, p0, LU/r;->g:J

    return-void
.end method


# virtual methods
.method public final a()LU/q;
    .locals 3

    new-instance v0, LU/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, LU/r;->a:J

    iput-wide v1, v0, LU/q;->a:J

    iget-object v1, p0, LU/r;->b:LL/n;

    iput-object v1, v0, LU/q;->b:LL/n;

    iget-object v1, p0, LU/r;->c:Landroid/net/Uri;

    iput-object v1, v0, LU/q;->d:Landroid/net/Uri;

    iget-object v1, p0, LU/r;->d:Ljava/util/Map;

    iput-object v1, v0, LU/q;->e:Ljava/util/Map;

    iget-wide v1, p0, LU/r;->e:J

    iput-wide v1, v0, LU/q;->c:J

    iget-wide v1, p0, LU/r;->f:J

    iput-wide v1, v0, LU/q;->f:J

    iget-wide v1, p0, LU/r;->g:J

    iput-wide v1, v0, LU/q;->g:J

    return-object v0
.end method
