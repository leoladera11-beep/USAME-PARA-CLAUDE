.class public abstract Lt1/d;
.super Lt1/i;
.source "SourceFile"


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lt1/i;->c(C)Z

    move-result p1

    return p1
.end method

.method public d()Lt1/i;
    .locals 1

    new-instance v0, Lt1/h;

    invoke-direct {v0, p0}, Lt1/c;-><init>(Lt1/i;)V

    return-object v0
.end method
