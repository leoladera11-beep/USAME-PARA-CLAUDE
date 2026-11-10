.class public final Lb0/E;
.super Lb0/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lb0/z;

.field public final synthetic c:LR0/b;


# direct methods
.method public constructor <init>(LR0/b;Lb0/z;Lb0/z;)V
    .locals 0

    iput-object p1, p0, Lb0/E;->c:LR0/b;

    iput-object p3, p0, Lb0/E;->b:Lb0/z;

    invoke-direct {p0, p2}, Lb0/u;-><init>(Lb0/z;)V

    return-void
.end method


# virtual methods
.method public final e(J)Lb0/y;
    .locals 8

    iget-object v0, p0, Lb0/E;->b:Lb0/z;

    invoke-interface {v0, p1, p2}, Lb0/z;->e(J)Lb0/y;

    move-result-object p1

    new-instance p2, Lb0/y;

    new-instance v0, Lb0/A;

    iget-object v1, p1, Lb0/y;->a:Lb0/A;

    iget-wide v2, v1, Lb0/A;->a:J

    iget-wide v4, v1, Lb0/A;->b:J

    iget-object v1, p0, Lb0/E;->c:LR0/b;

    iget-wide v6, v1, LR0/b;->f:J

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lb0/A;-><init>(JJ)V

    new-instance v1, Lb0/A;

    iget-object p1, p1, Lb0/y;->b:Lb0/A;

    iget-wide v2, p1, Lb0/A;->a:J

    iget-wide v4, p1, Lb0/A;->b:J

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lb0/A;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object p2
.end method
