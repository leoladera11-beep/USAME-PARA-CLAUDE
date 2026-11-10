.class public final LN/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/O;


# instance fields
.field public final a:LU/v;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(LU/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU/v;

    invoke-direct {v0, p1, p2}, LU/v;-><init>(LU/a;Z)V

    iput-object v0, p0, LN/V;->a:LU/v;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LN/V;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/V;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LN/V;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()LG/q0;
    .locals 1

    iget-object v0, p0, LN/V;->a:LU/v;

    iget-object v0, v0, LU/v;->o:LU/t;

    return-object v0
.end method
