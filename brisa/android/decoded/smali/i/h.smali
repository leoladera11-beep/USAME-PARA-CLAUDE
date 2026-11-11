.class public final Li/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Li/h;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Li/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/h;->c:Li/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Li/i;->j:Lcom/brisa/local/v;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/brisa/local/v;->s(Li/h;Ljava/lang/Thread;)V

    return-void
.end method
