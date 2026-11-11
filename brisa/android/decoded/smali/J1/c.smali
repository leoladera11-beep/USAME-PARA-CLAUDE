.class public abstract LJ1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ1/b;

.field public static b:LJ1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ1/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LJ1/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, LJ1/c;->a:LJ1/b;

    return-void
.end method
