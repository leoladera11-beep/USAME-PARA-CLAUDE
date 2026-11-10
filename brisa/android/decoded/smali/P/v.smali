.class public final LP/v;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:LG/x;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;LG/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p2, p0, LP/v;->e:LG/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LG/x;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, LP/v;->e:LG/x;

    return-void
.end method
