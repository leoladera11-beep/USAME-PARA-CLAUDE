.class final Lcom/brisa/local/AndroidDownloads$Http;
.super Ljava/lang/Object;
.source "AndroidDownloads.java"

# interfaces
.implements Lcom/brisa/local/RangeTransfer$Transport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/AndroidDownloads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Http"
.end annotation


# instance fields
.field private final calls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La2/h;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelled:Ljava/util/function/BooleanSupplier;

.field private volatile closed:Z


# direct methods
.method constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http;->calls:Ljava/util/Set;

    .line 107
    iput-object p1, p0, Lcom/brisa/local/AndroidDownloads$Http;->cancelled:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method static synthetic access$100(Lcom/brisa/local/AndroidDownloads$Http;)Ljava/util/Set;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/brisa/local/AndroidDownloads$Http;->calls:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/AndroidDownloads$Http;->closed:Z

    .line 149
    iget-object v0, p0, Lcom/brisa/local/AndroidDownloads$Http;->calls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/h;

    invoke-virtual {v1}, La2/h;->c()V

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/brisa/local/RangeTransfer$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, LC2/b;

    invoke-direct {v0}, LC2/b;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, LC2/b;->s(Ljava/lang/String;)V

    .line 112
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {v0, v1, v2}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p2, :cond_0

    const-string v1, "Range"

    invoke-virtual {v0, v1, p2}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "If-Range"

    invoke-virtual {v0, p2, p3}, LC2/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    new-instance p2, La2/h;

    sget-object p3, Lcom/brisa/local/W;->a:LW1/q;

    invoke-virtual {v0}, LC2/b;->b()LM0/r0;

    move-result-object v0

    invoke-direct {p2, p3, v0}, La2/h;-><init>(LW1/q;LM0/r0;)V

    .line 117
    iget-object p3, p0, Lcom/brisa/local/AndroidDownloads$Http;->calls:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :try_start_0
    iget-boolean p3, p0, Lcom/brisa/local/AndroidDownloads$Http;->closed:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/brisa/local/AndroidDownloads$Http;->cancelled:Ljava/util/function/BooleanSupplier;

    invoke-interface {p3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p3

    if-nez p3, :cond_4

    .line 120
    invoke-virtual {p2}, La2/h;->d()LW1/v;

    move-result-object p3

    .line 121
    invoke-static {p1}, Lcom/brisa/local/AndroidDownloads;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v0, p3, LW1/v;->e:LM0/r0;

    iget-object v0, v0, LM0/r0;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brisa/local/AndroidDownloads;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v1, "youtube:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p3}, LW1/v;->close()V

    .line 125
    new-instance p1, Ljava/io/IOException;

    const-string p3, "La redirecci\u00f3n cambi\u00f3 la pista de origen."

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_3
    :goto_0
    new-instance p1, Lcom/brisa/local/AndroidDownloads$Http$1;

    invoke-direct {p1, p0, p3, v0, p2}, Lcom/brisa/local/AndroidDownloads$Http$1;-><init>(Lcom/brisa/local/AndroidDownloads$Http;LW1/v;Ljava/lang/String;La2/h;)V

    return-object p1

    .line 119
    :cond_4
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p3, "Descarga cancelada."

    invoke-direct {p1, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 142
    :goto_1
    iget-object p3, p0, Lcom/brisa/local/AndroidDownloads$Http;->calls:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    throw p1
.end method
