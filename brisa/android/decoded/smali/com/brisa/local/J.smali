.class public final Lcom/brisa/local/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final a:Lcom/brisa/local/K;


# direct methods
.method public constructor <init>(Lcom/brisa/local/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/J;->a:Lcom/brisa/local/K;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/brisa/local/J;->a:Lcom/brisa/local/K;

    iget-object p1, p1, Lcom/brisa/local/K;->a:Lcom/brisa/local/MainActivity;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/brisa/local/MainActivity;->a(Lcom/brisa/local/MainActivity;Z)V

    return-void
.end method
