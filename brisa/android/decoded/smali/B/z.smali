.class public final LB/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:LB/i;

.field public final f:LB/d;

.field public g:Z


# direct methods
.method public constructor <init>(LB/i;LB/d;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB/z;->e:LB/i;

    iput-object p2, p0, LB/z;->f:LB/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, LB/z;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LB/z;->e:LB/i;

    iget-object v1, p0, LB/z;->f:LB/d;

    invoke-virtual {v0, v1}, LB/i;->d(LB/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LB/z;->g:Z

    :cond_0
    return-void
.end method
