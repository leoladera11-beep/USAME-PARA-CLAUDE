.class public final synthetic LD2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LD2/i;->a:I

    iput-object p1, p0, LD2/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LD2/i;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lu2/f;

    const-string v1, "Unable to parse the date: "

    iget-object v2, p0, LD2/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a localization code: "

    iget-object v2, p0, LD2/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ln2/d;

    iget-object v1, p0, LD2/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ln2/d;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lu2/f;

    const-string v1, "not a valid locale language code: "

    iget-object v2, p0, LD2/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lz/K;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lu2/f;

    const-string v1, "Could not parse upload date \""

    const-string v2, "\""

    iget-object v3, p0, LD2/i;->b:Ljava/lang/String;

    invoke-static {v1, v3, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
