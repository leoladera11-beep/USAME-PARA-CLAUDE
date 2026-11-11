.class public final synthetic Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brisa/local/StreamRelay;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/StreamRelay;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/StreamRelay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/brisa/local/DriveStream$$ExternalSyntheticLambda1;->f$0:Lcom/brisa/local/StreamRelay;

    invoke-static {v0}, Lcom/brisa/local/DriveStream;->lambda$remote$0(Lcom/brisa/local/StreamRelay;)V

    return-void
.end method
