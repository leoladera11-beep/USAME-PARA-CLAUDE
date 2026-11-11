.class public final LO1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/a;
.implements LO1/a;


# static fields
.field public static final b:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-class v22, LN1/m;

    const-class v23, LN1/n;

    const-class v1, LN1/a;

    const-class v2, LF1/a;

    const-class v3, LN1/o;

    const-class v4, LN1/p;

    const-class v5, LN1/q;

    const-class v6, LN1/r;

    const-class v7, LN1/s;

    const-class v8, LN1/t;

    const-class v9, LN1/u;

    const-class v10, LN1/v;

    const-class v11, LN1/b;

    const-class v12, LN1/c;

    const-class v13, LN1/d;

    const-class v14, LN1/e;

    const-class v15, LN1/f;

    const-class v16, LN1/g;

    const-class v17, LN1/h;

    const-class v18, LN1/i;

    const-class v19, LN1/j;

    const-class v20, LN1/k;

    const-class v21, LN1/l;

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "asList(...)"

    invoke-static {v0, v1}, LO1/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LF1/j;->x(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_0

    check-cast v3, Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, LE1/b;

    invoke-direct {v5, v3, v2}, LE1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, LF1/t;->k(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LO1/b;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/b;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO1/b;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj1/a;->d(LQ1/a;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, LQ1/a;

    invoke-static {p1}, Lj1/a;->d(LQ1/a;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lj1/a;->d(LQ1/a;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LO1/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
