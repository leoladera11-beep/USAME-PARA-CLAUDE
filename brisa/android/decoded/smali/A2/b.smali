.class public final LA2/b;
.super Lr2/i;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    iput p2, p0, LA2/b;->c:I

    invoke-direct {p0, p1, p3}, Lr2/i;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 10

    iget v0, p0, LA2/b;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lr2/i;->b()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v8, "NZ"

    const-string v9, "US"

    const-string v1, "AU"

    const-string v2, "CA"

    const-string v3, "DE"

    const-string v4, "FR"

    const-string v5, "GB"

    const-string v6, "IE"

    const-string v7, "NL"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lw2/a;

    invoke-direct {v4, v3}, Lw2/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
