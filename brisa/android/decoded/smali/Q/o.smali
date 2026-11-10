.class public interface abstract LQ/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQ/o;->a:LQ/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(LQ/k;LG/x;)LQ/n;
    .locals 0

    sget-object p1, LQ/n;->a:LP/B;

    return-object p1
.end method

.method public abstract c(LQ/k;LG/x;)LQ/h;
.end method

.method public abstract d(Landroid/os/Looper;LO/j;)V
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public abstract f(LG/x;)I
.end method
