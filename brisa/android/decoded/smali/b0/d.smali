.class public final Lb0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/z;


# instance fields
.field public final a:Lb0/f;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lb0/f;JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/d;->a:Lb0/f;

    iput-wide p2, p0, Lb0/d;->b:J

    iput-wide p4, p0, Lb0/d;->c:J

    iput-wide p6, p0, Lb0/d;->d:J

    iput-wide p8, p0, Lb0/d;->e:J

    iput-wide p10, p0, Lb0/d;->f:J

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)Lb0/y;
    .locals 13

    iget-object v0, p0, Lb0/d;->a:Lb0/f;

    invoke-interface {v0, p1, p2}, Lb0/f;->n(J)J

    move-result-wide v1

    iget-wide v9, p0, Lb0/d;->e:J

    iget-wide v11, p0, Lb0/d;->f:J

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lb0/d;->c:J

    iget-wide v7, p0, Lb0/d;->d:J

    invoke-static/range {v1 .. v12}, Lb0/e;->a(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lb0/y;

    new-instance v3, Lb0/A;

    invoke-direct {v3, p1, p2, v0, v1}, Lb0/A;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lb0/y;-><init>(Lb0/A;Lb0/A;)V

    return-object v2
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lb0/d;->b:J

    return-wide v0
.end method
