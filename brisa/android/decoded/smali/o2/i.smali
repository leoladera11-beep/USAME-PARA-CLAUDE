.class public final Lo2/i;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo2/i;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    return v0
.end method
