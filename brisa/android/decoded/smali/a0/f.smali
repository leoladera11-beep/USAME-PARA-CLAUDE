.class public final La0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La0/e;

.field public final b:La0/e;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(La0/e;La0/e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/f;->a:La0/e;

    iput-object p2, p0, La0/f;->b:La0/e;

    iput p3, p0, La0/f;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, La0/f;->d:Z

    return-void
.end method
