.class public Lcom/brisa/local/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static j:Ljava/lang/ref/WeakReference;


# instance fields
.field public a:Landroid/webkit/ValueCallback;

.field public volatile b:Lcom/brisa/local/e;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/webkit/WebView;

.field public f:Lcom/brisa/local/h;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/MainActivity;->g:Z

    iput-boolean v0, p0, Lcom/brisa/local/MainActivity;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/brisa/local/MainActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/brisa/local/MainActivity;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/brisa/local/MainActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_2

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Mant\u00e9n pulsada una canci\u00f3n y marca las dem\u00e1s, o usa Seleccionar todo en el men\u00fa del selector."

    invoke-virtual {p0, v1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_3

    const/16 p1, 0xd

    goto :goto_2

    :cond_3
    const/16 p1, 0xa

    :goto_2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "No se encuentra un selector compatible. Prueba la otra opci\u00f3n para a\u00f1adir m\u00fasica."

    invoke-virtual {p0, p1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.dispatchEvent(new CustomEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",{detail:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}));"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brisa/local/MainActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, LZ/d;

    const/4 v1, 0x7

    invoke-direct {v0, p1, p0, v1}, LZ/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-static {}, LG/l;->r()I

    move-result v0

    invoke-static {}, LG/l;->v()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p1, v0}, LG/l;->c(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance p0, Landroid/view/WindowInsets$Builder;

    invoke-direct {p0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p0, v0}, LG/l;->s(Landroid/view/WindowInsets$Builder;I)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    invoke-static {p0, v0}, LG/l;->f(Landroid/view/WindowInsets$Builder;I)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lorg/json/JSONObject;)V
    .locals 4

    sget-object v0, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brisa/local/MainActivity;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/brisa/local/MainActivity;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/brisa/local/z;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u2028"

    const-string v3, "\\u2028"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\u2029"

    const-string v3, "\\u2029"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/brisa/local/z;-><init>(Lcom/brisa/local/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/16 v1, 0x1bb

    if-ne v0, v1, :cond_3

    :cond_1
    const-string v0, "appassets.androidplatform.net"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/brisa/local/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/brisa/local/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/brisa/local/B;

    invoke-direct {v1, p0}, Lcom/brisa/local/B;-><init>(Lcom/brisa/local/MainActivity;)V

    const-string v2, "(()=>{const d=document.querySelector(\'dialog[open]\');if(d){d.close();return true;}if(document.body.classList.contains(\'player-expanded\')){window.BrisaClosePlayer&&window.BrisaClosePlayer();return true;}const p=document.getElementById(\'rightPanel\');if(p&&p.classList.contains(\'open\')){if(window.BrisaClosePanel)window.BrisaClosePanel();else p.classList.remove(\'open\');return true;}if(window.BrisaCloseVideos&&window.BrisaCloseVideos())return true;return false;})()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    iget-boolean v0, v0, Lcom/brisa/local/e;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Espera a que termine la importaci\u00f3n o pulsa Cancelar."

    invoke-virtual {p0, v0}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/brisa/local/z;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/brisa/local/z;-><init>(Lcom/brisa/local/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "No se encontr\u00f3 un navegador compatible."

    invoke-virtual {p0, p1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x53

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance p1, Lm1/b;

    new-instance p2, LX0/b;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, p0, p2}, Lm1/b;-><init>(Landroid/app/Activity;LX0/b;)V

    invoke-virtual {p1, p3}, Lm1/b;->d(Landroid/content/Intent;)LX0/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/brisa/local/u;->a(Landroid/content/Context;LX0/a;)V

    invoke-static {p0, v1}, Lcom/brisa/local/u;->j(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Conexi\u00f3n con Drive cancelada."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0, p1}, Lcom/brisa/local/u;->j(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void

    :cond_1
    const/16 v0, 0x51

    const/4 v3, 0x0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->f:Lcom/brisa/local/h;

    if-eqz p1, :cond_16

    iget-object v0, p1, Lcom/brisa/local/h;->a:Lcom/brisa/local/MainActivity;

    iget-object v4, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const-string p2, "brisa-downloads"

    invoke-virtual {v0, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "folder"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p1, Lcom/brisa/local/h;->c:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p3, v1}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/brisa/local/h;->d:Ljava/lang/String;

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/brisa/local/h;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "No se obtuvo acceso a la carpeta. Elige otra ubicaci\u00f3n."

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    invoke-static {p3, v1, p2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/brisa/local/h;->d:Ljava/lang/String;

    return-void

    :cond_5
    :goto_1
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "No se eligi\u00f3 una carpeta. Puedes volver a intentarlo."

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    invoke-static {p3, v1, p2}, Lcom/brisa/local/h;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, p1, Lcom/brisa/local/h;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/brisa/local/h;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/brisa/local/h;->d:Ljava/lang/String;

    return-void

    :cond_6
    const/16 v0, 0xe

    const/4 v4, 0x1

    if-ne p1, v0, :cond_c

    if-ne p2, v2, :cond_16

    if-nez p3, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-boolean p1, p0, Lcom/brisa/local/MainActivity;->c:Z

    if-eqz p1, :cond_8

    goto/16 :goto_6

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    if-eqz p2, :cond_9

    :goto_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/16 v0, 0xc8

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge v3, p2, :cond_a

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_6

    :cond_b
    iput-boolean v4, p0, Lcom/brisa/local/MainActivity;->c:Z

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lz1/v;

    const/16 v0, 0x8

    invoke-direct {p3, p0, p1, v0}, Lz1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p1, "brisa-video-import"

    invoke-direct {p2, p3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_c
    const/16 v0, 0xb

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_16

    if-ne p2, v2, :cond_d

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    goto :goto_3

    :cond_d
    move-object p2, v1

    :goto_3
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    return-void

    :cond_e
    const/16 v0, 0xc

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/brisa/local/MainActivity;->d:Ljava/lang/String;

    if-ne p2, v2, :cond_16

    if-eqz p3, :cond_16

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_16

    if-nez p1, :cond_f

    goto/16 :goto_6

    :cond_f
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/brisa/local/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, p1, v1}, Lcom/brisa/local/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_10
    const/16 v0, 0xa

    const/16 v5, 0xd

    if-eq p1, v0, :cond_11

    if-ne p1, v5, :cond_16

    :cond_11
    if-ne p2, v2, :cond_16

    if-eqz p3, :cond_16

    invoke-virtual {p0}, Lcom/brisa/local/MainActivity;->e()Z

    move-result p2

    if-nez p2, :cond_16

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-ne p1, v5, :cond_13

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    const-string p1, "Android no permiti\u00f3 conservar acceso a esa carpeta. Elige otra carpeta local."

    invoke-virtual {p0, p1}, Lcom/brisa/local/MainActivity;->g(Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_14

    :goto_4
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    if-ge v3, p1, :cond_15

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_5
    const-string p1, ""

    iput-object p1, p0, Lcom/brisa/local/MainActivity;->i:Ljava/lang/String;

    new-instance p1, Lcom/brisa/local/e;

    new-instance p3, Lcom/brisa/local/A;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lcom/brisa/local/A;-><init>(Lcom/brisa/local/MainActivity;I)V

    invoke-direct {p1, p0, p3}, Lcom/brisa/local/e;-><init>(Lcom/brisa/local/MainActivity;Lcom/brisa/local/A;)V

    iput-object p1, p0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcom/brisa/local/c;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/brisa/local/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Comparable;I)V

    const-string p2, "Brisa-import"

    invoke-direct {p3, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p3, p1, Lcom/brisa/local/e;->e:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_16
    :goto_6
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/brisa/local/MainActivity;->d()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V



    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x17

    const/16 v1, 0x14

    const/16 v2, 0x10

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, LG/l;->n(Landroid/view/Window;)V

    new-instance v1, Lcom/brisa/local/C;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :goto_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    iget-object v1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/brisa/local/K;

    invoke-direct {v1, p0}, Lcom/brisa/local/K;-><init>(Lcom/brisa/local/MainActivity;)V

    const-string v2, "BrisaNative"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/brisa/local/h;

    invoke-direct {p1, p0}, Lcom/brisa/local/h;-><init>(Lcom/brisa/local/MainActivity;)V

    iput-object p1, p0, Lcom/brisa/local/MainActivity;->f:Lcom/brisa/local/h;

    iget-object v1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    const-string v2, "BrisaDownloadNative"

    invoke-virtual {v1, p1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/brisa/local/r;

    invoke-direct {v1, p0}, Lcom/brisa/local/r;-><init>(Lcom/brisa/local/MainActivity;)V

    const-string v2, "BrisaDriveNative"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/brisa/local/X;

    invoke-direct {v1, p0}, Lcom/brisa/local/X;-><init>(Lcom/brisa/local/MainActivity;)V

    const-string v2, "BrisaSoundNative"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/brisa/local/G;

    invoke-direct {v1, p0}, Lcom/brisa/local/G;-><init>(Lcom/brisa/local/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/brisa/local/E;

    invoke-direct {v1, p0}, Lcom/brisa/local/E;-><init>(Lcom/brisa/local/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    const-string v1, "https://appassets.androidplatform.net/assets/index.html"

    invoke-static {p0}, Lcom/brisa/local/Presentation;->install(Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/16 p1, 0x21

    if-lt v0, p1, :cond_1

    invoke-static {p0}, LP/a;->e(Lcom/brisa/local/MainActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/brisa/local/D;

    invoke-direct {v0, p0}, Lcom/brisa/local/D;-><init>(Lcom/brisa/local/MainActivity;)V

    invoke-static {p1, v0}, LP/a;->k(Landroid/window/OnBackInvokedDispatcher;Lcom/brisa/local/D;)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-static {p0}, Lcom/brisa/local/Presentation;->dispose(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->b:Lcom/brisa/local/e;

    invoke-virtual {v0}, Lcom/brisa/local/e;->b()V

    :cond_0
    sget-object v0, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/brisa/local/MainActivity;->a:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    const-string v2, "BrisaNative"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    const-string v2, "BrisaDownloadNative"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    const-string v2, "BrisaDriveNative"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    const-string v2, "BrisaSoundNative"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    new-instance v0, Lcom/brisa/local/A;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brisa/local/A;-><init>(Lcom/brisa/local/MainActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/brisa/local/MainActivity;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/brisa/local/MainActivity;->g:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "window.BrisaVideosChanged&&window.BrisaVideosChanged()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brisa/local/MainActivity;->g:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/brisa/local/MainActivity;->j:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    iget-object v1, v0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    iget-object v2, v0, Lcom/brisa/local/PlaybackService;->x:Lcom/brisa/local/Q;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v3, v0, Lcom/brisa/local/PlaybackService;->f:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Lcom/brisa/local/PlaybackService;->e:Z

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-object v0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    invoke-virtual {v0}, Lcom/brisa/local/PlaybackService;->o()V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brisa/local/MainActivity;->g:Z

    sget-object v0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/brisa/local/PlaybackService;->z:Lcom/brisa/local/PlaybackService;

    iget-object v1, v0, Lcom/brisa/local/PlaybackService;->u:Landroid/os/Handler;

    iget-object v0, v0, Lcom/brisa/local/PlaybackService;->x:Lcom/brisa/local/Q;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
