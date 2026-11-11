.class public final Lz1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lz1/o;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lz1/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/o;->c:Lz1/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lz1/p;->j:Lcom/brisa/local/u;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/brisa/local/u;->t(Lz1/o;Ljava/lang/Thread;)V

    return-void
.end method
