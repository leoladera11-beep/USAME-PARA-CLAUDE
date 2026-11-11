.class public final Lc1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lc1/o;


# direct methods
.method public constructor <init>(Lc1/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/n;->f:Lc1/o;

    iput p2, p0, Lc1/n;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc1/n;->f:Lc1/o;

    iget v1, p0, Lc1/n;->e:I

    invoke-virtual {v0, v1}, Lc1/o;->f(I)V

    return-void
.end method
