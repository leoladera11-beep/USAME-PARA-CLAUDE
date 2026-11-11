.class public final Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ld1/m;


# direct methods
.method public constructor <init>(ILd1/m;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lq/a;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq/a;->f:Ld1/m;

    return-void
.end method

.method public constructor <init>(Ld1/m;Landroid/graphics/Typeface;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lq/a;->e:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/a;->f:Ld1/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lq/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lq/a;->f:Ld1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object v0, p0, Lq/a;->f:Ld1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
