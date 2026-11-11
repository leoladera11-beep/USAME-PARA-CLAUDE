.class public final synthetic LD2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LD2/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LD2/c;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lo2/q;

    new-instance v1, Lo2/x;

    const-string v2, ""

    invoke-direct {v1, v2}, Lo2/o;-><init>(Ljava/lang/String;)V

    const-class v2, Lo2/p;

    invoke-direct {v0, v1, v2}, Lo2/q;-><init>(Lo2/p;Ljava/lang/Class;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lq2/d;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_2
    const/16 v0, 0x800

    new-array v0, v0, [C

    return-object v0

    :pswitch_3
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :pswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [C

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    :pswitch_6
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lu2/f;

    const-string v1, "Could not get thumbnailBadgeViewModel"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lu2/f;

    const-string v1, "Could not get thumbnailOverlayBadgeViewModel"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
