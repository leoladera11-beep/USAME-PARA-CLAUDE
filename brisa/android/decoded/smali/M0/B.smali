.class public final LM0/B;
.super Lz1/p;
.source "SourceFile"


# instance fields
.field public final l:Landroid/os/Handler;

.field public m:LM0/z;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LM0/B;->l:Landroid/os/Handler;

    return-void
.end method
