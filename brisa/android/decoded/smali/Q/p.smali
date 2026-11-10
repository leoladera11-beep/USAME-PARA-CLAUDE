.class public final LQ/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/h;


# instance fields
.field public final a:LQ/g;


# direct methods
.method public constructor <init>(LQ/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/p;->a:LQ/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(LQ/k;)V
    .locals 0

    return-void
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    sget-object v0, LG/m;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(LQ/k;)V
    .locals 0

    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final g()LQ/g;
    .locals 1

    iget-object v0, p0, LQ/p;->a:LQ/g;

    return-object v0
.end method

.method public final h()LM/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
