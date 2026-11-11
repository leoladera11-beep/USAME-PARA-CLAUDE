.class public final synthetic Lq2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lq2/B;

.field public final synthetic b:Lo2/j;


# direct methods
.method public synthetic constructor <init>(Lq2/B;Lo2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/v;->a:Lq2/B;

    iput-object p2, p0, Lq2/v;->b:Lo2/j;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lo2/p;

    iget-object v0, p0, Lq2/v;->a:Lq2/B;

    iget-object v0, v0, Lq2/B;->a:Lq2/o;

    iget-object v1, p0, Lq2/v;->b:Lo2/j;

    invoke-virtual {v0, v1, p1}, Lq2/o;->d(Lo2/j;Lo2/p;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
