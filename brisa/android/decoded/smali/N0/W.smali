.class public final LN0/W;
.super Landroid/media/VolumeProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:LM0/o1;


# direct methods
.method public constructor <init>(LM0/o1;IIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, LN0/W;->a:LM0/o1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/media/VolumeProvider;-><init>(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onAdjustVolume(I)V
    .locals 4

    iget-object v0, p0, LN0/W;->a:LM0/o1;

    iget-object v1, v0, LM0/o1;->f:Landroid/os/Handler;

    iget-object v0, v0, LM0/o1;->g:LM0/d2;

    new-instance v2, LM0/n1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, LM0/n1;-><init>(LM0/d2;II)V

    invoke-static {v1, v2}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSetVolumeTo(I)V
    .locals 4

    iget-object v0, p0, LN0/W;->a:LM0/o1;

    iget-object v1, v0, LM0/o1;->f:Landroid/os/Handler;

    iget-object v0, v0, LM0/o1;->g:LM0/d2;

    new-instance v2, LM0/n1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LM0/n1;-><init>(LM0/d2;II)V

    invoke-static {v1, v2}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
