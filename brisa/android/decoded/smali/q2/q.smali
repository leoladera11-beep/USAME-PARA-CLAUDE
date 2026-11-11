.class public final Lq2/q;
.super Lq2/s;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lq2/q;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln2/e;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p1, v1}, Ln2/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4
    invoke-static {v0}, Ln2/e;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq2/q;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm2/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq2/q;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lq2/q;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lq2/q;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lo2/p;)Z
    .locals 1

    iget v0, p0, Lq2/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/q;->b:Ljava/lang/Object;

    check-cast v0, Lm2/f;

    invoke-virtual {p1}, Lo2/p;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm2/f;->b(Ljava/lang/String;)Lm2/e;

    move-result-object p1

    invoke-interface {p1}, Lm2/e;->a()Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p1}, Lo2/p;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lq2/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lq2/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq2/q;->b:Ljava/lang/Object;

    check-cast v0, Lm2/f;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":matches(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lq2/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, ":contains("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
