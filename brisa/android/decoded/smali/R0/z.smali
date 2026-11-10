.class public abstract LR0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR0/A;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR0/A;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, LR0/z;->a:LR0/A;

    const/4 v0, 0x1

    iput v0, p0, LR0/z;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(LR0/T;I)V
.end method

.method public abstract c(Landroid/view/ViewGroup;)LR0/T;
.end method
