.class public final Lcom/brisa/local/E;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/brisa/local/MainActivity;


# direct methods
.method public constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/brisa/local/E;->a:Lcom/brisa/local/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2

    iget-object p1, p0, Lcom/brisa/local/E;->a:Lcom/brisa/local/MainActivity;

    iget-object p3, p1, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iput-object p2, p1, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.OPENABLE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "*/*"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0xb

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p1, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    :goto_0
    return p3
.end method
