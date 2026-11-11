.class public final LJ0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    iput p1, p0, LJ0/f;->a:I

    iput-wide p2, p0, LJ0/f;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lb0/o;LJ/D;)LJ0/f;
    .locals 3

    iget-object v0, p1, LJ/D;->a:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {p1, v2}, LJ/D;->N(I)V

    invoke-virtual {p1}, LJ/D;->m()I

    move-result p0

    invoke-virtual {p1}, LJ/D;->r()J

    move-result-wide v0

    new-instance p1, LJ0/f;

    invoke-direct {p1, p0, v0, v1}, LJ0/f;-><init>(IJ)V

    return-object p1
.end method
