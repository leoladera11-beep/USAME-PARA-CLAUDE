.class public final Lu1/N;
.super Lu1/a;
.source "SourceFile"


# instance fields
.field public final g:Lu1/P;


# direct methods
.method public constructor <init>(Lu1/P;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lu1/a;-><init>(II)V

    iput-object p1, p0, Lu1/N;->g:Lu1/P;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu1/N;->g:Lu1/P;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
