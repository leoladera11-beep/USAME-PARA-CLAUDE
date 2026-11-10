.class public final LP/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LP/l;

    invoke-direct {v0}, LP/l;-><init>()V

    invoke-virtual {v0}, LP/l;->a()LP/m;

    return-void
.end method

.method public constructor <init>(LP/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, LP/l;->b:Z

    iput-boolean v0, p0, LP/m;->a:Z

    iget-boolean v0, p1, LP/l;->c:Z

    iput-boolean v0, p0, LP/m;->b:Z

    iget-boolean v0, p1, LP/l;->d:Z

    iput-boolean v0, p0, LP/m;->c:Z

    iget p1, p1, LP/l;->a:I

    iput p1, p0, LP/m;->d:I

    return-void
.end method
