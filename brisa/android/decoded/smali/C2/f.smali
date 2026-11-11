.class public final synthetic LC2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LC2/f;->a:I

    iput-object p1, p0, LC2/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LC2/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC2/f;->b:Ljava/lang/String;

    check-cast p1, LC1/d;

    invoke-virtual {p1, v0}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, LC2/f;->b:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
