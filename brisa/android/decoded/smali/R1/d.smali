.class public final LR1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic e:LN0/O;


# direct methods
.method public constructor <init>(LN0/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR1/d;->e:LN0/O;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, LS1/b;

    iget-object v1, p0, LR1/d;->e:LN0/O;

    invoke-direct {v0, v1}, LS1/b;-><init>(LN0/O;)V

    return-object v0
.end method
