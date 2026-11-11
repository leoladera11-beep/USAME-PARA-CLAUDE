.class public final Lcom/brisa/local/Presentation$Bridge;
.super Ljava/lang/Object;
.source "Presentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brisa/local/Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bridge"
.end annotation


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/Presentation$Bridge;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public profile()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/brisa/local/Presentation$Bridge;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/brisa/local/Presentation;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
