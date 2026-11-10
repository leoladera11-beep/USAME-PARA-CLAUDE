.class public final Lcom/brisa/local/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/brisa/local/e;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/e;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/brisa/local/b;->b:Lcom/brisa/local/e;

    iput-object p2, p0, Lcom/brisa/local/b;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/brisa/local/d;
    .locals 7

    iget-object v0, p0, Lcom/brisa/local/b;->b:Lcom/brisa/local/e;

    iget-object v0, v0, Lcom/brisa/local/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/brisa/local/b;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "_display_name"

    const-string v0, "mime_type"

    const-string v3, "document_id"

    filled-new-array {v3, p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/brisa/local/d;

    invoke-direct {v0, p1}, Lcom/brisa/local/d;-><init>(Landroid/database/Cursor;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No se puede leer la carpeta"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
