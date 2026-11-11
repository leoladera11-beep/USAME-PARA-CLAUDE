.class public abstract LB1/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:LB1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LB1/c;->a:Ljava/lang/Class;

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, LB1/F;->a:Ljava/lang/Class;

    new-instance v0, LB1/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LB1/p;-><init>(I)V

    sput-object v0, LB1/F;->b:LB1/p;

    return-void
.end method

.method public static a(LB1/p;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, LB1/r;

    iget-object p0, p1, LB1/r;->c:LB1/H;

    check-cast p2, LB1/r;

    iget-object p2, p2, LB1/r;->c:LB1/H;

    sget-object v0, LB1/H;->e:LB1/H;

    invoke-virtual {v0, p2}, LB1/H;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, LB1/H;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v0, p0, LB1/H;->a:I

    iget v1, p2, LB1/H;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, LB1/H;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v3, p2, LB1/H;->b:[I

    iget v4, p0, LB1/H;->a:I

    iget v5, p2, LB1/H;->a:I

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LB1/H;->c:[Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p2, LB1/H;->c:[Ljava/lang/Object;

    iget p0, p0, LB1/H;->a:I

    iget p2, p2, LB1/H;->a:I

    invoke-static {v4, v2, v3, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, LB1/H;

    const/4 p2, 0x1

    invoke-direct {p0, v0, v1, v3, p2}, LB1/H;-><init>(I[I[Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, LB1/H;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, LB1/H;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, LB1/H;->a:I

    iget v1, p2, LB1/H;->a:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LB1/H;->a(I)V

    iget-object v1, p2, LB1/H;->b:[I

    iget-object v3, p0, LB1/H;->b:[I

    iget v4, p0, LB1/H;->a:I

    iget v5, p2, LB1/H;->a:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p2, LB1/H;->c:[Ljava/lang/Object;

    iget-object v3, p0, LB1/H;->c:[Ljava/lang/Object;

    iget v4, p0, LB1/H;->a:I

    iget p2, p2, LB1/H;->a:I

    invoke-static {v1, v2, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LB1/H;->a:I

    :goto_0
    iput-object p0, p1, LB1/r;->c:LB1/H;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
