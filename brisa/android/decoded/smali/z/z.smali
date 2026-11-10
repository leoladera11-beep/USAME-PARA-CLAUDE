.class public final Lz/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/y;


# instance fields
.field public final a:I

.field public final synthetic b:Lz/A;


# direct methods
.method public constructor <init>(Lz/A;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/z;->b:Lz/A;

    iput p2, p0, Lz/z;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    iget-object v0, p0, Lz/z;->b:Lz/A;

    iget-object v1, v0, Lz/A;->w:Lz/m;

    iget v2, p0, Lz/z;->a:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lz/m;->k()Lz/A;

    move-result-object v1

    invoke-virtual {v1}, Lz/A;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Lz/A;->O(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
