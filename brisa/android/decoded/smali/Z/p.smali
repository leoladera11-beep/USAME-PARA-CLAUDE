.class public final LZ/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LZ/y;

.field public c:LZ/s;

.field public d:Z

.field public e:LJ/M;

.field public f:Z

.field public g:J

.field public final h:LZ/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;LZ/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LZ/p;->a:Landroid/content/Context;

    iput-object p2, p0, LZ/p;->b:LZ/y;

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, LZ/p;->g:J

    new-instance p1, LZ/z;

    invoke-direct {p1}, LZ/z;-><init>()V

    iput-object p1, p0, LZ/p;->h:LZ/z;

    sget-object p1, LJ/M;->a:LJ/M;

    iput-object p1, p0, LZ/p;->e:LJ/M;

    return-void
.end method
