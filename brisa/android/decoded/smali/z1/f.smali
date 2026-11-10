.class public final Lz1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lz1/p;

.field public final f:Lz1/B;


# direct methods
.method public constructor <init>(Lz1/p;Lz1/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/f;->e:Lz1/p;

    iput-object p2, p0, Lz1/f;->f:Lz1/B;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz1/f;->e:Lz1/p;

    iget-object v0, v0, Lz1/p;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/f;->f:Lz1/B;

    invoke-static {v0}, Lz1/p;->h(Lz1/B;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz1/p;->j:Lcom/brisa/local/u;

    iget-object v2, p0, Lz1/f;->e:Lz1/p;

    invoke-virtual {v1, v2, p0, v0}, Lcom/brisa/local/u;->f(Lz1/p;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz1/f;->e:Lz1/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lz1/p;->e(Lz1/p;Z)V

    :cond_1
    :goto_0
    return-void
.end method
