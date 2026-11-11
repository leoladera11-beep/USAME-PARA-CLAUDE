.class public final synthetic LS/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/t;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    const-string v0, "ro.vendor.api_level"

    invoke-static {v0}, LJ/W;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, LS1/e;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
