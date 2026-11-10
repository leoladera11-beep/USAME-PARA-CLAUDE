.class public final Lz1/y;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lz1/I;


# direct methods
.method public constructor <init>(Lz1/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lz1/y;->e:Lz1/I;

    return-void
.end method

.method public static a(Lz1/y;Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz1/y;->e:Lz1/I;

    invoke-virtual {v0}, Lz1/I;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
