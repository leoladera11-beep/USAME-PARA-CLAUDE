.class public final Li/b;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Li/b;->e:I

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    iget v0, p0, Li/b;->e:I

    monitor-enter p0

    packed-switch v0, :pswitch_data_0

    monitor-exit p0

    return-object p0

    :pswitch_0
    monitor-exit p0

    return-object p0

    :pswitch_1
    monitor-exit p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
