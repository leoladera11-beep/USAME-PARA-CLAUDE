.class public abstract LB1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:LB1/j;

.field public static final g:LB1/p;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB1/j;

    sget-object v1, LB1/u;->a:[B

    invoke-direct {v0, v1}, LB1/j;-><init>([B)V

    sput-object v0, LB1/i;->f:LB1/j;

    invoke-static {}, LB1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LB1/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LB1/p;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, LB1/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LB1/p;-><init>(I)V

    :goto_0
    sput-object v0, LB1/i;->g:LB1/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LB1/i;->e:I

    return-void
.end method

.method public static a(III[B[B)Z
    .locals 2

    add-int v0, p0, p2

    array-length v1, p3

    invoke-static {p0, v0, v1}, LB1/i;->b(III)I

    add-int/2addr p2, p1

    array-length v1, p4

    invoke-static {p1, p2, v1}, LB1/i;->b(III)I

    :goto_0
    if-ge p0, v0, :cond_1

    aget-byte p2, p3, p0

    aget-byte v1, p4, p1

    if-eq p2, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p2, v0, p0}, LB1/e;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static d(I[BI)LB1/j;
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    sget-object p0, LB1/i;->f:LB1/j;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int v0, p0, p2

    array-length v1, p1

    invoke-static {p0, v0, v1}, LB1/i;->b(III)I

    sget-object v0, LB1/i;->g:LB1/p;

    iget v0, v0, LB1/p;->a:I

    packed-switch v0, :pswitch_data_0

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :pswitch_0
    add-int/2addr p2, p0

    invoke-static {p1, p0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    new-instance p0, LB1/j;

    invoke-direct {p0, v0}, LB1/j;-><init>([B)V
    :try_end_0
    .catch LB1/v; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Expected no InvalidProtocolBufferException as data UTF8 validity is not checked."

    invoke-direct {p1, p2, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract e([BI)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LB1/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LB1/i;

    invoke-virtual {p0}, LB1/i;->size()I

    move-result v1

    invoke-virtual {p1}, LB1/i;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    return v0

    :cond_3
    iget v0, p0, LB1/i;->e:I

    iget v1, p1, LB1/i;->e:I

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1}, LB1/i;->f(LB1/i;)Z

    move-result p1

    return p1
.end method

.method public abstract f(LB1/i;)Z
.end method

.method public abstract g(I)B
.end method

.method public abstract h(II)I
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, LB1/i;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, LB1/i;->size()I

    move-result v0

    invoke-virtual {p0, v0, v0}, LB1/i;->h(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, LB1/i;->e:I

    :cond_1
    return v0
.end method

.method public abstract i(II)LB1/i;
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LB1/g;

    invoke-direct {v0, p0}, LB1/g;-><init>(LB1/i;)V

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LB1/i;->size()I

    move-result v1

    invoke-virtual {p0}, LB1/i;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    invoke-static {p0}, LB1/N;->l(LB1/i;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, LB1/i;->i(II)LB1/i;

    move-result-object v3

    invoke-static {v3}, LB1/N;->l(LB1/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<ByteString@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-static {v3, v2, v0}, LB1/e;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
