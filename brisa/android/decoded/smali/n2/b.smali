.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "select"

    const-string v1, "textarea"

    const-string v2, "input"

    const-string v3, "keygen"

    const-string v4, "object"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln2/b;->c:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Appendable;I)V
    .locals 0

    iput p2, p0, Ln2/b;->a:I

    iput-object p1, p0, Ln2/b;->b:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ln2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/StringBuilder;)Ln2/b;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ln2/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ln2/b;-><init>(Ljava/lang/Appendable;I)V

    return-object v0

    :cond_0
    new-instance v0, Ln2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln2/b;-><init>(Ljava/lang/Appendable;I)V

    return-object v0
.end method


# virtual methods
.method public final a(C)Ln2/b;
    .locals 1

    iget v0, p0, Ln2/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ln2/b;->b:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Ln2/b;->b:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, LC1/i;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)Ln2/b;
    .locals 1

    iget v0, p0, Ln2/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ln2/b;->b:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Ln2/b;->b:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, LC1/i;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ln2/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ln2/b;->b:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
