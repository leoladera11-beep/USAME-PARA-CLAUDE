.class public final Lz/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lz/j;


# direct methods
.method public constructor <init>(Lz/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/g;->a:Lz/j;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lz/g;->a:Lz/j;

    iget-object v0, p1, Lz/j;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lz/j;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
