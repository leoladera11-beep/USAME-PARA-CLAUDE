.class public interface abstract Lcom/brisa/local/VideoGestureEngine$Scheduler;
.super Ljava/lang/Object;
.source "VideoGestureEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/VideoGestureEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Scheduler"
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/Runnable;)V
.end method

.method public abstract later(Ljava/lang/Runnable;J)V
.end method
