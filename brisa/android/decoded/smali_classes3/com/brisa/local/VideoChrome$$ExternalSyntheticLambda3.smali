.class public final synthetic Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/brisa/local/VideoChrome$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/brisa/local/VideoChrome;->lambda$menu$3(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
