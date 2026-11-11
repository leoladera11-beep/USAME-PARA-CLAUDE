.class public abstract LZ/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final a:Landroid/view/Choreographer;

.field public final b:Landroid/hardware/display/DisplayManager;

.field public volatile c:J

.field public volatile d:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ/A;->a:Landroid/view/Choreographer;

    iput-object p2, p0, LZ/A;->b:Landroid/hardware/display/DisplayManager;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, LZ/A;->c:J

    iput-wide p1, p0, LZ/A;->d:J

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
