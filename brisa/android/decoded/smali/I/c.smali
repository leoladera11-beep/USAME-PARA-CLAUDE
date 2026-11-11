.class public final LI/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lu1/r;

.field public static final d:LI/c;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Lu1/C0;

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lu1/v0;->f:Lu1/v0;

    new-instance v1, LG/v;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LG/v;-><init>(I)V

    new-instance v2, Lu1/r;

    invoke-direct {v2, v1, v0}, Lu1/r;-><init>(Lt1/j;Lu1/y0;)V

    sput-object v2, LI/c;->c:Lu1/r;

    new-instance v0, LI/c;

    sget-object v1, Lu1/P;->f:Lu1/N;

    sget-object v1, Lu1/C0;->i:Lu1/C0;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, LI/c;-><init>(Ljava/util/List;J)V

    sput-object v0, LI/c;->d:LI/c;

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LI/c;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LI/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LI/c;->c:Lu1/r;

    invoke-static {v0, p1}, Lu1/P;->r(Lu1/y0;Ljava/util/List;)Lu1/C0;

    move-result-object p1

    iput-object p1, p0, LI/c;->a:Lu1/C0;

    iput-wide p2, p0, LI/c;->b:J

    return-void
.end method
