.class public final synthetic Lcom/brisa/local/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/brisa/local/VideoActivity;

.field public final synthetic b:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lcom/brisa/local/VideoActivity;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/b0;->a:Lcom/brisa/local/VideoActivity;

    iput-object p2, p0, Lcom/brisa/local/b0;->b:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget p1, Lcom/brisa/local/VideoActivity;->l:I

    iget-object p1, p0, Lcom/brisa/local/b0;->a:Lcom/brisa/local/VideoActivity;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/brisa/local/b0;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/brisa/local/VideoActivity;->c(Lorg/json/JSONObject;)V

    return-void
.end method
