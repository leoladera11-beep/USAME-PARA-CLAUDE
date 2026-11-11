.class public final synthetic Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/Service;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Service;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda0;->f$0:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/brisa/local/VideoSystemControls$$ExternalSyntheticLambda0;->f$0:Landroid/app/Service;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/brisa/local/VideoSystemControls;->lambda$release$0(Landroid/app/Service;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
