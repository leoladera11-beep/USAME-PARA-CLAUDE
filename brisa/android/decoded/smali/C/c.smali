.class public final LC/c;
.super LC/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LC/a;->b:LC/a;

    invoke-direct {p0, v0}, LC/c;-><init>(LC/b;)V

    return-void
.end method

.method public constructor <init>(LC/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, LC/b;-><init>(I)V

    .line 3
    iget-object v0, p0, LC/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    iget-object p1, p1, LC/b;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
