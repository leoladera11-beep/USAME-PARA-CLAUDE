.class public final LU/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:LL/n;

.field public c:J

.field public d:Landroid/net/Uri;

.field public e:Ljava/util/Map;

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(JLL/n;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LU/q;->a:J

    iput-object p3, p0, LU/q;->b:LL/n;

    iget-object p1, p3, LL/n;->a:Landroid/net/Uri;

    iput-object p1, p0, LU/q;->d:Landroid/net/Uri;

    iput-wide p4, p0, LU/q;->c:J

    sget-object p1, Lu1/H0;->k:Lu1/H0;

    iput-object p1, p0, LU/q;->e:Ljava/util/Map;

    return-void
.end method
