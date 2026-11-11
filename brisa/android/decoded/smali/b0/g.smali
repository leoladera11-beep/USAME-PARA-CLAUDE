.class public final Lb0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lb0/g;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lb0/g;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, -0x1

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Lb0/g;-><init>(JJI)V

    sput-object v0, Lb0/g;->d:Lb0/g;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lb0/g;->a:I

    iput-wide p1, p0, Lb0/g;->b:J

    iput-wide p3, p0, Lb0/g;->c:J

    return-void
.end method
