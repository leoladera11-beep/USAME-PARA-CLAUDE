.class public final LO0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:Z

.field public final synthetic f:Landroidx/media3/ui/AspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/b;->f:Landroidx/media3/ui/AspectRatioFrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LO0/b;->e:Z

    sget v0, Landroidx/media3/ui/AspectRatioFrameLayout;->d:I

    iget-object v0, p0, LO0/b;->f:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
