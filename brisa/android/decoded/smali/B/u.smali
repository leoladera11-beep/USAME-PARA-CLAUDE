.class public final LB/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/C;


# virtual methods
.method public final b(Ljava/lang/Class;LC/b;)LB/B;
    .locals 0

    const-string p1, "extras"

    invoke-static {p2, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LB/y;

    invoke-direct {p1}, LB/y;-><init>()V

    return-object p1
.end method
