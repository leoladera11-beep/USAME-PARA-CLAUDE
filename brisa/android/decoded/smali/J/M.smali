.class public final LJ/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ/M;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ/M;->a:LJ/M;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;
    .locals 2

    new-instance v0, LJ/O;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, LJ/O;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
