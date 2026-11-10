.class public final Lb1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lb1/g;


# instance fields
.field public final a:Lcom/brisa/local/j;

.field public final b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/brisa/local/j;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/brisa/local/j;-><init>(I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lb1/g;

    invoke-direct {v2, v0, v1}, Lb1/g;-><init>(Lcom/brisa/local/j;Landroid/os/Looper;)V

    sput-object v2, Lb1/g;->c:Lb1/g;

    return-void
.end method

.method public constructor <init>(Lcom/brisa/local/j;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/g;->a:Lcom/brisa/local/j;

    iput-object p2, p0, Lb1/g;->b:Landroid/os/Looper;

    return-void
.end method
