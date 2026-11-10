.class public final Lu1/W;
.super Lu1/R0;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Ljava/lang/Object;

.field public final synthetic g:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lu1/R0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/W;->g:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lu1/W;->e:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lu1/W;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lu1/W;->e:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lu1/W;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu1/w0;

    iget-object v1, v0, Lu1/w0;->a:Ljava/lang/Object;

    iput-object v1, p0, Lu1/W;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lu1/w0;->a()I

    move-result v0

    iput v0, p0, Lu1/W;->e:I

    :cond_0
    iget v0, p0, Lu1/W;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lu1/W;->e:I

    iget-object v0, p0, Lu1/W;->f:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
