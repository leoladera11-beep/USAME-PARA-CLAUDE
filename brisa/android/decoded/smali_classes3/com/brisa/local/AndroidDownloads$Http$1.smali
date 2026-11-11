.class Lcom/brisa/local/AndroidDownloads$Http$1;
.super Ljava/lang/Object;
.source "AndroidDownloads.java"

# interfaces
.implements Lcom/brisa/local/RangeTransfer$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brisa/local/AndroidDownloads$Http;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/brisa/local/RangeTransfer$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brisa/local/AndroidDownloads$Http;

.field final synthetic val$call:La2/h;

.field final synthetic val$resource:Ljava/lang/String;

.field final synthetic val$response:LW1/v;


# direct methods
.method constructor <init>(Lcom/brisa/local/AndroidDownloads$Http;LW1/v;Ljava/lang/String;La2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->this$0:Lcom/brisa/local/AndroidDownloads$Http;

    iput-object p2, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iput-object p3, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$resource:Ljava/lang/String;

    iput-object p4, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$call:La2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    invoke-virtual {v0}, LW1/v;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->this$0:Lcom/brisa/local/AndroidDownloads$Http;

    invoke-static {v0}, Lcom/brisa/local/AndroidDownloads$Http;->access$100(Lcom/brisa/local/AndroidDownloads$Http;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$call:La2/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->this$0:Lcom/brisa/local/AndroidDownloads$Http;

    invoke-static {v1}, Lcom/brisa/local/AndroidDownloads$Http;->access$100(Lcom/brisa/local/AndroidDownloads$Http;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$call:La2/h;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iget-object v0, v0, LW1/v;->j:LW1/k;

    invoke-virtual {v0, p1}, LW1/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public length()J
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iget-object v0, v0, LW1/v;->k:LW1/x;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iget-object v0, v0, LW1/v;->k:LW1/x;

    invoke-virtual {v0}, LW1/x;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public resource()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$resource:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iget v0, v0, LW1/v;->h:I

    return v0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iget-object v0, v0, LW1/v;->k:LW1/x;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http$1;->val$response:LW1/v;

    iget-object v0, v0, LW1/v;->k:LW1/x;

    invoke-virtual {v0}, LW1/x;->q()Lj2/i;

    move-result-object v0

    invoke-interface {v0}, Lj2/i;->p()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "La respuesta no contiene un archivo."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
