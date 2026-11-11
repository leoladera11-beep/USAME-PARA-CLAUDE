.class public final Lcom/brisa/local/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final a:Lcom/brisa/local/MainActivity;


# direct methods
.method public constructor <init>(Lcom/brisa/local/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/D;->a:Lcom/brisa/local/MainActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/brisa/local/D;->a:Lcom/brisa/local/MainActivity;

    invoke-virtual {v0}, Lcom/brisa/local/MainActivity;->d()V

    return-void
.end method
