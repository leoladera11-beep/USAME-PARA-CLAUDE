.class public final LO0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG/x0;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LG/y0;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LG/y0;->a:Lu1/P;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/x0;

    iput-object p1, p0, LO0/r;->a:LG/x0;

    iput p3, p0, LO0/r;->b:I

    iput-object p4, p0, LO0/r;->c:Ljava/lang/String;

    return-void
.end method
