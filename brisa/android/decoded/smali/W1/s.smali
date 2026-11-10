.class public final LW1/s;
.super LW1/t;
.source "SourceFile"


# instance fields
.field public final synthetic a:LW1/o;

.field public final synthetic b:I

.field public final synthetic c:[B


# direct methods
.method public constructor <init>(LW1/o;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/s;->a:LW1/o;

    iput p2, p0, LW1/s;->b:I

    iput-object p3, p0, LW1/s;->c:[B

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget v0, p0, LW1/s;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final d()LW1/o;
    .locals 1

    iget-object v0, p0, LW1/s;->a:LW1/o;

    return-object v0
.end method

.method public final n(Lj2/p;)V
    .locals 2

    iget-object v0, p0, LW1/s;->c:[B

    iget v1, p0, LW1/s;->b:I

    invoke-virtual {p1, v0, v1}, Lj2/p;->e([BI)Lj2/h;

    return-void
.end method
