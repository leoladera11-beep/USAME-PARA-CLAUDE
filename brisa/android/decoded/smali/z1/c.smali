.class public final Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lz1/c;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz1/c;

    new-instance v1, Li/b;

    const-string v2, "Failure occurred while trying to finish a future."

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Li/b;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lz1/c;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lz1/c;->b:Lz1/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lz1/c;->a:Ljava/lang/Throwable;

    return-void
.end method
