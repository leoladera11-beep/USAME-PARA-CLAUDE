.class public final synthetic LM0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:LM0/l0;

.field public final synthetic f:LG/P;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(LM0/l0;LG/P;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/f0;->e:LM0/l0;

    iput-object p2, p0, LM0/f0;->f:LG/P;

    iput-wide p3, p0, LM0/f0;->g:J

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 7

    iget-object v0, p0, LM0/f0;->e:LM0/l0;

    iget-object v2, v0, LM0/l0;->c:LM0/y0;

    invoke-virtual {v0}, LM0/l0;->i1()I

    move-result v0

    const/4 v1, 0x1

    iget-object v3, p0, LM0/f0;->f:LG/P;

    invoke-virtual {v3, v0, v1}, LG/P;->b(IZ)Landroid/os/Bundle;

    move-result-object v4

    iget-wide v5, p0, LM0/f0;->g:J

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, LM0/q;->E(LM0/o;ILandroid/os/Bundle;J)V

    return-void
.end method
