.class public final synthetic LN/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/B;


# instance fields
.field public final synthetic a:LN/W;


# direct methods
.method public synthetic constructor <init>(LN/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/P;->a:LN/W;

    return-void
.end method


# virtual methods
.method public final a(LU/a;LG/q0;)V
    .locals 0

    iget-object p1, p0, LN/P;->a:LN/W;

    iget-object p1, p1, LN/W;->f:LN/F;

    iget-object p1, p1, LN/F;->k:LJ/O;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, LJ/O;->f(I)V

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, LJ/O;->g(I)Z

    return-void
.end method
