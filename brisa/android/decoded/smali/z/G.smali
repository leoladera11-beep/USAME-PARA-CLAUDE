.class public final Lz/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lz/m;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:LB/e;

.field public i:LB/e;


# direct methods
.method public constructor <init>(ILz/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lz/G;->a:I

    .line 3
    iput-object p2, p0, Lz/G;->b:Lz/m;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lz/G;->c:Z

    .line 5
    sget-object p1, LB/e;->i:LB/e;

    iput-object p1, p0, Lz/G;->h:LB/e;

    .line 6
    iput-object p1, p0, Lz/G;->i:LB/e;

    return-void
.end method

.method public constructor <init>(ILz/m;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lz/G;->a:I

    .line 9
    iput-object p2, p0, Lz/G;->b:Lz/m;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lz/G;->c:Z

    .line 11
    sget-object p1, LB/e;->i:LB/e;

    iput-object p1, p0, Lz/G;->h:LB/e;

    .line 12
    iput-object p1, p0, Lz/G;->i:LB/e;

    return-void
.end method
