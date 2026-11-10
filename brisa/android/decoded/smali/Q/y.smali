.class public final LQ/y;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final e:LL/n;

.field public final f:Landroid/net/Uri;

.field public final g:Ljava/util/Map;

.field public final h:J


# direct methods
.method public constructor <init>(LL/n;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, LQ/y;->e:LL/n;

    iput-object p2, p0, LQ/y;->f:Landroid/net/Uri;

    iput-object p3, p0, LQ/y;->g:Ljava/util/Map;

    iput-wide p4, p0, LQ/y;->h:J

    return-void
.end method
