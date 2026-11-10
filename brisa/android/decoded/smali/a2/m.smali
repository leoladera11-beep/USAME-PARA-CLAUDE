.class public final La2/m;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final e:Ljava/io/IOException;

.field public f:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, La2/m;->e:Ljava/io/IOException;

    iput-object p1, p0, La2/m;->f:Ljava/io/IOException;

    return-void
.end method
