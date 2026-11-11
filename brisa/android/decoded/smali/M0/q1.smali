.class public final LM0/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/M0;


# instance fields
.field public final e:LN0/P;


# direct methods
.method public constructor <init>(LN0/P;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/q1;->e:LN0/P;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LM0/q1;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LM0/q1;

    iget-object v0, p0, LM0/q1;->e:LN0/P;

    iget-object p1, p1, LM0/q1;->e:LN0/P;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LM0/q1;->e:LN0/P;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
