.class public final LB/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final Companion:LB/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LB/t$a;->Companion:LB/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerIn(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, LB/t$a;->Companion:LB/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "activity"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LB/t$a;

    invoke-direct {v0}, LB/t$a;-><init>()V

    invoke-static {p0, v0}, LB/r;->k(Landroid/app/Activity;LB/t$a;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LB/t;->a:I

    sget-object p2, LB/d;->ON_CREATE:LB/d;

    invoke-static {p1, p2}, LB/q;->a(Landroid/app/Activity;LB/d;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LB/t;->a:I

    sget-object v0, LB/d;->ON_RESUME:LB/d;

    invoke-static {p1, v0}, LB/q;->a(Landroid/app/Activity;LB/d;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LB/t;->a:I

    sget-object v0, LB/d;->ON_START:LB/d;

    invoke-static {p1, v0}, LB/q;->a(Landroid/app/Activity;LB/d;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LB/t;->a:I

    sget-object v0, LB/d;->ON_DESTROY:LB/d;

    invoke-static {p1, v0}, LB/q;->a(Landroid/app/Activity;LB/d;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LB/t;->a:I

    sget-object v0, LB/d;->ON_PAUSE:LB/d;

    invoke-static {p1, v0}, LB/q;->a(Landroid/app/Activity;LB/d;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LB/t;->a:I

    sget-object v0, LB/d;->ON_STOP:LB/d;

    invoke-static {p1, v0}, LB/q;->a(Landroid/app/Activity;LB/d;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
