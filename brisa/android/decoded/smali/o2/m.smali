.class public final Lo2/m;
.super Lo2/j;
.source "SourceFile"


# instance fields
.field public final n:Lq2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ln2/e;->a:[Ljava/lang/String;

    sget-object v0, Ln2/b;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1, v0}, Ln2/e;->j(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lq2/u;->x(Ljava/lang/String;)Lq2/o;

    return-void
.end method

.method public constructor <init>(Lp2/E;Lo2/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lo2/j;-><init>(Lp2/E;Ljava/lang/String;Lo2/b;)V

    new-instance p1, Lq2/d;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo2/m;->n:Lq2/d;

    return-void
.end method


# virtual methods
.method public final A(Lo2/p;)V
    .locals 1

    invoke-super {p0, p1}, Lo2/p;->A(Lo2/p;)V

    iget-object v0, p0, Lo2/m;->n:Lq2/d;

    invoke-virtual {v0, p1}, Lq2/d;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final K()Lo2/j;
    .locals 1

    invoke-super {p0}, Lo2/j;->K()Lo2/j;

    move-result-object v0

    check-cast v0, Lo2/m;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lo2/j;->K()Lo2/j;

    move-result-object v0

    check-cast v0, Lo2/m;

    return-object v0
.end method

.method public final i()Lo2/p;
    .locals 1

    invoke-super {p0}, Lo2/j;->K()Lo2/j;

    move-result-object v0

    check-cast v0, Lo2/m;

    return-object v0
.end method
