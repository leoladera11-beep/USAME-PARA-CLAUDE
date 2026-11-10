.class public final synthetic LD2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:LD2/k;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(LD2/k;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/h;->a:LD2/k;

    iput-object p2, p0, LD2/h;->b:Ljava/lang/String;

    iput-object p3, p0, LD2/h;->c:Ljava/lang/String;

    iput p4, p0, LD2/h;->d:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, LJ2/b;

    iget-object v0, p1, LJ2/b;->e:Ljava/io/Serializable;

    check-cast v0, LC1/d;

    iget-object p1, p1, LJ2/b;->f:Ljava/io/Serializable;

    check-cast p1, LJ2/b;

    iget-object v1, p1, LJ2/b;->e:Ljava/io/Serializable;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object p1, p1, LJ2/b;->f:Ljava/io/Serializable;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p0, LD2/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, LC1/d;->a(Ljava/lang/String;)LC1/c;

    move-result-object p1

    invoke-virtual {p1}, LC1/c;->d()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, LD2/j;

    iget-object v3, p0, LD2/h;->a:LD2/k;

    iget v4, p0, LD2/h;->d:I

    iget-object v5, p0, LD2/h;->b:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, LD2/j;-><init>(LD2/k;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LC1/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LC1/a;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
