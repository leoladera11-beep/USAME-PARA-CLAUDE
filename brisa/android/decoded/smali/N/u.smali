.class public final LN/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/O;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LU/v;

.field public c:LG/q0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LU/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/u;->a:Ljava/lang/Object;

    iput-object p2, p0, LN/u;->b:LU/v;

    iget-object p1, p2, LU/v;->o:LU/t;

    iput-object p1, p0, LN/u;->c:LG/q0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LN/u;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()LG/q0;
    .locals 1

    iget-object v0, p0, LN/u;->c:LG/q0;

    return-object v0
.end method
