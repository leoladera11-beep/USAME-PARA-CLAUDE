.class public Lp2/I;
.super Lp2/Q;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final d:LW0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp2/I;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lp2/Q;-><init>(I)V

    .line 2
    new-instance v0, LW0/c;

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, LW0/c;-><init>(IZ)V

    .line 4
    iput-object v0, p0, Lp2/I;->d:LW0/c;

    return-void
.end method

.method public constructor <init>(Lp2/I;)V
    .locals 3

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Lp2/Q;-><init>(I)V

    .line 6
    new-instance v0, LW0/c;

    const/16 v1, 0x12

    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, LW0/c;-><init>(IZ)V

    .line 8
    iput-object v0, p0, Lp2/I;->d:LW0/c;

    .line 9
    iget v1, p1, Lp2/Q;->b:I

    iput v1, p0, Lp2/Q;->b:I

    .line 10
    iget v1, p1, Lp2/Q;->c:I

    iput v1, p0, Lp2/Q;->c:I

    .line 11
    iget-object p1, p1, Lp2/I;->d:LW0/c;

    invoke-virtual {p1}, LW0/c;->B()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, LW0/c;->y()V

    .line 13
    iput-object p1, v0, LW0/c;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lp2/Q;->b:I

    iput v0, p0, Lp2/Q;->c:I

    iget-object v0, p0, Lp2/I;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->y()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp2/I;->d:LW0/c;

    invoke-virtual {v0}, LW0/c;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
