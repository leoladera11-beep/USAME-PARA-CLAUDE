.class public final synthetic LN/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:LB/A;


# direct methods
.method public synthetic constructor <init>(LB/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/w;->a:LB/A;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, LN/w;->a:LB/A;

    iget-object v0, v0, LB/A;->h:Ljava/lang/Object;

    check-cast v0, LN/x;

    iget-boolean v1, v0, LN/x;->j0:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, LN/x;->u1(Ljava/lang/Object;II)V

    return-void
.end method
