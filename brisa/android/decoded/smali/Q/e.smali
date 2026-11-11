.class public final LQ/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/n;


# instance fields
.field public final e:LQ/k;

.field public f:LQ/h;

.field public g:Z

.field public final synthetic h:LQ/f;


# direct methods
.method public constructor <init>(LQ/f;LQ/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/e;->h:LQ/f;

    iput-object p2, p0, LQ/e;->e:LQ/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LQ/e;->h:LQ/f;

    iget-object v0, v0, LQ/f;->u:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LH/a;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, LJ/W;->K(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
