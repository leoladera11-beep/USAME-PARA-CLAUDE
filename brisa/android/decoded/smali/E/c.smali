.class public final LE/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/C;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LE/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)LB/B;
    .locals 1

    iget p1, p0, LE/c;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lz/C;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lz/C;-><init>(Z)V

    return-object p1

    :pswitch_0
    new-instance p1, LE/d;

    invoke-direct {p1}, LE/d;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
