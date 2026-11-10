.class public final LU/k0;
.super LU/o;
.source "SourceFile"


# instance fields
.field public final f:LG/P;


# direct methods
.method public constructor <init>(LG/q0;LG/P;)V
    .locals 0

    invoke-direct {p0, p1}, LU/o;-><init>(LG/q0;)V

    iput-object p2, p0, LU/k0;->f:LG/P;

    return-void
.end method


# virtual methods
.method public final m(ILG/p0;J)LG/p0;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, LU/o;->m(ILG/p0;J)LG/p0;

    iget-object p1, p0, LU/k0;->f:LG/P;

    iput-object p1, p2, LG/p0;->c:LG/P;

    iget-object p1, p1, LG/P;->b:LG/K;

    const/4 p1, 0x0

    iput-object p1, p2, LG/p0;->b:Ljava/lang/Object;

    return-object p2
.end method
