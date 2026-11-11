.class Lcom/brisa/local/Idle$1;
.super Ljava/lang/Object;
.source "Idle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brisa/local/Idle;->paused(Landroid/app/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$service:Landroid/app/Service;


# direct methods
.method constructor <init>(Landroid/app/Service;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/brisa/local/Idle$1;->val$service:Landroid/app/Service;

    iput-object p2, p0, Lcom/brisa/local/Idle$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/Idle$1;->val$service:Landroid/app/Service;

    const-string v1, "f"

    invoke-static {v0, v1}, Lcom/brisa/local/Idle;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/brisa/local/Idle$1;->val$service:Landroid/app/Service;

    const-string v2, "c"

    invoke-static {v1, v2}, Lcom/brisa/local/Idle;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 57
    :goto_0
    invoke-static {}, Lcom/brisa/local/Idle;->access$100()Z

    move-result v3

    .line 58
    invoke-static {v0, v1, v3}, Lcom/brisa/local/Idle;->shouldRelease(ZZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/brisa/local/Idle;->access$202(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 60
    iget-object v0, p0, Lcom/brisa/local/Idle$1;->val$service:Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "s"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/brisa/local/Idle$1;->val$service:Landroid/app/Service;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/brisa/local/Idle$1;->val$handler:Landroid/os/Handler;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    nop

    .line 65
    return-void
.end method
