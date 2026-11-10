.class public final Lz/i;
.super Lcom/brisa/local/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lz/m;


# direct methods
.method public constructor <init>(Lz/j;Lz/i;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lz/i;->c:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz/i;->d:Lz/m;

    return-void
.end method

.method public constructor <init>(Lz/m;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz/i;->c:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lz/i;->d:Lz/m;

    return-void
.end method


# virtual methods
.method public final w(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Lz/i;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz/i;->d:Lz/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lz/i;->d:Lz/m;

    check-cast v0, Lz/j;

    iget-object v0, v0, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final x()Z
    .locals 1

    iget v0, p0, Lz/i;->c:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lz/i;->d:Lz/m;

    check-cast v0, Lz/j;

    iget-boolean v0, v0, Lz/j;->e0:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
