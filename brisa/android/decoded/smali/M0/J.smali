.class public final synthetic LM0/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;
.implements LM0/T1;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;)V
    .locals 0

    iput-object p3, p0, LM0/J;->f:Ljava/lang/Object;

    iput-wide p1, p0, LM0/J;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM0/q;I)V
    .locals 3

    iget-object v0, p0, LM0/J;->f:Ljava/lang/Object;

    check-cast v0, LM0/l0;

    iget-wide v1, p0, LM0/J;->e:J

    iget-object v0, v0, LM0/l0;->c:LM0/y0;

    invoke-interface {p1, v0, p2, v1, v2}, LM0/q;->e0(LM0/o;IJ)V

    return-void
.end method

.method public i(LM0/X0;LM0/N0;I)Ljava/lang/Object;
    .locals 6

    iget-object p3, p0, LM0/J;->f:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    :try_start_0
    iget v0, p2, LM0/N0;->c:I

    invoke-static {v0, p3}, LG/P;->a(ILandroid/os/Bundle;)LG/P;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p3}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p0, LM0/J;->e:J

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, LM0/X0;->s(LM0/N0;Lu1/C0;IJ)Lz1/H;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p2, p3, p1}, LJ/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/brisa/local/v;->k(Ljava/lang/RuntimeException;)Lz1/w;

    move-result-object p1

    return-object p1
.end method
