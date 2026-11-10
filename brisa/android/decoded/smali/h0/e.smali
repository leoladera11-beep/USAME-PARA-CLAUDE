.class public final Lh0/e;
.super LC/b;
.source "SourceFile"


# instance fields
.field public final b:LJ/D;

.field public final c:LJ/D;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lb0/G;)V
    .locals 1

    invoke-direct {p0, p1}, LC/b;-><init>(Ljava/lang/Object;)V

    new-instance p1, LJ/D;

    sget-object v0, LK/t;->a:[B

    invoke-direct {p1, v0}, LJ/D;-><init>([B)V

    iput-object p1, p0, Lh0/e;->b:LJ/D;

    new-instance p1, LJ/D;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, LJ/D;-><init>(I)V

    iput-object p1, p0, Lh0/e;->c:LJ/D;

    return-void
.end method
