.class public abstract Lb0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/z;


# instance fields
.field public final a:Lb0/z;


# direct methods
.method public constructor <init>(Lb0/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/u;->a:Lb0/z;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lb0/u;->a:Lb0/z;

    invoke-interface {v0}, Lb0/z;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lb0/u;->a:Lb0/z;

    invoke-interface {v0}, Lb0/z;->c()Z

    move-result v0

    return v0
.end method

.method public e(J)Lb0/y;
    .locals 1

    iget-object v0, p0, Lb0/u;->a:Lb0/z;

    invoke-interface {v0, p1, p2}, Lb0/z;->e(J)Lb0/y;

    move-result-object p1

    return-object p1
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lb0/u;->a:Lb0/z;

    invoke-interface {v0}, Lb0/z;->g()J

    move-result-wide v0

    return-wide v0
.end method
