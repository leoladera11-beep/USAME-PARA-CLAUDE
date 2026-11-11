.class public final synthetic Lq2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq2/o;

.field public final synthetic c:Lo2/j;


# direct methods
.method public synthetic constructor <init>(Lq2/o;Lo2/j;I)V
    .locals 0

    iput p3, p0, Lq2/e;->a:I

    iput-object p1, p0, Lq2/e;->b:Lq2/o;

    iput-object p2, p0, Lq2/e;->c:Lo2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lq2/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/e;->c:Lo2/j;

    check-cast p1, Lo2/j;

    iget-object v1, p0, Lq2/e;->b:Lq2/o;

    invoke-virtual {v1, v0, p1}, Lq2/o;->b(Lo2/j;Lo2/j;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lq2/e;->c:Lo2/j;

    check-cast p1, Lo2/p;

    iget-object v1, p0, Lq2/e;->b:Lq2/o;

    invoke-virtual {v1, v0, p1}, Lq2/o;->d(Lo2/j;Lo2/p;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
