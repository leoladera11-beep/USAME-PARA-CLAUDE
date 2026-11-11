.class public final Li/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Li/n;

.field public final f:Lz1/B;


# direct methods
.method public constructor <init>(Li/n;Lz1/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/f;->e:Li/n;

    iput-object p2, p0, Li/f;->f:Lz1/B;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li/f;->e:Li/n;

    iget-object v0, v0, Li/i;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/f;->f:Lz1/B;

    invoke-static {v0}, Li/i;->f(Lz1/B;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/i;->j:Lcom/brisa/local/v;

    iget-object v2, p0, Li/f;->e:Li/n;

    invoke-virtual {v1, v2, p0, v0}, Lcom/brisa/local/v;->b(Li/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/f;->e:Li/n;

    invoke-static {v0}, Li/i;->c(Li/i;)V

    :cond_1
    :goto_0
    return-void
.end method
