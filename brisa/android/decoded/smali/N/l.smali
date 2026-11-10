.class public final synthetic LN/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/t;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/brisa/local/VideoPlaybackService;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoPlaybackService;I)V
    .locals 0

    iput p2, p0, LN/l;->e:I

    iput-object p1, p0, LN/l;->f:Lcom/brisa/local/VideoPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LN/l;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN/l;->f:Lcom/brisa/local/VideoPlaybackService;

    sget-object v1, LX/g;->p:Lu1/C0;

    const-class v1, LX/g;

    monitor-enter v1

    :try_start_0
    sget-object v2, LX/g;->v:LX/g;

    if-nez v2, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/32 v5, 0xf4240

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LX/g;

    invoke-direct {v2, v0, v3}, LX/g;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    sput-object v2, LX/g;->v:LX/g;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, LX/g;->v:LX/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, p0, LN/l;->f:Lcom/brisa/local/VideoPlaybackService;

    new-instance v1, LW/o;

    invoke-direct {v1, v0}, LW/o;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, LN/l;->f:Lcom/brisa/local/VideoPlaybackService;

    new-instance v1, LU/n;

    new-instance v2, Lb0/k;

    invoke-direct {v2}, Lb0/k;-><init>()V

    invoke-direct {v1, v0, v2}, LU/n;-><init>(Lcom/brisa/local/VideoPlaybackService;Lb0/k;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, LN/l;->f:Lcom/brisa/local/VideoPlaybackService;

    new-instance v1, LN/i;

    invoke-direct {v1, v0}, LN/i;-><init>(Lcom/brisa/local/VideoPlaybackService;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
