.class public final LS/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:LS/q;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:LJ/Q;

.field public e:J

.field public f:I

.field public g:Z

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LS/q;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v9}, LS/q;-><init>(JJJJI)V

    sput-object v0, LS/q;->i:LS/q;

    return-void
.end method

.method public constructor <init>(JJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LS/q;->a:J

    iput-wide p3, p0, LS/q;->b:J

    iput-wide p5, p0, LS/q;->c:J

    iput-wide p7, p0, LS/q;->e:J

    iput p9, p0, LS/q;->f:I

    new-instance p1, LJ/Q;

    invoke-direct {p1}, LJ/Q;-><init>()V

    iput-object p1, p0, LS/q;->d:LJ/Q;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LS/q;->h:J

    return-void
.end method
